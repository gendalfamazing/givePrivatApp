//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct _5Kardioversion: View {
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
                                            **Методика кардиоверсии**
                                            """
                                           )).buildGrayTextCenter()
                    .multilineTextAlignment(.center)
                
                MyViewBuilder(title: Text("Показания"),
                              content: Text("""
                                                **Кардиоверсия достаточной величины вызывает деполяризацию всего миокарда, способствуя немедленной рефрактерности всей мышцы, готовой повторить деполяризацию.**
                                                После этого наиболее быстрый внутренний водитель ритма, чаще всего синоатриальный узел (САУ), возобновляет контроль над сердечным ритмом. Таким образом, кардиоверсия очень эффективно прекращает тахиаритмии, которые появляются в результате re-entry.
                                                
                                                Однако она менее эффективна при тахиаритмиях, возникших в результате повышенного автоматизма, поскольку восстановленный ритм часто выступает автоматической тахиаритмией.

                                                **В отличие от дефибрилляции, при кардиоверсии воздействие током синхронизировано с комплексом QRS, поскольку воздействие тока в уязвимый период (восходящая часть зубца Т) может спровоцировать ФЖ.**
                                                """
                                           )).buildGrayText()
                MyViewBuilder(title: Text("Подготовка"),
                              content: Text("""
                                                1. **Преоксигенация 100% O2**
                                                2. **Аналгезия: Морфин 1 мл** или **Промедол** (предпочтительнее у пожилых или ослабленных больных) **1 мл в/в** медленно на физ. растворе. При исходном угнетении дыхания использовать ненаркотические анальгетики (**Анальгин 4 мл**).
                                                3. **Седация: Диазепам 2-6 мл в/в** без разведения
                                                4. **Наладить мониторинг** (ЧСС, ЧД, НИАД, SpO2)
                                                """
                                           )).buildDualBlockBlueGray(isTextExpanded: isTextExpanded1)
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded1.toggle()
                        }
                    }
                ZStack {
                    MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                    VStack  {
                        MyViewBuilder(title: Text("Проведение"),
                                      content: Text("""
                                        Проведение
                                        """)).buildBlue59Text(isTextExpanded: isTextExpanded2)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded2.toggle()
                                }
                            }
                        if isTextExpanded2{
                            VStack (spacing:1){
                                
                                MyViewBuilder(title: Text(""),
                                              content: Text("""
                                        1. **Хорошо смазать электроды гелем, распределив гель по всей поверхности.**
                                        2. **Выбрать синхронный режим в дефибрилляторе.**
                                        3. **Убедиться в наличии меток синхронизации с комплексом QRS**.
                                        """)).buildGrayInHiddenText()
                                
                                Image("Kardioversion1")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Rectangle())
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(10)
                                MyViewBuilder(title: Text(""),
                                              content: Text("""
                                        4. **Выбрать начальный уровень энергии, показанный при данном типе аритмии, набрать заряд**.
                                        """)).buildGrayInHiddenText()
                                
                                HStack {
                                    VStack (alignment: .leading) {
                                        Text("НЖТ, ТП")
                                            .font(.footnote)
                                        .bold()
                                        Text("НЖТ с широкими комплексами")
                                            .font(.footnote)
                                        .bold()
                                        Text("Фибрилляция предсердий")
                                            .font(.footnote)
                                        .bold()
                                        Text("Желудочковая тахикардия")
                                            .font(.footnote)
                                        .bold()
                                    }
                                    .frame(width: 250, alignment: .leading)
                                    VStack {
                                        Text("50 Дж")
                                            .font(.footnote)
                                        Text("120-150 Дж")
                                            .font(.footnote)
                                        Text("100 Дж")
                                            .font(.footnote)
                                        Text("200 Дж")
                                            .font(.footnote)
                                        
                                    }
                                    .frame(width: 80, alignment: .center)
                                }
                                MyViewBuilder(title: Text(""),
                                              content: Text("""
                                        5. **Установить электроды на передней поверхности грудной клетки: грудной** (в левой руке) под правую ключицу пациента, вдоль правого края грудины,
                                        **верхушечный** (в правой руке) над 5-м и 6-м межрёберным промежутком кнаружи от верхушки сердца, за пределами молочной железы.
                                        6. **В момент нанесения разряда с силой прижать электроды к грудной клетке**.
                                        7. **Наносить разряд в момент выдоха**, соблюдая правила техники безопасности.
                                        8. **При отсутствии эффекта удвоить заряд и повторить ЭИТ**. Промежуток времени между попытками должен быть минимален и требуется лишь для оценки эффекта дефибрилляции и набора, в случае необходимости, следующего разряда.
                                        9. **При отсутствии эффекта повторить разрядом максимальной энергии**.
                                        10. **Если 3 разряда с нарастающей энергией не восстановили сердечный ритм, ввести антиаритмический препарат, показанный при данной аритмии и повторить ЭИТ разрядом максимальной энергии**.
                                        """)).buildGrayInHiddenText()
                                
                            }
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded2.toggle()
                                }
                            }
                        }
                    }
                }
                
                MyViewBuilder(title: Text("Осложнения"),
                              content: Text("""
                                                1. **Постконверсионные аритмии, и прежде всего – фибрилляция желудочков**.
                                                При возникновении фибрилляции желудочков **немедленно наносят повторный разряд энергией 200 Дж**.
                                                Другие постконверсионные аритмии (например, предсердные и желудочковые экстрасистолы) обычно кратковременны и не требуют специального лечения.

                                                2. **Тромбоэмболии легочной артерии и большого круга кровообращения**
                                                Тромбоэмболия чаще развивается у больных с тромбоэндокардитом и при длительно существующем мерцании предсердий в отсутствии адекватной подготовки антиакоагулянтами.

                                                3. **Нарушения дыхания Нарушения дыхания являются следствием неадекватной премедикации и анальгезии**.
                                                Для предупреждения развития нарушений дыхания следует проводить полноценную оксигенотерапию. Нередко с развивающимся угнетением дыхания удается справиться с помощью словесных команд. Нельзя пытаться стимулировать дыхание дыхательными аналептиками. При серьезных нарушениях дыхания показана **интубация**.

                                                4. **Ожоги кожи**
                                                Ожоги кожи возникают вследствие плохого контакта электродов с кожей, использования повторных разрядов с большой энергией.

                                                5.**Артериальная гипотензия**
                                                Артериальная гипотензия после проведения кардиоверсии развивается редко. Обычно гипотензия не выражена и сохраняется недолго.

                                                6. **Отек легких**
                                                Отек легких изредка возникает через 1-3 часа после восстановления синусового ритма, особенно у больных с длительно существовавшим мерцанием предсердий.

                                                7. **Изменения реполяризации на ЭКГ**
                                                Изменения реполяризации на ЭКГ после проведения кардиоверсии разнонаправлены, неспецифичны и могут сохраняться несколько часов.
                                                """
                                           )).buildDualBlockBlueGray(isTextExpanded: isTextExpanded3)
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded3.toggle()
                        }
                    }
                

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
                    «Кардиоверсия»
                    """)
                    .font(.caption2)
                    .foregroundStyle(Color.toolBar)
                }
            }
            
        }
    }
    
}
#Preview {
    _5Kardioversion()
}
