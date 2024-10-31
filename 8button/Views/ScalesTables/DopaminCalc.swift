

import SwiftUI
import Foundation

struct InfusionRateCalculatorView: View {
    @State private var isTextExpanded1 = false
    @State private var drugConcentration = ""
    @State private var drugVolume = ""
    @State private var solventVolume = ""
    @State private var drugDosage = ""
    @State private var patientWeight = ""
    @State private var convertMG = 1000.0
    
    @FocusState private var isKeyFieldFocused: Bool
    
    var calculatedDose: Double {
        if let concentration = Double(drugConcentration),
           let volume = Double(drugVolume),
           let solvent = Double(solventVolume),
           let dosage = Double(drugDosage),
           let weight = Double(patientWeight) {
            let totalVolume = volume + solvent
            let dose = ((dosage * weight ) / ((concentration * volume * convertMG) / (totalVolume)))
            return dose
        }
        return 0
    }
    var calculatedDoseHour: Double {
        if let concentration = Double(drugConcentration),
           let volume = Double(drugVolume),
           let solvent = Double(solventVolume),
           let dosage = Double(drugDosage),
           let weight = Double(patientWeight) {
            let totalVolume = volume + solvent
            let dose = ((dosage * weight ) / ((concentration * volume * convertMG) / (totalVolume)) * 60)
            return dose
        }
        return 0
    }
    var calculatedDrops: Double {
        if let concentration = Double(drugConcentration),
           let volume = Double(drugVolume),
           let solvent = Double(solventVolume),
           let dosage = Double(drugDosage),
           let weight = Double(patientWeight) {
            let totalVolume = volume + solvent
            let dose = ((dosage * weight ) / ((concentration * volume * convertMG) / (totalVolume)))
            if textIsCount() {
                return dose * 20
            }
        }
        return 0
    }
    func textIsCount() -> Bool {
        if drugConcentration.count >= 3 ||
            drugVolume.count >= 3 ||
            solventVolume.count >= 4 ||
            drugDosage.count >= 3 ||
            patientWeight.count >= 4
        {
            return false
        }
        return true
    }
    
