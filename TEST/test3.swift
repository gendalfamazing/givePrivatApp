//
//  test3.swift
//  8button
//
//  Created by Artur Vladymcev on 27.05.24.
//



import SwiftUI

struct test3: View {
    @State private var fromDrug: String = ""
        @State private var toDrug: String = ""
        @State private var dose: String = ""
        @State private var equivalentDose: String = ""
        
        let drugs = ["", "Преднизолон", "Дексаметазон", "Гидрокортизон", "Триамцинолон", "Бетаметазон", "Метилпреднизолон"]
        
        var body: some View {
            VStack(alignment: .leading) {
                Text("Первый препарат:")
                    .font(.headline)
                    .foregroundColor(.red)
                Picker("Выберите первый препарат", selection: $fromDrug) {
                    ForEach(drugs, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(MenuPickerStyle())
                
                Text("Доза (мг):")
                    .font(.headline)
                    .foregroundColor(.red)
                TextField("Введите дозу", text: $dose)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.decimalPad)
                
                Text("Второй препарат:")
                    .font(.headline)
                    .foregroundColor(.red)
                Picker("Выберите второй препарат", selection: $toDrug) {
                    ForEach(drugs, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(MenuPickerStyle())
                
                Text("Эквивалентная доза (мг):")
                    .font(.headline)
                    .foregroundColor(.red)
                TextField("Эквивалентная доза", text: $equivalentDose)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .disabled(true)
                
                Button("Рассчитать") {
                    calculateEquivalentDose()
                }
                .padding()
                
                Button("Сброс") {
                    resetFields()
                }
                .padding()
            }
            .padding()
        }
        
        func calculateEquivalentDose() {
            // Пример расчета эквивалентной дозы, на основе выбора препаратов и дозы
            // Здесь можно добавить свою логику расчета
            guard let doseValue = Double(dose) else {
                equivalentDose = "Ошибка ввода"
                return
            }
            
            let fromFactor = getFactor(for: fromDrug)
            let toFactor = getFactor(for: toDrug)
            
            if fromFactor == 0 || toFactor == 0 {
                equivalentDose = "Ошибка выбора препаратов"
                return
            }
            
            let result = doseValue * fromFactor / toFactor
            equivalentDose = String(format: "%.2f", result)
        }
        
        func getFactor(for drug: String) -> Double {
            switch drug {
            case "Преднизолон": return 1.0
            case "Дексаметазон": return 0.15
            case "Гидрокортизон": return 4.0
            case "Триамцинолон": return 0.8
            case "Бетаметазон": return 0.1
            case "Метилпреднизолон": return 0.8
            default: return 0.0
            }
        }
        
        func resetFields() {
            fromDrug = ""
            toDrug = ""
            dose = ""
            equivalentDose = ""
        }
    }


#Preview {
    test3()
}
