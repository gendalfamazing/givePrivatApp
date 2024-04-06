//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct _3Pulseoxymetry: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    
    @State private var isTextExpanded1 = false
    @State private var isTextExpanded2 = false
    @State private var isTextExpanded3 = false
    @State private var isTextExpanded4 = false
    @State private var isTextExpanded5 = false
    @State private var isTextExpanded6 = false
    @State private var isTextExpanded7 = false
    @State private var isTextExpanded8 = false
    @State private var isTextExpanded9 = false
    @State private var isTextExpanded10 = false
    @State private var isTextExpanded11 = false
    @State private var isTextExpanded12 = false
    @State private var isTextExpanded13 = false
    @State private var isTextExpanded14 = false
    @State private var isTextExpanded15 = false
    @State private var isTextExpanded16 = false
    @State private var isTextExpanded17 = false
    @State private var isTextExpanded18 = false
    @State private var isTextExpanded19 = false
    @State private var isTextExpanded20 = false
    @State private var isTextExpanded21 = false
    @State private var isTextExpanded22 = false
    @State private var isTextExpanded23 = false
    @State private var isTextExpanded24 = false
    @State private var isTextExpanded25 = false
    @State private var isTextExpanded26 = false
    @State private var isTextExpanded27 = false
    @State private var isTextExpanded28 = false
    @State private var isTextExpanded29 = false
    @State private var isTextExpanded30 = false
    
    var body: some View {
        ScrollView {
            VStack (spacing:5) {
                MyViewBuilder(title: Text("Факты"),
                              content: Text("""
                                            **Пульсоксиметрия**
                                            """
                                           )).buildGrayTextCenter()
                    .multilineTextAlignment(.center)
                Image("pulse1")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Rectangle())
                    .cornerRadius(10)
                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                    .padding(10)
                MyViewBuilder(title: Text("Общие положения"),
                              content: Text("""
                                                1. **Сатурация (англ. saturation) (SpO2)** – это процентное отношение количества О2, реально связанного с гемоглобином, к кислородной емкости крови (процентное соотношение оксигемоглобина ко всему гемоглобину).

                                                2. **Норма сатурации (SpO2) – 95-99%**, при дыхании атмосферным воздухом.

                                                3. **Небольшое "недонасыщение" (2-5%)** объясняется некоторой неравномерностью легочной вентиляции и незначительной примесью венозной крови, которые имеют место и у здоровых людей.

                                                4. **Если пульсоксиметр показывает 100% при дыхании пациента атмосферным воздухом, то скорее всего он неисправен**.

                                                5. **В норме венозная кровь имеет сатурацию около 75%** (зависит от КОС, анатомической области).

                                                6. **Цифры сатурации, можно сравнить с парциальным давлением кислорода в крови (PaO2)**:
                                                – **SpO2 95-98%**  - **80-100 мм рт.ст. (PaO2)**
                                                – **SpO2 90% - 60 мм рт.ст. (PaO2)**
                                                – **SpO2 75%  - 40 мм рт.ст. (PaO2)**

                                                7. **Считается, что когда SpO2 опускается до 90%, увидеть цианоз удается лишь в половине случаев**. Даже десатурация артериальной крови до 85% (РаО2 = 50 мм рт. ст.), что расценивается как серьезная гипоксемия, требующая коррекции, далеко не всегда сопровождается развитием цианоза.

                                                8. **При сатурации менее 90% показана оксигенотерапия**.

                                                9. **Сатурация не всегда является параметром адекватной периферической оксигенации**. При анемии сатурация может быть в пределах нормы или даже 100%, а ткани страдают от гипоксии.

                                                10. **При отравлении угарным газом сатурация может быть в пределах нормы или даже доходить до 100%** (карбоксигемоглобин ошибочно воспринимается прибором как оксигемоглобин).

                                                11. **Метгемоглобин напротив, занижает показатели пульсоксиметрии.** Метгемоглобинемия может наблюдаться при отравлениях некоторыми лекарственными средствами (анальгин, парацетамол, викасол, лидокаин, новокаин, сульфаниламиды, нитриты, противомалярийных препараты и др.). Кроме того, существуют наследственные формы метгемоглобинемии.

                                                12. **Если сатурацию определили инвазивным путем** (так называемую настоящую сатурацию), **то ее обозначают символами SaO2**.

                                                13. **Некоторые модели пульсоксиметров умеют определять PI**.
                                                **Индекс перфузии (PI)** – это характеристика силы пульса в месте измерения. Индекс перфузии изменяется от 0,02 % (очень слабая сила пульса) до 20 % (очень сильный сигнал пульса), является относительной величиной и может быть различным в разных точках наложения датчика и у разных пациентов. Величина перфузионного индекса отражает состояние объемного капиллярного кровотока. Она зависит от состояния сердечного выброса, сосудистого тонуса, объема циркулирующей сосудистой жидкости.
                                                """
                                           )).buildDualBlockBlueGray(isTextExpanded: isTextExpanded1)
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded1.toggle()
                        }
                    }
               
                
                MyViewBuilder(title: Text("Ошибки и способы их выявления"),
                              content: Text("""
                                                1. **Если есть сомнения в правильной работе датчика пульсоксиметра, то проверить его можно надев на свой палец**. Cначала определяют сатурацию в сидячем положении (рука находится на столе). Затем встают, поднимают руку и снова определяют сатурацию. Сатурация должна быть одинаковой. Если она не совпадает это значит пульсоксиметр не пригоден для мониторинга у пациентов.

                                                2. **Если во время определения сатурация быстро изменяется** (например с 95% на 80% и наоборот), надо думать об ошибке прибора.

                                                3. **При сниженном периферическом кровотоке** (например при переохлаждении или в состоянии шока), когда не определяется пульсовая волна на приборе – пульсоксиметр будет показывать недостоверные результаты или не показывать их вовсе.

                                                4. **Самая частая причина ошибок пульсоксиметра – движения пациента.** Важнейшее условие достоверности получаемых данных – это **полная неподвижность пальца** в процессе исследования. Эта проблема очень актуальна именно для СМП, так как в полной мере проявляется при транспортировке. Умение модели пульсоксиметра определять эти артефакты и бороться с ними во многом определяется качеством прибора. Для исключения данных помех и правильной интерпретации показателей крайне важно, чтобы пульсоксиметр отображал плетизмограмму. Если ее график ровный и плавный, то с большой долей уверенности можно говорить что данные точны.

                                                5. **Лак для ногтей может немного занижать значение SpO2**.

                                                6. **При ярком солнечном свете может быть затруднено измерение SpO2 и результаты будут неправильными**. Не можете уйти с улицы засуньте палец с надетым пульсоксиметром в карман или под одежду и дождитесь результатов измерений.

                                                7. **При значениях сатурации ниже 70% резко возрастает погрешность метода**, т.к. в алгоритмах пульсоксиметров не имеется контрольных значений для сравнения.
                                                """
                                           )).buildDualBlockBlueGray(isTextExpanded: isTextExpanded2)
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded2.toggle()
                        }
                    }
                
                //                        }
                //                    }
                
            }
            .padding(.horizontal, 10)
            .padding(.bottom, 55)
        }
        //        .padding(.horizontal, 200)
        //            .edgesIgnoringSafeArea(.bottom)
        .background(Color.back)
        
        .navigationBarBackButtonHidden(false)
        .navigationBarTitle("", displayMode: .inline)
        .toolbar {
            ToolbarItem(placement: .principal) {
                VStack {
                    Text("Манипуляции")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("""
                    «Пульсоксиметрия»
                    """)
                    .font(.caption2)
                    .foregroundStyle(Color.toolBar)
                }
            }
            
        }
    }
    
}
#Preview {
    _3Pulseoxymetry()
}
