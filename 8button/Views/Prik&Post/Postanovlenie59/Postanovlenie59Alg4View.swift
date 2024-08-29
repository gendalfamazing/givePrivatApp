//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct Postanovlenie59Alg4View: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var isTextExpanded = false
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
    //  ¹²³⁴⁵
    var body: some View {
            ScrollView {
                VStack (spacing: 5) {
                    MyViewBuilder(title: Text("""
                                              ---
                                              """),
                                  content: Text("""
                                                **Диагностика и лечение 
                                                пациентов c тахикардией**
                                                """)).buildGrayTextCenter()
                        .multilineTextAlignment(.center)
                    MyViewBuilder(title: Text("""
                                              Общие положения
                                              """),
                                  content: Text("""
                                                **Ведущей причиной смерти во всем мире, в том числе и в Беларуси является смертность от ишемической болезни сердца (53,2%)**. Более 60 % летальных исходов в данной группе пациентов вызваны внезапной остановкой сердца в основе которой лежат тахи- и брадиаритмии. Поэтому при работе с нарушениями ритма надо быть готовым к оказанию сердечно-легочной реанимации (далее – СЛР).
                                                **В соответствии с международными рекомендациями по СЛР при работе с пациентом, имеющим остановку сердечной деятельности необходимо следовать «цепочке выживания»**:
                                                - **раннее распознавание** ургентного состояния и **вызов скорой** (неотложной) **помощи**;
                                                - **раннее начало СЛР**;
                                                - **раннее проведение дефибрилляции** (при наличии показаний);
                                                - **ранняя расширенная СЛР и постреанимационный уход**.
                                                
                                                **В процессе выполнения СЛР необходимо руководствоваться алгоритмом базовой СЛР**.
                                                
                                                **Предварительные действия**:
                                                1. **удостовериться в том, что пострадавший, оказывающий помощь и окружающие находятся в безопасности**;
                                                2. **проверить, реагирует ли пострадавший на внешние воздействия**;
                                                3. **повернуть пациента на спину**;
                                                4. **проверить/обеспечить проходимость дыхательных путей**;
                                                5. **если пострадавший не отвечает – оказывать СЛР**;
                                                """)).buildDualBlockBlueGray(isTextExpanded: isTextExpanded1)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded1.toggle()
                            }
                        }
                    if isTextExpanded1 {
                        
                        VStack (spacing:5) {
                            MyViewBuilder(title: Text("Алгоритм базовой СЛР"),
                                          content: Text("""
                                                        1. **Начать СЛР с непрямого массажа сердца компрессией грудной клетки**
                                                        - обеспечить экскурсию грудной клетки на **4-5 см**
                                                        - число компрессий должно составлять **не менее 100 в минуту**
                                                        2. **После проведения цикла из 30 компрессий грудной клетки выполнить 2 вдоха искусственного дыхания** (соотношение 30 : 2 сохраняется на протяжении всех реанимационных мероприятий независимо от количества человек, оказывающих помощь).
                                                        **При этом компрессия грудной клетки является приоритетной в сравнении с искусственным дыханием**.
                                                        """)).buildDualBlockBlueGrayLowLevel(isTextExpanded: isTextExpanded2)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded2.toggle()
                                    }
                                }
                            MyViewBuilder(title: Text("Алгоритм квалифицированной СЛР"),
                                          content: Text("""
                                                            **Условия обеспечения квалифицированной СЛР**:
                                                            1. Венозный доступ;
                                                            2. Подача кислорода;
                                                            3. Подключение электродов ЭКГ и/или электродов кардиовертера-дефибриллятора.
                                                            
                                                            **Алгоритм квалифицированной СЛР**:
                                                            1. **При проведении СЛР исключить потенциально устранимые/вторичные причины**:
                                                            1.1. гипоксемию;
                                                            1.2. гиповолемию;
                                                            1.3. гипо-/гиперкалиемию;
                                                            1.4. гипотермию,
                                                            1.5. напряженный пневмоторакс;
                                                            1.6. тампонаду сердца;
                                                            1.7. токсические воздействия;
                                                            1.8. тромбоэмболию;
                                                            1.9. гипогликемию;
                                                            1.10. травму.
                                                            2. **Оценить сердечную деятельность**:
                                                            2.1. При выявлении фибрилляции желудочков/желудочковой тахикардии (далее ‒ ФЖ/ЖТ) перейти к **протоколу «ФЖ/ЖТ»**;
                                                            2.2. При выявлении асистолии, электромеханической диссоциации – к **протоколу «Асистолия»**.
                                                            """)).buildDualBlockBlueGrayLowLevel(isTextExpanded: isTextExpanded3)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded3.toggle()
                                    }
                                }
                        }
                        
                        MyViewBuilder(title: Text("Протокол «ФЖ/ЖТ»"),
                                      content: Text("""
                                                    1. **Нанести несинхронизированный разряд дефибриллятора** (**200 Дж** бифазный и **360 Дж** монофазный дефибриллятор) **и сразу же возобновить СЛР**;
                                                    2. **Продолжать СЛР после первого разряда в течение 5 циклов** (30 : 2) около 2 минут;
                                                    3. **Определить ритм**:
                                                    4. **Если ФЖ/ЖТ** – **нанести очередной разряд дефибриллятора** (**второй и последующие разряды – максимально возможный или 360 Дж для бифазного дефибриллятора**),
                                                    5. **С этого момента обеспечить введение вазопрессора адреналина (эпинефрин) 0,1% раствор 1 мл (1 мг)** внутривенно болюсно **каждые 3-5 минут СЛР** мероприятий **без ограничения по дозе**;
                                                    6. **Если асистолия, электромеханическая диссоциация - перейти к протоколу «Асистолия»**;
                                                    7. **Продолжать СЛР после второго разряда в течение 5 циклов** (30 : 2) около 2 минут;
                                                    8. **Определить ритм**:
                                                    9. **Если ФЖ/ЖТ** – **нанести очередной разряд дефибриллятора (все последующие разряды – максимально возможный или 360 Дж для бифазного дефибриллятора**), **данная ФЖ/ЖТ считается резистентной к терапии**.
                                                    10. **С этого момента кроме введения вазопрессора (адреналина) необходимо использовать только одно из ниже перечисленных антиаритмических средств**:
                                                    
                                                    - **Амиодарон 300 мг** (2 ампулы) **внутривенно болюсно однократно** 5% раствор 6 мл. **При необходимости можно повторить** через 5 минут введение еще **150 мг амиодарона** 5% раствор 3 мл (1 ампула).
                                                    **Как только ФЖ устранена** – налаживают **поддерживающую инфузию амиодарона со скоростью 1 мг/мин** в течение первых **6 часов** (**360 мг за 6 часов**), а **затем 0,5 мг/мин до конца суток** (**540 мг за 18 часов**), при необходимости – дольше.
                                                    - **Лидокаин** (**при отсутствии амиодарона**) из расчета **1-1,5 мг/кг** (**2% раствор 3-6 мл**), при необходимости можно **повторить** из расчета **0,5 мг/кг до 2 дополнительных введений до суммарной дозы в течение первых 30 минут** из расчета **3 мг/кг** массы тела;
                                                    - **Прокаинамид (новокаинамид) 10% - 10 мл**.
                                                    
                                                    **Дополнительные меры по купированию ФЖ/ЖТ**:
                                                    1. **При наличии веретенообразной ЖТ (torsade de points)**, **подозрении на недостаток магния** (интенсивная диуретическая терапия в анамнезе) рассмотреть введение раствора **MgSO4 25% раствор 5-10 мл**, **50% раствор 2-4 мл внутривенноено струйно**;
                                                    2. **При наличии брадизависимой веретенообразной ЖТ наладить временную чрескожную/эндокардиальную стимуляцию желудочков**;
                                                    3. **При наличии непрерывно рецидивирующей полиморфной желудочковой тахикардии, которую можно квалифицировать как «электрический шторм» показано болюсное введение бета-блокаторов (метопролол 0,1% 5,0 мл.)**
                                                    """)).buildDualBlockBlueGrayLowLevel(isTextExpanded: isTextExpanded4)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded4.toggle()
                                }
                            }
                        MyViewBuilder(title: Text("Протокол «Асистолия»"),
                                      content: Text("""
                                                    4. **Если асистолия, электромеханическая диссоциация – обеспечить введение**:
                                                    - **Вазопрессора: адреналин 0,1% раствор 1 мл (1 мг)** внутривенно болюсно **каждые 3-5 минут СЛР** мероприятий **без ограничения по дозе**,
                                                    - **Атропин 0,1% раствор 1 мл** внутривенно болюсно, можно повторить **каждые 3-5 минут до 3 доз**;
                                                    5. **Если ФЖ/ЖТ - перейти к протоколу «ФЖ/ЖТ»**;
                                                    6. **При возможности обеспечить временную наружную/эндокардиальную стимуляцию**;
                                                    7. **Продолжать СЛР в течение 5 циклов (30 : 2) около 2 минут с оценкой ритма после каждых 5 циклов**.
                                                    
                                                    **Важно: При наличии любой гемодинамически значимой тахикардии (желудочковой, наджелудочковой, в том числе, и на фоне синдрома WPW) методом выбора является электрическая кардиоверсия. Длительность проведения СЛР не должна быть менее 30 мин от момента последнего эпизода асистолии**.
                                                    """)).buildDualBlockBlueGrayLowLevel(isTextExpanded: isTextExpanded5)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded5.toggle()
                                }
                            }
                        MyViewBuilder(title: Text("Диагностика, медикаментозная терапия и хирургическое лечение СН»"),
                                      content: Text("""
                                                    **Диагностика СН и консультации специалистов** должны осуществляться в соответствии с данным клиническим протоколом **в зависимости от уровня их проведения**: в условиях районных, межрайонных (при наличии необходимого оборудования и специалистов), областных и республиканских организаций здравоохранения.
                                                    
                                                    **Медикаментозная терапия СН** должна осуществляться всем пациентам в соответствии с данным клиническим протоколом **вне зависимости от уровня ее проведения**.
                                                    
                                                    **Хирургическое лечение СН** должно осуществляться в соответствии с данным клиническим протоколом **в зависимости от уровня его проведения**: в условиях областных (при наличии необходимого оборудования и специалистов) и республиканских организаций здравоохранения.
                                                    """)).buildDualBlockBlueGrayLowLevel(isTextExpanded: isTextExpanded6)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded6.toggle()
                                }
                            }
                    }
                    Spacer(minLength: 10)
                    VStack (spacing: 5) {
                    
                            NavigationLink (destination: Postanovlenie59Alg4P1View()) {
                                MyViewBuilder(title: Text("1"), content: Text("Амбулаторный этап")).buildBlue59NavigationText()
                            }
                   
                            NavigationLink (destination: Postanovlenie59Alg4P2View()) {
                                MyViewBuilder(title: Text("1"), content: Text("Стационарный этап")).buildBlue59NavigationText()
                            }
                     
                    Spacer(minLength: 10)
                        
                        MyViewBuilder(title: Text("""
                                                  ----
                                                  """),
                                      content: Text("""
                                                    Шкала стратификации риска тромбоэмболических осложнений CHA2DS2-VASc
                                                    """)).buildBlue591Text(isTextExpanded: isTextExpanded7)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded7.toggle()
                                }
                            }
                        if isTextExpanded7 {
                            
                            VStack (spacing: 1){
                                HStack (alignment: .bottom){
                                    ZStack {
                                        Text(" ")
                                            .padding(.horizontal, 10)
                                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                            .font(.footnote)
                                            .bold()
                                    }
                                    .frame(width: 40)
                                    Spacer()
                                    Text("""
                                    Фактор риска
                                    """)
                                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                                    .frame(maxWidth: 70)
                                    .font(.footnote)
                                    .bold()
                                    .padding(3)
                                    Spacer()
                                    Spacer()
                                    Text("""
                                    Баллы
                                    """)
                                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                    .frame(width: 50)
                                    .font(.footnote)
                                    .bold()
                                    .padding(3)
                                    
                                }
                                .background(Color.grayButton)
                                
                                
                                ForEach(Table59AG.getTable59Tahi11(), id: \.id) { name in
                                    MyViewBuilder59(title1: name.content1,title2: name.content2,title3: name.content3,title4: name.content4,title5: name.content5,title6: name.content6,title7: name.content7,title8: name.content8,title9: name.content9,title10: name.content10,title11: name.content11,title12: name.content12,title13: name.content13,title14: name.content14, title15: name.content15,title16: name.content16,title17: name.content17,title18: name.content18,title19: name.content19,title20: name.content20,title21: name.content21,title22: name.content22,title23: name.content23,title24: name.content24,title25: name.content25,title26: name.content26,title27: name.content27,title28: name.content28).buildTable59CHA2()
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded7.toggle()
                                            }
                                        }
                                }
                            }
                            
                            .background(Color.backtables)
                            .cornerRadius(10)
                            .overlay(RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                            )
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded7.toggle()
                                }
                            }
                             
                            MyViewBuilder(title: Text("""
                                                      ----
                                                      """),
                                          content: Text("""
                                                        **Использование шкалы CHA2DS2-VASc**
                                                        
                                                        **Антикоагулянтная терапия** для профилактики тромбоэмболии рекомендуется для всех пациентов с ФП ≥ 1 балла по шкале CHA2DS2-VASc, за исключением тех (как мужчины, так и женщины), которые имеют низкий риск (в возрасте <65 лет и только ФП), или при наличии противопоказаний.
                                                        **Выбор антикоагулянтной** терапии должен быть основан на абсолютном риске инсульта/ тромбоэмболии, кровотечений и клиническом преимуществе для данного пациента.
                                                        **CHA2DS2-VASc рекомендуется в качестве средства оценки риска инсульта в неклапанной ФП**.
                                                        **Терапия анитромбоцитарными препаратами**: комбинация аспирина и клопидогреля или, что менее эффективно, аспирин должна быть рассмотрена только в случае, если пациент отказывается от приема любого из возможных ОАК: и антагонистов витамина К и новых оральных антикоагулянтов, а также при невозможности приема оральных антикоагулянтов, которая не связана с геморрагическими осложнениями.
                                                        """)).buildGrayText()
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded7.toggle()
                                    }
                                }
                        }
                        
                        MyViewBuilder(title: Text("""
                                                  ----
                                                  """),
                                      content: Text("""
                                                    Шкала стратификации риска кровотечения HAS-BLED
                                                    """)).buildBlue591Text(isTextExpanded: isTextExpanded8)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded8.toggle()
                                }
                            }
                        if isTextExpanded8 {
                            
                            VStack (spacing: 1){
                                HStack (alignment: .bottom){
                                    ZStack {
                                        Text(" ")
                                            .padding(.horizontal, 10)
                                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                            .font(.footnote)
                                            .bold()
                                    }
                                    .frame(width: 40)
                                    Spacer()
                                    Text("""
                                    Клиническая характеристика
                                    """)
                                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                                    .frame(maxWidth: 70)
                                    .font(.footnote)
                                    .bold()
                                    .padding(3)
                                    Spacer()
                                    Spacer()
                                    Text("""
                                    Баллы
                                    """)
                                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                    .frame(width: 50)
                                    .font(.footnote)
                                    .bold()
                                    .padding(3)
                                    
                                }
                                .background(Color.grayButton)
                                
                                ForEach(Table59AG.getTable59Tahi12(), id: \.id) { name in
                                    MyViewBuilder59(title1: name.content1,title2: name.content2,title3: name.content3,title4: name.content4,title5: name.content5,title6: name.content6,title7: name.content7,title8: name.content8,title9: name.content9,title10: name.content10,title11: name.content11,title12: name.content12,title13: name.content13,title14: name.content14, title15: name.content15,title16: name.content16,title17: name.content17,title18: name.content18,title19: name.content19,title20: name.content20,title21: name.content21,title22: name.content22,title23: name.content23,title24: name.content24,title25: name.content25,title26: name.content26,title27: name.content27,title28: name.content28).buildTable59HAS()
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded8.toggle()
                                            }
                                        }
                                }
                            }
                            .background(Color.backtables)
                            .cornerRadius(10)
                            .overlay(RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                            )
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded8.toggle()
                                }
                            }
                            
                            MyViewBuilder(title: Text("""
                                                      ----
                                                      """),
                                          content: Text("""
                                                        **Использование шкалы HAS-BLED**
                                                        
                                                        Значение ≥ 3 баллов говорит о высоком риске кровотечения. Высокое значение балла по шкале HAS-BLED само по себе не является показанием к отмене или не назначению антикоагулянтов, а должно служить поиску и модификации управляемых факторов риска (гипертензия, использование НПВС, лабильные значения МНО). Требует осторожности и более частого контроля пациентов на терапии оральными антикоагулянтами.
                                                        """)).buildGrayText()
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded8.toggle()
                                    }
                                }
                        }
                        
                        MyViewBuilder(title: Text("""
                                                  ----
                                                  """),
                                      content: Text("""
                                                    Показания и противопоказания к выполнению ЧПЭхоКГ.
                                                    """)).buildBlue591Text(isTextExpanded: isTextExpanded9)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded9.toggle()
                                    if isTextExpanded9 == false {
                                        isTextExpanded10 = false
                                        isTextExpanded11 = false
                                    }
                                }
                            }
                        if isTextExpanded9 {
                            MyViewBuilder(title: Text("""
                                                      Показания к выполнению ЧПЭхоКГ
                                                      """),
                                          content: Text("""
                                                        **Показания к выполнению ЧПЭхоКГ при оказании помощи пациентам с нарушениями ритма сердца**:
                                                        1. Диагностический поиск источника тромбоэмболии при наличии Инсульта/ТИА ишемического генеза у пациента с ФП.
                                                        2. Исключение наличия тромбоза камер сердца у пациентов с эпизодом ФП длительностью более 48 часов и более или неизвестной давности, если избрана стратегия контроля ритма, подразумевающая кардиоверсию любым методом.
                                                        3. При подготовке пациента к РЧА по поводу ФП и другим интревеннционным вмешательствам внутри камер сердца.
                                                        4. интраоперационно для пункции межпредсердной перегородки.
                                                        5. интраоперационно для контроля манипуляции внутри камер сердца.
                                                        """)).buildDualBlockBlueGrayLowLevel(isTextExpanded: isTextExpanded10)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded10.toggle()
                                    }
                                }
                            MyViewBuilder(title: Text("""
                                                      Противопоказания к выполнению ЧПЭхоКГ
                                                      """),
                                          content: Text("""
                                                        **Абсолютные**:
                                                        1. Спазм пищевода.
                                                        2. Стриктуры пищевода.
                                                        3. Разрыв пищевода.
                                                        4. Перфорации пищевода.
                                                        5. Дивертикулы пищевода
                                                        6. общее тяжелое состояние
                                                        7. значительное угнетение дыхательной функции
                                                        
                                                        **Относительные**:
                                                        1. Большая диафрагмальная грыжа
                                                        2. Атлантоаксиальное заболевание и тяжелые обострения артрита шеи: ЧПЭхоКГ никогда не следует выполнять, если есть какие-либо вопросы об устойчивости шейного отдела позвоночника.
                                                        3. Пациенты, которые получали обширные излучения средостения.
                                                        4. Верхние желудочно-кишечные кровотечения, выраженная дисфагия и одинофагия.
                                                        """)).buildDualBlockBlueGrayLowLevel(isTextExpanded: isTextExpanded11)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded11.toggle()
                                    }
                                }
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
        .navigationBarTitle("",displayMode: .inline)
        .toolbar {
            ToolbarItem(placement: .principal) {
                VStack {
                    Text("Постановление № 59")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("""
                    «Диагностика и лечение тахикардии»
                    """)
                    .font(.caption2)
                    .foregroundStyle(Color.toolBar)
                }
            }
            
        }
    }
    
}
#Preview {
    Postanovlenie59Alg4View()
}

