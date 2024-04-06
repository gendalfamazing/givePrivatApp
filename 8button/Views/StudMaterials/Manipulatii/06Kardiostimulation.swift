//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct _6Kardiostimulation: View {
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
                                            **Методика наружной чрескожной кардиостимуляции**
                                            на примере дефибриллятора 
                                            Юмедика Смарт Д3
                                            """
                                           )).buildGrayTextCenter()
                    .multilineTextAlignment(.center)
                VStack {
                    Image("kardiostimulation1")
                        .resizable()
                        .scaledToFit()
                        .clipShape(Rectangle())
                        .cornerRadius(10)
                        .shadow(color: .shadowGrayRectangle, radius: 0.5)
                        .padding(10)
                }
                .onTapGesture {
                    withAnimation (.snappy) {
                        isTextExpanded1.toggle()
                    }
                }
                //                    ZStack {
                //                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                //                        VStack (spacing: 1) {
               
                
                ZStack {
                    MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                    VStack  {
                        MyViewBuilder(title: Text("Проведение"),
                                      content: Text("""
                                        Проведение
                                        """)).buildBlue59Text(isTextExpanded: isTextExpanded1)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded1.toggle()
                                }
                            }
                        if isTextExpanded1{
                            VStack (spacing:1){
                                
                                MyViewBuilder(title: Text(""),
                                              content: Text("""
                                        1. **Убедитесь в безопасности!** Во избежание угрозы взрыва при кардиостимуляции пациента, которому подается кислород для дыхания, **правильно прокладывайте кислородную трубку. Держите ее подальше от многофункциональных гибких электродов**.

                                        2. **Премедикация с целью седации – Sol. Diazepami 0,5% – 2-6 ml** (начать с 2 ml в/в, в дальнейшем титруя для поддержания седации,
                                        **с целью анальгезии – Sol. Promedoli 2% – 1 ml**.
                                        **В экстренной ситуации начать стимуляцию немедленно, седацию и обезболивание выполнить по ходу стимуляции.**

                                        3. **Наладить мониторинг** (НИАД, SpO2), **получить надежный венозный доступ.**

                                        4. **Наложить одноразовые клеящиеся электроды стимуляции** (гибкие электроды) **в соответствии с инструкцией в передне-боковую или передне-заднюю** (предпочтительно) **позицию, 5 электродов ЭКГ** (обязательно, без них мониторинг ЭКГ невозможен – ЭКС в режиме по запросу будет недоступна).

                                        5. **Отсоединить кабель утюжковых электродов и вставить кабель гибких электродов в разъем до щелчка. Подсоединить разъемы гибких электродов к кабелю электродов**.

                                        6. **Переключить дефибриллятор на функцию кардиостимуляции** (режим «Кардиос»), **по умолчанию активирован режим по запросу** (режим не менять, фиксированный только при асистолии), оценить ритм по монитору, убедившись в показаниях к проведению процедуры.

                                        7. **Выберите отведение с легко распознаваемым зубцом R.** Над каждым зубцом R должен появиться маркер зубца R, как показано на приведенном ниже рисунке.
                                        **Если маркеры зубцов R отсутствуют или не совпадают с зубцами R** (например, располагаются над зубцами T), **выберите другое отведение**.
                                        """)).buildGrayInHiddenText()
                                
                                Image("kardiostimulation2")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Rectangle())
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(10)
                                MyViewBuilder(title: Text(""),
                                              content: Text("""
                                        8. **При включении режима кардиостимуляции частота стимуляции по умолчанию 70 в мин. – не менять** (или установить в зависимости от гемодинамики 60-90 в мин.), **сила тока – 30 мА**. Чтобы запустить кардиостимуляцию, нажмите сенсорную клавишу "Запуск кардиост". В информационной области кардиостимуляции появится сообщение "Идет кардиост".

                                        9. **При каждой подаче импульса стимуляции пациенту на кривой ЭКГ отображается белый маркер стимуляции**.
                                        
                                        **Если применяется стимуляция по запросу, то на кривой ЭКГ отображается также маркер зубца R, пока не произойдет захват**. В режиме кардиостимуляции по запросу возможно присутствие самопроизвольных сердцебиений, не связанных с подачей импульса стимуляции. Если ЧСС пациента превышает частоту кардиостимулятора, импульсы стимуляции не подаются и, следовательно, маркеры стимуляции не появляются.
                                        """)).buildGrayInHiddenText()
                                
                                Image("kardiostimulation3")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Rectangle())
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(10)
                                MyViewBuilder(title: Text(""),
                                              content: Text("""
                                        10. **Поворачивая регулятор, постепенно увеличивать силу тока до захвата импульсов желудочками** (как правило 50-70 мА).
                                        **Признаки захвата импульсов**: расширение комплекса QRS и появление широкого зубца T на ЭКГ после каждого белого маркера (электрический захват).

                                        11. **Пропальпировать пульс на лучевых артериях**. Его соответствие частоте стимуляции свидетельствует о механическом захвате. Стимуляция достигается.

                                        12. **Увеличить силу тока еще на 2 мА**.

                                        13. **Провести мониторинг НИАД, SpO2, следить за частотой и характером дыхания, периодически** (каждые 1-2 мин.) **пальпировать пульс** (проверять механический захват).

                                        14. **При потере механического захвата увеличить ток стимуляции до достижения эффекта**.
                                        """)).buildGrayInHiddenText()
                                
                                
                            }
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded1.toggle()
                                }
                            }
                        }
                    }
                }
                
                MyViewBuilder(title: Text("Примечания"),
                              content: Text("""
                                                1. **Нажав и удерживая функциональную клавишу** [4:1], **можно временно задержать подачу импульса стимуляции и понаблюдать за ритмом пациента**. В этом случае импульс стимуляции будет подаваться с частотой, равной **¼** заданной частоты кардиостимулятора. Для возобновления кардиостимуляции с заданной частотой отпустите клавишу.
                                                
                                                2. **В режиме кардиостимулятора доступны тревоги по следующим аритмиям**: асистолия, желудочковая фибрилляция и желудочковая тахикардия.
                                                """
                                           )).buildDualBlockBlueGray(isTextExpanded: isTextExpanded2)
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded2.toggle()
                        }
                    }
                    
                MyViewBuilder(title: Text("При переходе в асистолию во время проведения ЭКС"),
                              content: Text("""
                                                1. **Sol. Adrenalini 0,1% – 1 ml в разведении на 10 ml 0,9% NaCl внутривенно.**
                                                
                                                2. **Переключить режим работы в фиксированный, при помощи регулятора установить максимальную силу тока (200 мА), частоту 80 в минуту**.
                                                
                                                3. **При отсутствии эффекта от ЭКС в течение 2-х минут, рекомендуется перейти к более эффективному методу реанимации – закрытому массажу сердца с ручной вентиляцией мешком Амбу 30:2**, выполнять протокол «Асистолия».
                                                """
                                           )).buildDualBlockBlueGray(isTextExpanded: isTextExpanded3)
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded3.toggle()
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
                    «Наружная чрезкожная кардиостимуляция»
                    """)
                    .font(.caption2)
                    .foregroundStyle(Color.toolBar)
                }
            }
            
        }
    }
    
}
#Preview {
    _6Kardiostimulation()
}


