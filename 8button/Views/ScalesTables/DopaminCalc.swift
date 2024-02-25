

import SwiftUI

struct InfusionRateCalculatorView: View {
    @State private var isTextExpanded1 = false
    @State private var drugConcentration = ""
    @State private var drugVolume = ""
    @State private var solventVolume = ""
    @State private var drugDosage = ""
    @State private var patientWeight = ""
    @State private var convertMG = 1000.0
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
            return dose * 20
        }
        return 0
    }
    
    
    var body: some View {
        ScrollView {
            VStack (spacing: 1){
                ZStack {
                    MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                    VStack (spacing: 1){
                        MyViewBuilder(title: Text(""), content: Text("**Введите данные:**")).buildGrayInText()
                        VStack {
                            TextField("Лекарственная форма (мг/мл)", text: $drugConcentration)
                                .keyboardType(.numberPad)
                                .frame(minHeight: 30)
                            Divider()
                            TextField("Объем лекарственной формы (мл)", text: $drugVolume)
                                .keyboardType(.numberPad)
                                .frame(minHeight: 30)
                            Divider()
                            TextField("Объем растворителя (мл)", text: $solventVolume)
                                .keyboardType(.numberPad)
                                .frame(minHeight: 30)
                            Divider()
                            TextField("Дозировка препарата (мкг/кг/мин)", text: $drugDosage)
                                .keyboardType(.numberPad)
                                .frame(minHeight: 30)
                            Divider()
                            TextField("Масса пациента (кг)", text: $patientWeight)
                                .keyboardType(.numberPad)
                                .frame(minHeight: 30)
                            
                            
                        }
                        .padding(5)
                        .background(Color.back)
                        .cornerRadius(10)
                        Spacer(minLength: 5)
                        MyViewBuilder(title: Text(""), content: Text("**Рассчитать**")).buildBlue591Text(isTextExpanded: isTextExpanded1)
                            .onTapGesture {
                                hideKeyboard()
                                withAnimation (.snappy) {
                                    isTextExpanded1.toggle()
                                    if isTextExpanded1 == false {
                                        drugConcentration = ""
                                        drugVolume = ""
                                        solventVolume = ""
                                        drugDosage = ""
                                        patientWeight = ""
                                    }
                                    
                                }
                            }
                        if isTextExpanded1 {
                            VStack (alignment: .leading, spacing:1) {
                                MyViewBuilder(title: Text(""), content: Text("**Доза препарата:**")).buildGrayInText()
                                HStack (spacing: 1){
                                    Spacer()
                                Text("""
                                    **\(calculatedDose, specifier: "%.2f")**
                                    мл/мин
                                    """)
                                    .padding(5)
                                    .multilineTextAlignment(.center)
                                    .font(.subheadline)
                                    Spacer()
                                Text("""
                                    **\(calculatedDoseHour, specifier: "%.2f")**
                                    мл/час
                                    """)
                                    .padding(5)
                                    .multilineTextAlignment(.center)
                                    .font(.subheadline)
                                    Spacer()
                                Text("""
                                    **≈ \(calculatedDrops, specifier: "%.2f")**
                                    кап/мин
                                    """)
                                    .padding(5)
                                    .multilineTextAlignment(.center)
                                    .font(.subheadline)
                                    Spacer()
                            }
                        }
                        }
                        
                        
                    }
                    .padding(5)
                }
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
            }
            .padding(.horizontal, 10)
            .padding(.bottom, 85)
        }
        
        //        .onTapGesture { UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to:nil, from:nil, for:nil) }
        .edgesIgnoringSafeArea(.bottom)
        .background(Color.back)
        
        .navigationBarTitle("Калькулятор дозировки Допамина")
        .navigationBarBackButtonHidden(false)
        .navigationBarTitle("",displayMode: .inline)
        .toolbar {
            ToolbarItem(placement: .principal) {
                VStack {
                    Text("Калькулятор дозировки Допамина")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    //
                }
            }
            
        }
    }
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
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