    var body: some View {
        ScrollView {
            VStack (spacing: 1){
                
                    VStack (spacing: 1){
                        MyViewBuilder(title: Text(""), content: Text("**Введите данные:**")).buildGrayInText()
                        VStack {
                            ZStack(alignment: .trailing) {
                                        TextField("Лекарственная форма", text: $drugConcentration)
                                            .font(.subheadline)
                                            .fontWeight(.semibold)
                                            .keyboardType(.numberPad)
                                            .frame(minHeight: 30)
                                            .padding(.trailing, 70)
                                            .padding(.leading, 10)
                                            .onChange(of: drugConcentration) { newValue in
                                                // Удаляем все нецифровые символы
                                                let filtered = newValue.filter { "0123456789".contains($0) }
                                                // Ограничиваем количество символов до двух
                                                if filtered.count > 3 {
                                                    drugConcentration = String(filtered.prefix(3))
                                                } else {
                                                    drugConcentration = filtered
                                                }
                                                }
                                            .focused($isKeyFieldFocused)
                                            .toolbar {
                                                ToolbarItemGroup(placement: .keyboard) {
                                                    Spacer()
                                                    Button("Готово") {
                                                        isKeyFieldFocused = false
                                                    }
                                                }
                                            }
                                        Text("мг/мл")
                                            .foregroundColor(.gray)
                                            .padding(.trailing, 10) // Размещаем текст внутри поля
                                    }
                            
                            Divider()
                            ZStack(alignment: .trailing) {
                                        TextField("Объем лекарственной формы", text: $drugVolume)
                                            .font(.subheadline)
                                            .fontWeight(.semibold)
                                            .keyboardType(.numberPad)
                                            .frame(minHeight: 30)
                                            .padding(.trailing, 70)
                                            .padding(.leading, 10)
                                            .focused($isKeyFieldFocused)
                                            .onChange(of: drugVolume) { newValue in
                                                // Удаляем все нецифровые символы
                                                let filtered = newValue.filter { "0123456789".contains($0) }
                                                // Ограничиваем количество символов до двух
                                                if filtered.count > 3 {
                                                    drugVolume = String(filtered.prefix(3))
                                                } else {
                                                    drugVolume = filtered
                                                }
                                                }
                                        Text("мл")
                                            .foregroundColor(.gray)
                                            .padding(.trailing, 10) // Размещаем текст внутри поля
                                    }
                            
                            Divider()
                            ZStack(alignment: .trailing) {
                                        TextField("Объем растворителя", text: $solventVolume)
                                            .font(.subheadline)
                                            .fontWeight(.semibold)
                                            .keyboardType(.numberPad)
                                            .frame(minHeight: 30)
                                            .padding(.trailing, 70)
                                            .padding(.leading, 10)
                                            .focused($isKeyFieldFocused)
                                            .onChange(of: solventVolume) { newValue in
                                                // Удаляем все нецифровые символы
                                                let filtered = newValue.filter { "0123456789".contains($0) }
                                                // Ограничиваем количество символов до двух
                                                if filtered.count > 3 {
                                                    solventVolume = String(filtered.prefix(3))
                                                } else {
                                                    solventVolume = filtered
                                                }
                                                }
                                        Text("мл")
                                            .foregroundColor(.gray)
                                            .padding(.trailing, 10) // Размещаем текст внутри поля
                                    }
                            Divider()
                            ZStack(alignment: .trailing) {
                                        TextField("Дозировка препарата", text: $drugDosage)
                                            .font(.subheadline)
                                            .fontWeight(.semibold)
                                            .keyboardType(.numberPad)
                                            .frame(minHeight: 30)
                                            .padding(.trailing, 70)
                                            .padding(.leading, 10)
                                            .focused($isKeyFieldFocused)
                                            .onChange(of: drugDosage) { newValue in
                                                // Удаляем все нецифровые символы
                                                let filtered = newValue.filter { "0123456789".contains($0) }
                                                // Ограничиваем количество символов до двух
                                                if filtered.count > 3 {
                                                    drugDosage = String(filtered.prefix(3))
                                                } else {
                                                    drugDosage = filtered
                                                }
                                                }
                                        Text("мкг/кг/мин")
                                            .foregroundColor(.gray)
                                            .padding(.trailing, 10) // Размещаем текст внутри поля
                                    }
                            Divider()
                            ZStack(alignment: .trailing) {
                                        TextField("Масса пациента", text: $patientWeight)
                                            .font(.subheadline)
                                            .fontWeight(.semibold)
                                            .keyboardType(.numberPad)
                                            .frame(minHeight: 30)
                                            .padding(.trailing, 70)
                                            .padding(.leading, 10)
                                            .focused($isKeyFieldFocused)
                                            .onChange(of: patientWeight) { newValue in
                                                // Удаляем все нецифровые символы
                                                let filtered = newValue.filter { "0123456789".contains($0) }
                                                // Ограничиваем количество символов до двух
                                                if filtered.count > 3 {
                                                    patientWeight = String(filtered.prefix(3))
                                                } else {
                                                    patientWeight = filtered
                                                }
                                                }
                                        Text("кг")
                                            .foregroundColor(.gray)
                                            .padding(.trailing, 10) // Размещаем текст внутри поля
                                    }
                            
                            
                        }
                        .padding(5)
                        .background(Color.back)
                        .cornerRadius(10)
                        Spacer(minLength: 5)
                        
                            VStack (alignment: .leading, spacing:1) {
                                MyViewBuilder(title: Text(""), content: Text("**Доза препарата:**")).buildGrayInText()
                                HStack (spacing: 1){
                                    Spacer()
                                Text(textIsCount() ? """
                                    **\(calculatedDose, specifier: "%.2f")**
                                    мл/мин
                                    """ : """
                                    **ошибка**
                                    мл/мин
                                    """)
                                    .padding(5)
                                    .multilineTextAlignment(.center)
                                    .font(.subheadline)
                                    Spacer()
                                Text(textIsCount() ? """
                                    **\(calculatedDoseHour, specifier: "%.2f")**
                                    мл/час
                                    """ : """
                                    **ошибка**
                                    мл/час
                                    """)
                                    .padding(5)
                                    .multilineTextAlignment(.center)
                                    .font(.subheadline)
                                    Spacer()
                                Text(textIsCount() ? """
                                        **≈\(calculatedDrops, specifier: "%.2f")**
                                        кап/мин
                                        """ : """
                                        **ошибка**
                                        кап/мин
                                        """)
                                    .padding(5)
                                    .multilineTextAlignment(.center)
                                    .font(.subheadline)
                                    Spacer()
                            }
                        }
                            .onTapGesture { UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to:nil, from:nil, for:nil) }
                        
                        MyViewBuilder(title: Text(""), content: Text(isTextExpanded1 ? "**Сбросить**" : "**Сбросить**")).buildGreen1Text(isTextExpanded: isTextExpanded1)
                            .asButton(.press) {
                                hideKeyboard()
                                withAnimation (.snappy) {
                                        drugConcentration = ""
                                        drugVolume = ""
                                        solventVolume = ""
                                        drugDosage = ""
                                        patientWeight = ""
                                    
                                    
                                }
                            }
                        
                    }
                    .padding(5)
                    .background(Color.grayButton)
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                    )
                    
                
                Spacer(minLength: 5)
                MyViewBuilder(title: Text("""
                                          
                                          """),
                              content: Text("""
                                            **Способ применения и дозы:**
                                            
                                            Препарат применяют строго по назначению врача в условиях стационара.
                                            После разведения допамин вводят внутривенно только в виде непрерывной инфузии при помощи соответствующего оборудования (инфузоматов), при возможности - в крупные вены!
                                            Дозу препарата и скорость введения следует подбирать индивидуально, в зависимости от степени тяжести шока, величины артериального давления и реакции пациента на лечение.
                                            **Для увеличения диуреза и достижения положительного инотропного эффекта** (увеличение сократительной активности миокарда) Допамин вводят со скоростью **100-250 мкг/мин (1,5-3,5 мкг/кг/мин - область малых доз**).
                                            **При интенсивной хирургической терапии** Допамин вводят со скоростью **300-700 мкг/мин (4-10 мкг/кг/мин - область средних доз**).
                                            **При септическом шоке** Допамин вводят со скоростью **750-1500 мкг/мин (10,5-20 мкг/кг/мин - область максимальных доз**).
                                            У большинства пациентов **удается поддерживать удовлетворительное состояние при применении доз Допамина менее 20 мкг/кг/мин**.
                                            **В отдельных случаях с целью воздействия на артериальное давление доза Допамина может быть увеличена до 40-50 мкг/кг/мин и более**.
                                            
                                            При возникновении или учащении нарушений сердечного ритма дальнейшее увеличение дозы Допамина противопоказано. Длительность введения Допамина зависит от индивидуальных особенностей пациента.
                                            После стабилизации состояния пациента отмену препарата производят постепенно.
                                            
                                            **При применении лекарственного препарата рекомендуется**:
                                            - постепенно уменьшать скорость внутривенной инфузии препарата во избежание развития артериальной гипотензии;
                                            - уменьшить скорость инфузии при непропорциональном повышении диастолического артериального давления (т.е. при выраженном снижении пульсового давления) и/или уменьшении диуреза. При этом необходимо тщательное наблюдение за пациентами.
                                            """)).buildGrayText()
                    .onTapGesture { UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to:nil, from:nil, for:nil) }
            }
            .padding(.horizontal, 10)
            .padding(.bottom, 55)
        }
        
                
//        .edgesIgnoringSafeArea(.bottom)
        .background(Color.back)
        
        .navigationBarBackButtonHidden(false)
        .navigationBarTitle("",displayMode: .inline)
        .navigationBarTitle("", displayMode: .inline)
        .toolbar {
            ToolbarItem(placement: .principal) {
                VStack {
                    Text("Калькулятор дозировки Допамина")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("""
                    «Возможность быстрого и точного рассчета»
                    """)
                    .font(.caption2)
                    .foregroundStyle(Color.toolBar)
                }
            }
            
        }
    }
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    func isValidName(_ name: String) -> Bool {
        // Валидация имени
        return name.count <= 3
    }
    
}
extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

#Preview {
    InfusionRateCalculatorView()
}
