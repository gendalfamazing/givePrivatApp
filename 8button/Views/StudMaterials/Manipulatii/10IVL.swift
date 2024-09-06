//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct _0IVL: View {
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
    @State private var isTextExpanded9 = true
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
                                            **Введение в ИВЛ:**
                                            """
                                           )).buildGrayTextCenter()
                    .multilineTextAlignment(.center)
                
                //                    ZStack {
                //                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                //                        VStack (spacing: 1) {
               
                MyViewBuilder(title: Text("Общие положения"),
                              content: Text("""
                                                Это самая сложная тема в анестезиологии/реанимации и естественно в скорой помощи, условия которой имеют определенные нюансы и накладывают некоторые ограничения.

                                                **Признаки острой дыхательной недостаточности**:
                                                1. Одышка, тахи- или брадипноэ
                                                2. Изменение цвета кожных покровов:
                                                бледность-акроцианоз-цианоз или другие оттенки (при отравлении угарным газом – розовый оттенок или синевато-серый)
                                                3. SpO2 < 90% при дыхании атмосферным воздухом

                                                **Клинические признаки неэффективной спонтанной вентиляции**:
                                                – тахипноэ (ЧД > 35 в мин)
                                                – брадипноэ (ЧД < 10 в мин)
                                                – акроцианоз
                                                – апноэ

                                                **По этиологии выделяют виды ОДН**:
                                                1. Центрального генеза (ЧМТ, повышение ВЧД и отёк мозга любой этиологии, интоксикации, медикаментозное воздействие на головной мозг и т.д.)
                                                2. Нарушение нейро-мышечной передачи (столбняк, миастении, кахексия, травмы спинного мозга, введение миорелаксантов)
                                                3. Нарушение целостности дыхательного аппарата (травмы грудной клетки, множественные переломы рёбер, разрыв диафрагмы, пневмо-, гидро-, гемоторакс)
                                                4. Обструктивная (ларинго-, бронхо-, бронхиолоспазм (астма), инородное тело в дыхательных путях, нарушение дренажной функции бронхов и т.д.)
                                                5. Рестриктивная (полисегментарная пневмония, ОРДС, синдром Мендельсона, отёк лёгких любой этиологии).
                                                6. Перфузионная (ТЭЛА, гиповолемия)
                                                7. Смешанная

                                                **Вне зависимости от причины тактика на догоспитальном этапе не будет меняться**: это устранение основной причины + коррекция гипоксемии оксигенотерапией, ИВЛ/ВВЛ.
                                                """
                                           )).buildDualBlockBlueGray(isTextExpanded: isTextExpanded2)
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded2.toggle()
                        }
                    }
                MyViewBuilder(title: Text("Краткая анатомия и физиология дыхания"),
                              content: Text("""
                                                В атмосферном воздухе **21%** кислорода.
                                                
                                                **Носовые ходы – Носоглотка – Ротоглотка – Гортаноглотка – Гортань** (здесь воздух увлажняется и согревается)
                                                
                                                **Трахея – Бронхи – Бронхиолы** (проводящая часть нижних дыхательных путей, иногда сюда включают гортань)
                                                
                                                **Дыхательные бронхиолы – альвеолярные ходы – альвеолы** (дыхательная часть нижних дыхательных путей, где происходит газообмен)

                                                Медицинский кислород имеет влажность около 0,009%. Недостаток увлажнения дыхательной смеси приведёт повышению нагрузки на бронхиальные железы, избыточной потере воды – до 800 мл и энергии - до 500 ккал в сутки. При этом в отличие от нормальной физиологической ситуации, когда согревание и увлажнение вдыхаемого воздуха происходит в полости носа, - у интубированного или трахеостомированного пациента испарение происходит со слизистой оболочки трахеи и бронхов, что приводит к повышению вязкости бронхиального секрета. При достижении критического уровня вязкости цилиарные клетки оказываются не в состоянии удалять секрет из дыхательных путей. После этого цилиарные клетки утрачивают реснички. Очевидно, что нарушение эвакуации мокроты приводит к росту частоты воспалительных осложнений. Повреждение реснитчатого эпителия выявляются уже через 10 минут вентиляции сухим газом. Процесс восстановления ресничек длительный и энергозатратный и занимает 2-3 недели после восстановления влажности и нормальной температуры дыхательной смеси. Важно отметить, что после того, как резервы увлажнения с поверхности трахеи и бронхов исчерпаны, и неувлажненный воздух достигает альвеол, начинается испарение с поверхности альвеол и происходит повреждение сурфактанта (что приведет к спадению альвеол).
                                                Вязкая мокрота налипает на стенки интубационной или трахеостомической трубки, сужая её просвет вплоть до полной обтурации.
                                                
                                                Таким образом, идеальное решение задачи кондиционирования дыхательной смеси выглядит так:
                                                **В ТРАХЕЮ ПАЦИЕНТА ДОЛЖНА ПОСТУПАТЬ ОЧИЩЕННАЯ ДЫХАТЕЛЬНАЯ СМЕСЬ 100% ВЛАЖНОСТИ НАГРЕТАЯ ДО 37°С**.
                                                """
                                           )).buildDualBlockBlueGray(isTextExpanded: isTextExpanded3)
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded3.toggle()
                        }
                    }
                MyViewBuilder(title: Text("Когда используется 100% кислород"),
                              content: Text("""
                                                – **премедикация перед кардиоверсией**
                                                – **кардиогенный шок**
                                                – **отёк лёгких**
                                                – **стеноз гортани**
                                                – **инородное тело ВДП** (с понижением концентрации после устранения обструкции)
                                                – **эпилептический статус**
                                                – **ожоговый шок/ингаляционный ожог/электроожог**
                                                – **странгуляционная асфиксия**
                                                
                                                **Во всех остальных случаях достаточно 50-60% концентрации**. Концентрация вдыхаемого кислорода обозначается как **FiO2**.
                                                """
                                           )).buildDualBlockBlueGray(isTextExpanded: isTextExpanded4)
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded4.toggle()
                        }
                    }
                MyViewBuilder(title: Text("Механика вдоха и выдоха"),
                              content: Text("""
                                                **Фазы**:
                                                **Время вдоха** (Inspiratory flow time)
                                                **Инспираторная пауза** (Inspiratory pause)
                                                **Время выдоха** (Expiratory flow time)
                                                **Экспираторная пауза** (Expiratory pause)

                                                **Вдох** = время вдоха + инспираторная пауза
                                                **Выдох** = время выдоха + экспираторная пауза

                                                **Зачем это нужно знать?** 
                                                При управлении аппаратом ИВЛ, мы обязаны сообщить ему сколько времени, по нашему мнению, может длиться экспираторная пауза. Если время экспираторной паузы истекло, а вдох не начался, аппарат ИВЛ объявляет тревогу (alarm) и начинает спасать пациента, поскольку считает, что произошло апноэ (apnoe). Включается опция Apnoe ventilation.

                                                **Давление в дыхательных путях**:
                                                Любой поток создается разностью давлений или градиентом (gradient). Например, если открыть кислородный баллон возникнет градиент, и кислород с шумом устремится наружу. Главной движущей силой, позволяющей сделать вдох, является разность давлений на входе в дыхательные пути (PAO - pressure airway opening) и давлением в том месте, где дыхательные пути заканчиваются – то есть в альвеолах (PALV). Учёные, изучающие дыхание, договорись принять атмосферное давление за 0. Если давление ниже атмосферного, – отрицательное (negative), а если выше, – положительное (positive).

                                                Когда мы дышим самостоятельно, вдыхая, создается отрицательное давление в дыхательных путях, и поток воздуха идет в легкие, давление нарастает и на высоте вдоха становится положительным. Затем следует выдох и по градиенту давлений воздух выходит из легких в окружающее пространство. Таким образом, самостоятельное дыхание, – это NPV (negative pressure ventilation) поскольку на вдохе давление воздуха в дыхательных путях ниже атмосферного. Вдох – это активный процесс, требующий затрат энергии, выдох может быть как активным, так и пассивным.

                                                **Обозначения**:
                                                **Pmax** - пиковое давление в дыхательных путях – **16-25 mbar**
                                                **I:E** соотношение вдоха к выдоху – **1:1,5-2** (у пожилых больных 1:1,5; у детей 1 : 2,5— 1:3)
                                                **Ppause** – давление во время инспираторной паузы
                                                **Pmean** – среднее давление в дыхательных путях
                                                """
                                           )).buildDualBlockBlueGray(isTextExpanded: isTextExpanded5)
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded5.toggle()
                        }
                    }
                MyViewBuilder(title: Text("Что такое ПДКВ (PEEP)"),
                              content: Text("""
                                                **ПДКВ** – положительное давление конца выдоха (**PEEP** - positive end expiratory pressure), было придумано для борьбы с ЭЗДП (экспираторное закрытие дыхательных путей) по-английски Air trapping (дословно – воздушная ловушка). У пациентов с **ХОБЛ** (хроническая обструктивная болезнь легких, или **COPD** – chronic obstructive pulmonary disease, просвет бронхов уменьшается за счет отека слизистой оболочки. При выдохе мышечное усилие дыхательной мускулатуры через ткань легких передается на внешнюю стенку бронха, ещё больше уменьшая его просвет. Часть бронхиол, не имеющих каркаса из хрящевых полуколец, пережимается полностью. Воздух не выдыхается, а запирается в легких, как ловушке (происходит Air trapping). Последствия – нарушения газообмена и перерастяжение (hyperinflation) альвеол.

                                                **АутоПДКВ** (AutoPEEP Intrinsic PEEP) возникает, когда настройки аппарата ИВЛ (частота дыханий, объём и длительность вдоха) не соответствуют возможностям пациента. В этом случае пациент до начала нового вдоха не успевает выдохнуть весь воздух предыдущего вдоха. Соответственно давление в конце выдоха (end expiratory pressure) оказывается значительно более positive, чем хотелось бы. Когда сформировалось преставление об АутоПДКВ (Auto PEEP, Intrinsic PEEP или iPEEP), договорились под понятием PEEP понимать то давление, которое создает в конце выдоха аппарат ИВЛ, а для обозначения суммарного ПДКВ введен термин Total PEEP.

                                                **Total PEEP** = AutoPEEP + PEEP

                                                **PEEP** – это опция, которая встраивается в различные режимы ИВЛ. ПДКВ (PEEP) измеряют в сантиметрах водного столба (см H2O) и в миллибарах (mbar или мбар). 1 миллибар = 0,9806379 см водного столба. В норме (раньше) 3-5 mbar. Сейчас можно 8-10 mbar у пациентов с нормальными легкими.
                                                """
                                           )).buildDualBlockBlueGray(isTextExpanded: isTextExpanded6)
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded6.toggle()
                        }
                    }
                
                    VStack  {
                        MyViewBuilder(title: Text("Проведение"),
                                      content: Text("""
                                        Легочные объёмы
                                        """)).buildBlue592Text(isTextExpanded: isTextExpanded7)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded7.toggle()
                                }
                            }
                        if isTextExpanded7{
                            LazyVStack (spacing:1){
                                Image("ivl1")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Rectangle())
                                    .cornerRadius(10)
                                    .overlay(RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                    )
                                    .padding(10)
                                MyViewBuilder(title: Text(""),
                                              content: Text("""
                                        **ДО** — дыхательный объём (VT – Tidal Volume) — это объем воздуха, поступающий в легкие и удаляемый из них за один дыхательный цикл.
                                        Норма 6-9 мл/кг, но лучше 5-7 мл/кг

                                        **МОД** — объем воздуха, проходящий через легкие за 1 минуту.
                                        **МОД** = ДО * ЧДД

                                        **РОВд** – резервный объём вдоха (IRV – Inspiratory Reserve Volume) – дополнительный объём, который можно вдохнуть по окончании спокойного вдоха. Составляет примерно 100-150 % от ДО.

                                        **РОВыд** – резервный объём выдоха (EVR – Expiratory Reserve Volume ) –дополнительный объём который можно выдохнуть после окончания спокойного выдоха. Составляет примерно 100 – 120 % от ДО.

                                        **ЖЕЛ** – Жизненная емкость легких = ДО + РОВд + РОВыд

                                        **Общая емкость легких**ivl2 = ЖЕЛ + Остаточный объем
                                        """)).buildGrayInHiddenText()
                                    
                                
                            }
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded7.toggle()
                                }
                            }
                        }
                    }
                    .background(Color.grayButton)
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                    )
                
                    VStack  {
                        MyViewBuilder(title: Text("Проведение"),
                                      content: Text("""
                                        Устройство АМБУ
                                        """)).buildBlue592Text(isTextExpanded: isTextExpanded8)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded8.toggle()
                                }
                            }
                        if isTextExpanded8{
                            LazyVStack (spacing:1){
                                
                                ImagePDF(image: Image("ivl2"), title: "").buildECGPad(isTextExpanded: isTextExpanded9)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            UIDevice.current.userInterfaceIdiom == .pad ? isTextExpanded8.toggle() : isTextExpanded9.toggle()
                                        }
                                    })
                                    .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded9 ? 540 : 540) : (isTextExpanded9 ? 250 : 500))
                                    .cornerRadius(10)
                                    .padding(5)
                                MyViewBuilder(title: Text(""),
                                              content: Text("""
                                        **Размеры**:
                                        **Взрослый (Adult)** (объём 1600 ml) - >30 кг или старше 10 лет
                                        **Педиатрический (Pediatric)** (объём 500 ml) - от 10 до 30 кг (1 год - 10 лет)
                                        **Неонатальный (Neonate)** (объём 240 ml) до 10 кг (< 1 года)
                                        """)).buildGrayInHiddenText()
                                    
                                
                            }
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded8.toggle()
                                }
                            }
                        }
                    }
                    .background(Color.grayButton)
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                    )
                
                MyViewBuilder(title: Text("Факты"),
                              content: Text("""
                                            **Условия применения и режимы ИВЛ:**
                                            """
                                           )).buildGrayTextCenter()
                    .multilineTextAlignment(.center)
                
                        MyViewBuilder(title: Text("Условия применения ИВЛ/ВВЛ"),
                                      content: Text("""
                                        **Можно выделить 3 категории пациентов**:
                                        1. **Пациенты в сознании**
                                        2. **Пациенты без сознания**
                                        3. **Пациенты в состоянии клинической смерти**
                                        Рассмотрим каждую категорию по отдельности.

                                        1. **Пациенты в сознании**
                                        **ВВЛ – SIPPV / PSV**
                                        
                                        **ИВЛ по показаниям, при возможности адекватной медикаментозной поддержки** (миорелаксант короткого действия – дитилин, анестезия – пропофол, седоанальгезия – диазепам+фентанил или диазепам + морфин)

                                        2. **Пациенты без сознания**
                                        **ШКГ 3 балла** – установка воздуховода/ЛМ/ЭТТ без медикаментозной поддержки
                                        **ШКГ > 4 баллов** – перед установкой ЛМ/ЭТТ с целью подавления рвотного рефлекса и снижения реакции на введение трубки:
                                        **Атропин 0,5 - 1 мг в/венно + Диазепам 10 - 20 мг в/венно + Фентанил 0,05 - 0,1 мг в/венно или Атропин 0,5 - 1 мг в/венно + Пропофол 2 мг/кг в/венно**

                                        3. **Пациенты в состоянии клинической смерти**
                                        **ДО ~500 мл или МОВ 5-7 л/мин** (зависит от утечек – масочная ИВЛ/ЛМ/ЭТТ), ЧД = 10 в минуту, PPEAK 25-30 mbar и PEEP 0-5 mbar
                                        
                                        **Интубация трахеи проводится только при наличии должного навыка**. Допустимо 3 попытки, каждая не должна превышать 10 секунд. Между попытками проводится масочная вентиляция с сохранением соотношения ЗМС и ИВЛ 30:2. После герметизации дыхательных путей компрессии и вдохи разобщены: ЗМС постоянно с частотой 100-120 в мин., ИВЛ 10 в мин.
                                        
                                        **Успешная СЛР? Продолжение ИВЛ/ВВЛ (ДО 6 - 7 мл/кг, ЧД 14 - 16 в 1 мин, FiО2 - 50%)**
                                        """)).buildDualBlockBlueGray(isTextExpanded: isTextExpanded10)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded10.toggle()
                                }
                            }
                MyViewBuilder(title: Text("Режимы ИВЛ"),
                              content: Text("""
                                **IPPV** (Intermittent Positive Pressure Ventilation) — вентиляция с перемежающимся положительным давлением — режим контролируемой принудительной вентиляции (Control Mandatory Ventilation). Почему Control? Управлять можно объемом (V - volume), потоком (F - flow), давлением (P - pressure). В режиме IPPV аппарат управляет объемом VT (Volume Control Ventilation). Вдох происходит после срабатывания триггера по времени (Time trigger). После достижения максимального давления (pMax) аппарат поддерживает pMax постоянно до окончания времени вдоха и затем переключается на выдох. Если в процессе вдоха достигается максимальное давление (pMax), то установленный дыхательный объем (VT) может подаваться не полностью.
                                **Применение**: при клинической смерти, апноэ, диспноэ на фоне медикаментозной поддержки.

                                **SIPPV** (Synchronized Intermittent Positive Pressure Ventilation) — вентиляция с перемежающимся положительным давлением, синхронизируемая с самостоятельном дыханием больного. Относится к Assist Control (контролируемая поддержка). Буква S означает, что помимо Time trigger, есть Patient trigger, отвечающий на дыхательную попытку пациента. Для синхронизации во время всей фазы выдоха триггер активен, он позволяет пациенту инициировать вдох. Таким образом, пациент может увеличивать частоту дыхания и, тем самым, минутный объем дыхания (МОД) в соответствии со своими потребностями. За счет заданной низкой частоты дыхания пациент может самостоятельно инициировать принудительные такты дыхания.

                                **PSV** (Pressure support ventilation) – В режиме «PSV» аппарат ИВЛ в ответ на дыхательную попытку пациента поднимает давление в дыхательном контуре до предписанного уровня, поддерживает давление вдоха на заданном уровне в течение всего вдоха и переключается на выдох при уменьшении потока до установленного уровня. В режиме «PSV» все вдохи спонтанные (начаты и завершены пациентом).
                                **Применение**: ВВЛ при различных клинических состояниях, однако в случаях брадипноэ предпочтительнее выбрать SIPPV.

                                **CPAP** (Continuous Positive Airway Pressure) — режим постоянного положительного давления в дыхательных путях. Относится к неинвазивной вентиляции (NIV). При CPAP постоянно поддерживается положительное давление в дыхательных путях. В комбинации с ASB (Assisted spontaneous breathing) – спонтанным дыханием с поддержкой давлением, возможна поддержка давлением при вдохе недостаточного или ослабленного спонтанного дыхания. Режим предназначен для ИВЛ через маску без интубации – пациент может продолжать спонтанно дышать, а аппарат поддерживает ПДКВ и помогает давлением при вдохе.

                                **Настройки**:
                                – **PEEP**: положительное давление в конце выдоха (ПДКВ) в мбар
                                – **pМакс**. максимальное инспираторное давление в мбар
                                – **Δ pASB**: поддержка давлением (относительно настроенного ПДКВ)

                                **Применение**: ХОБЛ, астма, отек легких.

                                **Demand mode** – режим оксигенотерапии для пациентов со спонтанным дыханием через маску или носовую канюлю. Режим позволяет сэкономить кислород, так как он подается исключительно при вдохе.
                                **Применение**: преоксигенация вместо использования КИ-33, оксигенотерапия.
                                """)).buildDualBlockBlueGray(isTextExpanded: isTextExpanded11)
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded11.toggle()
                        }
                    }
                MyViewBuilder(title: Text("Факты"),
                              content: Text("""
                                            **ИВЛ при некоторых клинических состояниях:**
                                            """
                                           )).buildGrayTextCenter()
                    .multilineTextAlignment(.center)
                MyViewBuilder(title: Text("При отёке лёгких"),
                              content: Text("""
                                **Задачи ИВЛ**:
                                – сохранение функциональной способности относительно «здоровых» непоражённых зон лёгких
                                – вовлечение в газообмен спавшихся, но ещё способных к расправлению участков лёгочной ткани
                                – поддержание потенциально вентилируемых зон лёгких в «открытом» состоянии, предупреждение их экспираторного коллапса
                                – мониторинг границы положительного влияния ИВЛ на сердечный выброс

                                **Параметры ИВЛ при САД < 60 мм.рт.ст.**:
                                ПДКВ 5-7 см.вод.ст. и одновременно производить инфузию допамина со скоростью 8—10 мкг/кг в минуту, ЧД 16-18, FiO2 – 1,0, ДО 800—900 (6-8 мл/кг), I:E от 1:2 до 1:3.

                                **Параметры ИВЛ при САД > 60 мм.рт.ст.**:
                                ПДКВ 8-10 см.вод.ст., ЧД 16-18, FiO2 – 1,0, ДО 800—900 (6-8 мл/кг), I:E от 1:2 до 1:3.
                                """)).buildDualBlockBlueGray(isTextExpanded: isTextExpanded12)
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded12.toggle()
                        }
                    }
                MyViewBuilder(title: Text("При ЧМТ"),
                              content: Text("""
                                **Задачи ИВЛ**:
                                – поддержание достаточного МОД при нарушении центрального контроля
                                – поддержание нормо или умеренной гипервентиляции (SpO2 не менее 92-95%)
                                – поддержание умеренной гипокапнии PaCO2 – 30-35 мм.рт.ст.

                                **Параметры ИВЛ**:
                                FiO2 – 0,5, ДО 8-9 мл/кг, отношение I:E – 1:2-2,5, PPEAK – не более 25-28 см.вод.ст., PEEP – не более 5 см.вод.ст. PMEAN – не более 10-12 cм.вод.ст.
                                """)).buildDualBlockBlueGray(isTextExpanded: isTextExpanded13)
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded13.toggle()
                        }
                    }
                MyViewBuilder(title: Text("При травме грудной клетки"),
                              content: Text("""
                                **Задачи ИВЛ**:
                                – поддержание внешней вентиляции и оксигенации
                                – профилактика баротравмы как фактора провоцирующего пневмоторакс
                                – пневматическая стабилизация грудной клетки,ограничение её излишней подвижности

                                **Параметры ИВЛ**:
                                FiO2 – 0,5-0,6, 
                                ДО не более 10 мл/кг,
                                PPEAK – не более 23-26 см.вод.ст.,
                                PEEP – не более 5 см.вод.ст.
                                """)).buildDualBlockBlueGray(isTextExpanded: isTextExpanded14)
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded14.toggle()
                        }
                    }
                MyViewBuilder(title: Text("При обострении астмы"),
                              content: Text("""
                                **Задачи ИВЛ**:
                                – обеспечение адекватного выдоха
                                – должны быть приняты меры по диагностике и компенсации внутреннего PEEP
                                – повышение давления вдоха для преодоления обструкции дыхательных путей

                                **Параметры ИВЛ**:
                                FiO2 – 0,6-0,8,
                                PPEAK – 40-45 см.вод.ст.,
                                PPAUSE – до 30 см.вод.ст.,
                                PEEP – 0,
                                ДО 12-15 мл/кг,
                                отношение I:E – 1: 2,5-3,5.
                                """)).buildDualBlockBlueGray(isTextExpanded: isTextExpanded15)
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded15.toggle()
                        }
                    }
                MyViewBuilder(title: Text("При гемморагическом, гиповолемическом, септическом шоке"),
                              content: Text("""
                                **Задачи ИВЛ**:
                                – применение ИВЛ при выраженной гипоксии, обеспечение адекватной вентиляции и SpO2
                                – по возможности сохранение спонтанного дыхания и применение вспомогательных режимов ИВЛ
                                – контроль за отрицательным влиянием ИВЛ на гемодинамику и сердечный выброс

                                **Параметры ИВЛ**:
                                FiO2 – 0,6,
                                PPEAK – 13-16 см.вод.ст.,
                                ДО – 8-10 мл/кг,
                                PEEP – 2-3 см.вод.ст.,
                                отношение I:E – 1:1-2.
                                """)).buildDualBlockBlueGray(isTextExpanded: isTextExpanded16)
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded16.toggle()
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
                    «ИВЛ»
                    """)
                    .font(.caption2)
                    .foregroundStyle(Color.toolBar)
                }
            }
            
        }
    }
    
}
#Preview {
    _0IVL()
}


