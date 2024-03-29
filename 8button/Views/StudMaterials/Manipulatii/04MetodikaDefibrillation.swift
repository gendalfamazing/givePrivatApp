//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct _4MetodikaDefibrillation: View {
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
                                            **Методика дефибрилляции**
                                            """
                                           )).buildGrayTextCenter()
                    .multilineTextAlignment(.center)
                VStack {
                    Image("metoddeff")
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
                MyViewBuilder(title: Text("Показания"),
                              content: Text("""
                                                **При дефибрилляции происходит синхронизации процессов возбуждения проводящей ткани и мышечных волокон миокарда после подачи кратковременного электрического импульса большой силы**. В результате этого угнетаются все эктопические очаги электрической активности, и остается только один нормальный, который получается в сумме своих векторов.
                                                """
                                           )).buildGrayText()
                MyViewBuilder(title: Text("Показания"),
                              content: Text("""
                                                1. **Фибрилляция желудочков**
                                                2. **Желудочковая тахикардия без пульса**

                                                **Дефибрилляция проводится исключительно пациентам, которые находятся в состоянии клинической смерти**.
                                                
                                                **Если вы не уверены, что на мониторе – асистолия или ФЖ низкой амплитуды (менее 0,3 мВ), не выполняйте попытки дефибрилляции и продолжайте реанимацию (повторная оценка ритма через 2 минуты)**.
                                                Лицо, которое будет проводить дефибрилляцию, должно быть ознакомлено с правилами безопасности при работе с дефибриллятором, а также с инструкцией производителя.
                                                """
                                           )).buildDualBlockBlueGray(isTextExpanded: isTextExpanded1)
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded1.toggle()
                        }
                    }
                MyViewBuilder(title: Text("Проведение дефибрилляции при помощи утюжковых электродов"),
                              content: Text("""
                                                1. **Приложить утюжковые электроды к грудной клетке и оценить ритм**.
                                                • **Грудной** (в левой руке) **под правую ключицу пациента**
                                                • **Верхушечный** (в правой руке) **по передней подмышечной линии кнаружи от верхушки сердца**
                                                • **Детские электроды обычно спрятаны под пластинами для взрослых**. Как получить к ним доступ можно узнать в инструкции производителя.
                                                
                                                2. **Хорошо смазать электроды гелем**
                                                • **Распределить гель по всей поверхности утюжкового электрода** потерев их рабочие поверхности друг о друга
                                                • **Во время этой процедуры, второй реаниматор продолжает выполнение СЛР**
                                                
                                                3. **Выбрать уровень энергии и нажать кнопку заряд**
                                                • Как правило, сделать это можно и на корпусе прибора и на самих утюжковых электродах, возможность в каждом конкретном случае, зависит от модели аппарата.
                                                • **Показанная производителем начальная величина разряда для взрослых установлена сразу после включения**
                                                **для взрослых**: 200 Дж у бифазных моделей, далее возможна разблокировка и увеличение разряда до 360 Дж;
                                                **у детей**: первый-третий разряд 4 Дж/кг, четвертый-пятый 6- Дж/кг, последующие - 8 Дж/кг
                                                • В случаях, когда клинический протокол расходится с инструкцией производителя, действовать согласно инструкции производителя.
                                                • **Во время набора заряда дефибриллятором второй реаниматор продолжает выполнение СЛР**
                                                
                                                4. **Повторно разместить электроды на грудной клетке, как указано в пункте 1**.
                                                
                                                5. **Громко и четко сообщить лицам, окружающих пациента, чтобы они отошли**.
                                                
                                                • **Убедитесь, что никто не касается пациента или предметов, с которыми он контактирует**
                                                • **Все электромедицинское оборудование, которое не защищено от дефибрилляции и подключено к пациенту должно быть отсоединено**.
                                                
                                                6. **Перед нанесением разряда, с силой (~10-12 кг) прижать электроды к грудной клетке**.
                                                
                                                7. **Выполнить разряд, одновременно нажав большими пальцами на обоих утюжковых электродах кнопки разряд**.
                                                
                                                8. **Продолжить СЛР в течение 2 минут, оценку ритма непосредственно после дефибрилляции не проводить**.
                                                """
                                           )).buildDualBlockBlueGray(isTextExpanded: isTextExpanded2)
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded2.toggle()
                        }
                    }
                
                MyViewBuilder(title: Text("Проведение дефибрилляции при помощи самоклеящихся электродов"),
                              content: Text("""
                                                При использовании самоклеящихся электродов для дефибрилляции гель не нужен, а их применение является более эффективным и безопасным.
                                                **Порядок действий следующий**:

                                                1. **Приклеить специальные электроды для дефибрилляции на грудную клетку, согласно рекомендациям производителя, прервав при этом закрытый массаж сердца**.
                                                2. **Оценить ритм**.
                                                3. **Выбрать уровень энергии на корпусе дефибриллятора и нажать кнопку заряд.**
                                                4. **Громко и четко сообщить лицам, окружающих пациента, чтобы они отошли, все электромедицинское оборудование, которое не защищено от дефибрилляции и подключено к пациенту должно быть отсоединено.**
                                                5. **Выполнить разряд.**
                                                6. **Продолжить СЛР.**
                                                """
                                           )).buildDualBlockBlueGray(isTextExpanded: isTextExpanded3)
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded3.toggle()
                        }
                    }
                MyViewBuilder(title: Text("Осложнения"),
                              content: Text("""
                                                1. **Асистолия**
                                                Дефибрилляция оказалась неэффективной или выполнялась при мелковолновой фибрилляции желудочков (амплитуда менее 0,3 мВ).

                                                2. **Ожог кожи в месте приложения электродов**
                                                Возникают, если дефибрилляция проводилась без геля, чем больше подавалось разрядов, тем выше вероятность их возникновения.
                                                """
                                           )).buildDualBlockBlueGray(isTextExpanded: isTextExpanded4)
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded4.toggle()
                        }
                    }
                MyViewBuilder(title: Text("Ошибки"),
                              content: Text("""
                                                1. **Длительные перерывы в закрытом массаже сердца перед разрядом**.
                                                2. **Использование сухих электродов**.
                                                3. **Неплотное прижатие электродов к грудной клетке больного**.
                                                4. **Нанесение разряда низкого или чрезмерно высокого напряжения**.
                                                5. **Отсутствие попыток устранения причины смерти, если она потенциально обратима** (алгоритм 4Г-4Т).
                                                """
                                           )).buildDualBlockBlueGray(isTextExpanded: isTextExpanded5)
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded5.toggle()
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
                    «Оксигенотерапия»
                    """)
                    .font(.caption2)
                    .foregroundStyle(Color.toolBar)
                }
            }
            
        }
    }
    
}
#Preview {
    _4MetodikaDefibrillation()
}
