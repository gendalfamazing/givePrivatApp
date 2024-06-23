//
//  test3.swift
//  8button
//
//  Created by Artur Vladymcev on 31.05.24.
//
import SwiftUI
import UserNotifications

struct Equipment: Identifiable, Codable {
    var id: UUID
    var name: String
    var lastCheckedDate: Date
    var checkIntervalDays: Int
    var notificationTime: Date
}

struct Medicine: Identifiable, Codable {
    var id: UUID
    var name: String
    var expirationDate: Date
    var notificationTime: Date
}

import Foundation

class DataStore: ObservableObject {
    @Published var equipmentList: [Equipment] = [] {
            didSet {
                saveEquipment()
            }
        }
        @Published var medicineList: [Medicine] = [] {
            didSet {
                saveMedicine()
            }
        }


    func updateEquipment(_ equipment: Equipment) {
        if let index = equipmentList.firstIndex(where: { $0.id == equipment.id }) {
            equipmentList[index] = equipment
            saveEquipment()
        }
    }

    func deleteEquipment(_ equipment: Equipment) {
        equipmentList.removeAll { $0.id == equipment.id }
        saveEquipment()
    }

    func updateMedicine(_ medicine: Medicine) {
        if let index = medicineList.firstIndex(where: { $0.id == medicine.id }) {
            medicineList[index] = medicine
            saveMedicine()
        }
    }

    func deleteMedicine(_ medicine: Medicine) {
        medicineList.removeAll { $0.id == medicine.id }
        saveMedicine()
    }

    private func saveEquipment() {
        if let encoded = try? JSONEncoder().encode(equipmentList) {
            UserDefaults.standard.set(encoded, forKey: "equipmentList")
        }
    }

    private func saveMedicine() {
        if let encoded = try? JSONEncoder().encode(medicineList) {
            UserDefaults.standard.set(encoded, forKey: "medicineList")
        }
    }

    init() {
        self.equipmentList = loadEquipment()
        self.medicineList = loadMedicine()
    }

    private func loadEquipment() -> [Equipment] {
        if let savedData = UserDefaults.standard.data(forKey: "equipmentList"),
           let decodedData = try? JSONDecoder().decode([Equipment].self, from: savedData) {
            return decodedData
        }
        return []
    }

    private func loadMedicine() -> [Medicine] {
        if let savedData = UserDefaults.standard.data(forKey: "medicineList"),
           let decodedData = try? JSONDecoder().decode([Medicine].self, from: savedData) {
            return decodedData
        }
        return []
    }
}


func requestNotificationPermission() {
    UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { granted, error in
        if let error = error {
            print("Error: \(error.localizedDescription)")
        }
    }
}

func scheduleNotification(title: String, body: String, date: Date, time: Date) {
    let content = UNMutableNotificationContent()
    content.title = title
    content.body = body
    content.sound = .default
    
    var dateComponents = Calendar.current.dateComponents([.year, .month, .day], from: date)
    let timeComponents = Calendar.current.dateComponents([.hour, .minute], from: time)
    dateComponents.hour = timeComponents.hour
    dateComponents.minute = timeComponents.minute
    
    let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: false)
    let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
    
    UNUserNotificationCenter.current().add(request) { error in
        if let error = error {
            print("Error: \(error.localizedDescription)")
        } else {
            print("Notification scheduled: \(title) at \(dateComponents)")
        }
    }
}

import SwiftUI


struct ShockIndexTable: View {
    @StateObject var dataStore = DataStore()
    @State private var showAddEquipment = false
    @State private var showAddMedicine = false
    @State private var editingEquipmentId: UUID?
    @State private var editingMedicineId: UUID?
    @State private var newEquipmentName: String = ""
    @State private var newEquipmentLastCheckedDate: Date = Date()
    @State private var newEquipmentCheckIntervalDays: Int = 30
    @State private var newEquipmentNotificationTime: Date = Date()
    @State private var newMedicineName: String = ""
    @State private var newMedicineExpirationDate: Date = Date()
    @State private var newMedicineNotificationTime: Date = Date()
    @StateObject private var firstResponderController = FirstResponderController()
    
    var body: some View {
        NavigationView {
            List {
                
                Section(header: HStack {
                    Text("Medicine")
                    Spacer()
                    Button(action: { withAnimation { showAddMedicine.toggle() } }) {
                        Image(systemName: showAddMedicine ? "minus" : "plus")
                    }
                }) {
                    if showAddMedicine {
                        VStack {
                            FirstResponderTextField(text: $newMedicineName, responder: firstResponderController)
                                .onAppear {
                                    firstResponderController.isActive = true
                                }
                            DatePicker("Expiration date", selection: $newMedicineExpirationDate, displayedComponents: .date)
                            DatePicker("Notification time", selection: $newMedicineNotificationTime, displayedComponents: .hourAndMinute)
                            Button("Add Medicine") {
                                let newMedicine = Medicine(id: UUID(), name: newMedicineName, expirationDate: newMedicineExpirationDate, notificationTime: newMedicineNotificationTime)
                                dataStore.medicineList.append(newMedicine)
                                newMedicineName = ""
                                newMedicineExpirationDate = Date()
                                newMedicineNotificationTime = Date()
                                showAddMedicine = false
                                scheduleNotification(title: "Medicine Expiry", body: "\(newMedicine.name) expires soon.", date: newMedicine.expirationDate, time: newMedicine.notificationTime)
                            }
                        }
                    }
                    ForEach(dataStore.medicineList) { medicine in
                        VStack(alignment: .leading) {
                            if editingMedicineId == medicine.id {
                                FirstResponderTextField(text: Binding(
                                    get: { medicine.name },
                                    set: { dataStore.updateMedicine(Medicine(id: medicine.id, name: $0, expirationDate: medicine.expirationDate, notificationTime: medicine.notificationTime)) }
                                ), responder: firstResponderController)
                                .onAppear {
                                    firstResponderController.isActive = true
                                }
                                DatePicker("Expiration date", selection: Binding(
                                    get: { medicine.expirationDate },
                                    set: { dataStore.updateMedicine(Medicine(id: medicine.id, name: medicine.name, expirationDate: $0, notificationTime: medicine.notificationTime)) }
                                ), displayedComponents: .date)
                                DatePicker("Notification time", selection: Binding(
                                    get: { medicine.notificationTime },
                                    set: { dataStore.updateMedicine(Medicine(id: medicine.id, name: medicine.name, expirationDate: medicine.expirationDate, notificationTime: $0)) }
                                ), displayedComponents: .hourAndMinute)
                                Button("Save") {
                                    editingMedicineId = nil
                                }
                            } else {
                                Text(medicine.name)
                                Text("Expiration date: \(medicine.expirationDate, formatter: dateFormatter)")
                                Button(action: { editingMedicineId = medicine.id }) {
                                    Image(systemName: "pencil")
                                }
                            }
                        }
                    }
                    .onDelete { indices in
                        indices.forEach { index in
                            dataStore.deleteMedicine(dataStore.medicineList[index])
                        }
                    }
                }
            }
            .navigationTitle("Medical Inventory")
        }
        .onAppear {
            requestNotificationPermission()
        }
    }
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
let dateFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    return formatter
}()


#Preview {
    ShockIndexTable()
}
