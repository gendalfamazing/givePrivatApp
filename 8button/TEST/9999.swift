//
//  9999.swift
//  8button
//
//  Created by Artur Vladymcev on 16.04.24.
//

import SwiftUI

struct _999: View {
    var medicines = ["","Допамин", "Добутамин", "Анальгин", "Димедрол"]
    var weight = ["", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
    var doses = ["тыща", "две тыщи", "три тыщи"]
        @State private var selectedMedicine = ""
        @State private var selectedWeight = ""
        @State private var selectedDose = ""
        var body: some View {
            List {
                Picker("Препарат:", selection: $selectedMedicine) {
                    ForEach(medicines, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.menu)
                if selectedMedicine.isEmpty {
                    
                } else {
                    Picker("Вес (кг):", selection: $selectedWeight) {
                        ForEach(weight, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.menu)
                }
                if selectedWeight.isEmpty {
                    
                } else if selectedWeight.hasPrefix("1"){
                    Text("Дозировка (мг): \(doses.first!)")
                        
                    }else if selectedWeight.hasPrefix("5"){
                        Text("Дозировка (мг): две тыщи")
                        } else if selectedWeight.hasPrefix("10"){
                            Text("Дозировка (мг): три тыщи")
                            }
                }
                
            }
        }


#Preview {
    _999()
}
