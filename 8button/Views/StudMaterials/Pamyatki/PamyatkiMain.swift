//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct PamyatkiMain: View {
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
                VStack (alignment: .leading, spacing: 5) {
                    VStack (alignment: .leading, spacing: 1){
                        Text("""
                            Основное:
                            """)
                            .font(.footnote)
                            .bold()
                            .padding(.leading, 10)
                            .opacity(0.5)
                    }
                    
                            NavigationLink (destination: PamyatkiMedSortirovka()) {
                                MyViewBuilder(title: Text("01"), content: Text("Медицинская сортировка")).buildTitleBlueText()
                            }
                    
                    
                            NavigationLink (destination: PamyatkiTaktikaSMP()) {
                                MyViewBuilder(title: Text("02"), content: Text("Тактика выездных бригад СМП на догоспитальном этапе")).buildTitleBlueText()
                            }
                     
                    
                            NavigationLink (destination: PamyatkiAvarContact()) {
                                MyViewBuilder(title: Text("03"), content: Text("Действия при аварийных контактах с биологическим материалом")).buildTitleBlueText()
                            }
                     
                    
                }
                .padding(.horizontal, 10)
                
                VStack (alignment: .leading, spacing:5) {
                    VStack (alignment: .leading, spacing: 1){
                        Text("""
                            Дополнительно:
                            """)
                            .font(.footnote)
                            .bold()
                            .padding(.leading, 10)
                            .opacity(0.5)
                    }
                    MyViewBuilder(title: Text("Принудительная госпитализация в психиатрический стационар"),
                                  content: Text("""
                                            **Госпитализации в психиатрический стационар без согласия пациента или его законного представителя допускается, если его обследование и лечение возможны только в условиях стационара, а психическое расстройство обусловливает:**
                                            – его непосредственную опасность для себя или окружающих;
                                            – его беспомощность, то есть неспособность самостоятельно удовлетворять основные жизненные потребности (вследствие психического заболевания);
                                            – существенный вред его здоровью вследствие ухудшения психического состояния, если он будет оставлен без психиатрической помощи.
                                            
                                            **Непосредственная опасность для себя и (или) окружающих может быть обусловлена:**
                                            1. **неправильным поведением вследствие психического состояния**:
                                            – **психомоторное возбуждение** (двигательным беспокойством разной степени выраженности, от суетливости до разрушительных действий, часто сопровождающееся речевым возбуждением – многоречивость, выкрики фраз, слов, отдельных звуков);
                                            – **галлюцинации** (особенно императивные – «голоса» приказывают совершать поступки);
                                            – **бред** (бред преследования – убежденность в том, что некие личности так или иначе следуют за больным со стремлением причинить ему вред; бред величия – значительная переоценка больным своего статуса в обществе, своих психических и физических возможностей; бред самообвинения)
                                            – **синдром психического автоматизма** (утрата контроля над мыслями, псевдогаллюцинации, с убежденностью, что они вызваны воздействием извне, убежденность больных в том, что совершаемые ими движения или поступки происходят под воздействием внешней силы)
                                            – **синдромы расстроенного сознания** (онейроид – помрачение сознания с наплывом фантастических сноподобных псевдогаллюцинаций; делирий – внезапное и обратимая неспособность сосредоточить внимание, дезориентация, сумеречное состояние сознания – внезапная и кратковременная утрата ясности сознания с полной отрешенностью от окружающего, происходит дезориентировка, прежде всего, в собственной личности)
                                            – **патологическая импульсивность** (внезапно возникающие стремления к совершению какого-либо действия, овладевающие сознанием, рассудком и подчиняющие себе поведение больного);
                                            – **тяжелые дисфории** (тоска, злоба, чувство отчаяния и безысходности, а также вспышки ярости)
                                            2. **систематизированными бредовыми синдромами, если они определяют вероятность общественно-опасного деяния пациентов;**
                                            3. **депрессивными состояниями, если они сопровождаются суицидальными тенденциями;**
                                            4. **маниакальными и гипоманиакальными состояниями, вызывающими нарушения общественного порядка или агрессивные проявления в отношении окружающих;**
                                            5. **психопатоподобными синдромами при психических заболеваниях с патологией влечений и повышенной поведенческой активностью;**
                                            6. **состояниями глубокого психического дефекта, приводящими к психической беспомощности, гигиенической и социальной запущенности, бродяжничеству;**
                                            7. **острые интоксикационные психозы;**
                                            8. **психотические варианты абстинентного синдрома.**
                                            
                                            **При необходимости могут быть применены меры физического стеснения:** фиксация в четырех точках (лодыжки и запястья). Оптимально использовать ремни или широкие полотенца, а не бинты, поскольку имеется высокая опасность пережатия сосудов на конечностях.
                                            
                                            **Сотрудники органов внутренних дел обязаны оказывать содействие медицинским работникам при осуществлении принудительной госпитализации и лечения и обеспечивать безопасные условия для доступа к госпитализируемому пациенту и его осмотра в части предупреждения совершения таким пациентом суицидальных действий (бездействия) или общественно опасных действий в отношении медицинских работников. (ст. 37 Закона РБ «О психиатрической помощи»)**
                                            """)).buildDualBlockBlueGray(isTextExpanded: isTextExpanded1)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded1.toggle()
                            }
                        }
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        VStack  {
                            MyViewBuilder(title: Text(""),
                                          content: Text("""
                                            Патологические типы дыхания
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
                                                    **Дыхание Куссмауля**
                                                    Глубокое, редкое, шумное дыхание с усиленным выдохом.
                                                    **Возможные причины**: диабетическая кома (диабетический кетоацидоз), ОПН, метаболический ацидоз, печеночная кома, отравлением спиртами.
                                                    
                                                    **Дыхание Биота**
                                                    Дыхательные движения с постоянной амплитудой, внезапно прерывающиеся периодами апноэ до 30 сек.
                                                    **Возможные причины**: поражение головного мозга (особенно продолговатого), повышение внутричерепного давления, шоковые состояния, менингит, энцефалит.
                                                    
                                                    **Дыхание Чейн-Стокса**
                                                    Нарастание амплитуды дыхания с последующим ее снижением, после чего следует период апноэ (до 25-60 сек.), затем цикл повторяется.
                                                    **Возможные причины:** гипоксия во сне, отравления, уремия, кровоизлияния в головной мозг, различные травмы.
                                                    """)).buildGrayInHiddenText()
                                    
                                    Image("pamyatka1")
                                        .resizable()
                                        .scaledToFit()
                                        .clipShape(Rectangle())
                                        .cornerRadius(10)
                                        .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                        .padding(5)
                                }
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded2.toggle()
                                    }
                                }
                            }
                        }
                    }
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        VStack  {
                            MyViewBuilder(title: Text("Определение площади ожогов у детей"),
                                          content: Text("""
                                            Определение площади ожогов у детей
                                            """)).buildBlue59Text(isTextExpanded: isTextExpanded3)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded3.toggle()
                                    }
                                }
                            if isTextExpanded3{
                                VStack (spacing:1){
                                    MyViewBuilder(title: Text(""),
                                                  content: Text("""
                                            У детей до 15 лет применяется таблица Ланда-Браудера (для обширных повреждений) и правило "ладони" (для локальных повреждений) – площадь ладони пациента составляет 1% от поверхности его тела.
                                            """)).buildGrayInHiddenText()
                                    
                                    Image("pamyatka2")
                                        .resizable()
                                        .scaledToFit()
                                        .clipShape(Rectangle())
                                        .cornerRadius(10)
                                        .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                        .padding(5)
                                }
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded3.toggle()
                                    }
                                }
                            }
                        }
                    }
                            MyViewBuilder(title: Text(""),
                                          content: Text("""
                                            Размеры перифиреческих катетеров
                                            """)).buildBlue591Text(isTextExpanded: isTextExpanded4)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded4.toggle()
                                    }
                                }
                            if isTextExpanded4{
                                VStack {
                                    Image("pamyatka3")
                                        .resizable()
                                        .scaledToFit()
                                        .clipShape(Rectangle())
                                        .cornerRadius(10)
                                        .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                }
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded4.toggle()
                                    }
                                }
                            }
                        
                    MyViewBuilder(title: Text(""),
                                  content: Text("""
                                            Причины и характеристика болей в грудной клетке
                                            """)).buildBlue591Text(isTextExpanded: isTextExpanded5)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded5.toggle()
                            }
                        }
                    if isTextExpanded5{
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                            VStack  {
                                MyViewBuilder(title: Text(""),
                                              content: Text("""
                                                Сердечно-сосудистая система
                                                """)).buildBlue591TextLowLevel(isTextExpanded: isTextExpanded6)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded6.toggle()
                                        }
                                    }
                                if isTextExpanded6{
                                    VStack (spacing: 1){
                                        ForEach(TablePamyatki.getTablePamyatkaSSS(), id: \.id) { name in
                                            MyViewBuilder59(title1: name.content1,title2: name.content2,title3: name.content3,title4: name.content4,title5: name.content5,title6: name.content6,title7: name.content7,title8: name.content8,title9: name.content9,title10: name.content10,title11: name.content11,title12: name.content12,title13: name.content13,title14: name.content14, title15: name.content15,title16: name.content16,title17: name.content17,title18: name.content18,title19: name.content19,title20: name.content20,title21: name.content21,title22: name.content22,title23: name.content23,title24: name.content24,title25: name.content25,title26: name.content26,title27: name.content27,title28: name.content28).buildTablePamyatka1()
                                        }
                                    }
                                    .cornerRadius(10)
                                    //                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded6.toggle()
                                        }
                                    }
                                }
                            }
                        }
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                            VStack  {
                                MyViewBuilder(title: Text(""),
                                              content: Text("""
                                                Легочные причины
                                                """)).buildBlue591TextLowLevel(isTextExpanded: isTextExpanded7)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded7.toggle()
                                        }
                                    }
                                if isTextExpanded7{
                                    VStack (spacing: 1){
                                        ForEach(TablePamyatki.getTablePamyatkaLungs(), id: \.id) { name in
                                            MyViewBuilder59(title1: name.content1,title2: name.content2,title3: name.content3,title4: name.content4,title5: name.content5,title6: name.content6,title7: name.content7,title8: name.content8,title9: name.content9,title10: name.content10,title11: name.content11,title12: name.content12,title13: name.content13,title14: name.content14, title15: name.content15,title16: name.content16,title17: name.content17,title18: name.content18,title19: name.content19,title20: name.content20,title21: name.content21,title22: name.content22,title23: name.content23,title24: name.content24,title25: name.content25,title26: name.content26,title27: name.content27,title28: name.content28).buildTablePamyatka2()
                                        }
                                    }
                                    .cornerRadius(10)
                                    //                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded7.toggle()
                                        }
                                    }
                                }
                            }
                        }
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                            VStack  {
                                MyViewBuilder(title: Text(""),
                                              content: Text("""
                                                Гастроинтестинальные причины
                                                """)).buildBlue591TextLowLevel(isTextExpanded: isTextExpanded8)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded8.toggle()
                                        }
                                    }
                                if isTextExpanded8{
                                    VStack (spacing: 1){
                                        ForEach(TablePamyatki.getTablePamyatkaGastro(), id: \.id) { name in
                                            MyViewBuilder59(title1: name.content1,title2: name.content2,title3: name.content3,title4: name.content4,title5: name.content5,title6: name.content6,title7: name.content7,title8: name.content8,title9: name.content9,title10: name.content10,title11: name.content11,title12: name.content12,title13: name.content13,title14: name.content14, title15: name.content15,title16: name.content16,title17: name.content17,title18: name.content18,title19: name.content19,title20: name.content20,title21: name.content21,title22: name.content22,title23: name.content23,title24: name.content24,title25: name.content25,title26: name.content26,title27: name.content27,title28: name.content28).buildTablePamyatka3()
                                        }
                                    }
                                    .cornerRadius(10)
                                    //                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded8.toggle()
                                        }
                                    }
                                }
                            }
                        }
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                            VStack  {
                                MyViewBuilder(title: Text(""),
                                              content: Text("""
                                                Другие причины
                                                """)).buildBlue591TextLowLevel(isTextExpanded: isTextExpanded9)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded9.toggle()
                                        }
                                    }
                                if isTextExpanded9{
                                    VStack (spacing: 1){
                                        ForEach(TablePamyatki.getTablePamyatkaOther(), id: \.id) { name in
                                            MyViewBuilder59(title1: name.content1,title2: name.content2,title3: name.content3,title4: name.content4,title5: name.content5,title6: name.content6,title7: name.content7,title8: name.content8,title9: name.content9,title10: name.content10,title11: name.content11,title12: name.content12,title13: name.content13,title14: name.content14, title15: name.content15,title16: name.content16,title17: name.content17,title18: name.content18,title19: name.content19,title20: name.content20,title21: name.content21,title22: name.content22,title23: name.content23,title24: name.content24,title25: name.content25,title26: name.content26,title27: name.content27,title28: name.content28).buildTablePamyatka2()
                                        }
                                    }
                                    .cornerRadius(10)
                                    //                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded9.toggle()
                                        }
                                    }
                                }
                            }
                        }
                    }
                    MyViewBuilder(title: Text(""),
                                  content: Text("""
                                            Роды на дому и в автомобиле СМП
                                            """)).buildBlue591Text(isTextExpanded: isTextExpanded10)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded10.toggle()
                            }
                        }
                    if isTextExpanded10 {
                        MyViewBuilder(title: Text("Роды на дому"),
                                      content: Text("""
                                                **В роддом доставляем** роженицу, ребенка, послед, паспорт, обменную карту.
                                                **Заполняем направление на госпитализацию с указанием диагноза**: Роды срочные (преждевременные) (1,2,3,...), домашние (дорожные, если в машине СМП).
                                                **Обязательно указать** АД, ЧСС, температуру родильницы. На отдельном листе описываем роды.
                                                """)).buildDualBlockBlueGrayLowLevel(isTextExpanded: isTextExpanded11)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded11.toggle()
                                }
                            }
                        MyViewBuilder(title: Text("Если роды принимал мед. работник ССНМП"),
                                      content: Text("""
                                                Роды произошли (время и дата) плодом (жен. или муж.) пола, доношенным. Закричал сразу, крик громкий. Кожные покровы розовые. Пуповина пересечена, перевязана (указать чем), срез пуповины обработан спиртом (или н-кой йода), произведен первичный туалет новорожденного.

                                                Через (указать время в минутах) отделился и выделился послед. Визуально дефектов долей последа не отмечается.

                                                Если через 30 мин. послед не выделился, определяют период отделения последа от стенки матки (см. Протоколы). Только убедившись в том, что послед отделился и, катетеризировав мочевой пузырь, приступаем к выделению отделившегося последа наружными приемами (строго в последовательности, приведенной в Протоколах).

                                                Если нет признаков отделения последа или выделить отделившийся послед наружными методами не удалось, оповещаем стационар, что везем родильницу с не отделившимся последом. Родильницу на носилках доставляем в роддом, предварительно наладив внутривенную инфузию.

                                                Указываем: через 30 мин послед не отделился или послед отделился через … мин, выделить послед наружными приемами не удалось. Роженица доставлена в роддом (время). Указываем кровопотерю в родах. Ставим свою подпись, должность, фамилию полностью.
                                                """)).buildDualBlockBlueGrayLowLevel(isTextExpanded: isTextExpanded12)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded12.toggle()
                                }
                            }
                        MyViewBuilder(title: Text("Роды произошли до прибытия СМП"),
                                      content: Text("""
                                                **Пишем**: дата, по вызову №... по адресу: .... время: ... осмотрена родильница и новорожденный: плод ... пола. Родильница находится на ..., описать ее состояние: пульс, АД, выделения из половых путей. Пальпация живота, высота стояния дна матки. Со слов роды произошли в (время). Роды принимал (ФИО, кем приходится) и все, что сделано до прибытия СМП. Ребенок с пересеченной пуповиной (описать ее: чем перевязана, кровоточит или нет), измерить температуру тела ребенка, описать во что завернут. Обязательно произвести первичный туалет новорожденного. Главное – согреть! У матери, если послед отделился, спросить время отделения, написать со слов и описать послед. Если послед не выделен, описать: из половой щели свисает конец пуповины длиной ... см. Далее так же, как при родах на дому.

                                                **Если родился мертвый ребенок, вызываем сотрудников милиции, плод оставляем на месте.**
                                                """)).buildDualBlockBlueGrayLowLevel(isTextExpanded: isTextExpanded13)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded13.toggle()
                                }
                            }
                        
                    }
                    MyViewBuilder(title: Text("""
                                              ----
                                              """),
                                  content: Text("""
                                                Физиологические возрастные нормы у детей
                                                """)).buildBlue591Text(isTextExpanded: isTextExpanded14)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded14.toggle()
                            }
                        }
                    if isTextExpanded14 {
                        MyViewBuilder(title: Text("""
                                                  ----
                                                  """),
                                      content: Text("""
                                                    **Возрастные нормы у детей в покое**.
                                                    """)).buildGrayText()
                        VStack(spacing: 1) {
                            HStack {
                                Text("Возраст")
                                    .frame(minWidth: 70, maxWidth: .infinity, alignment: .center)
                                    .font(.subheadline)
                                    .bold()
                                    .padding(3)
                                Spacer()
                                Text("""
                                    Масса тела
                                            (кг)
                                    """)
                                    .frame(minWidth: 88, maxWidth: .infinity, alignment: .center)
                                    .font(.subheadline)
                                    .bold()
                                    .padding(3)
                                Spacer()
                                Text("ЧДД")
                                    .frame(minWidth: 38, maxWidth: .infinity, alignment: .center)
                                    .font(.subheadline)
                                    .bold()
                                    .padding(3)
                                Spacer()
                                Text("ЧСС")
                                    .frame(minWidth: 45, maxWidth: .infinity, alignment: .center)
                                    .font(.subheadline)
                                    .bold()
                                    .padding(3)
                                Spacer()
                                Text("АД")
                                    .frame(minWidth: 40, maxWidth: .infinity, alignment: .center)
                                    .font(.subheadline)
                                    .bold()
                                    .padding(3)
                                Spacer()
                                
                            }
                            .padding(2)
                            .background(Color.grayButton)
                            ForEach(TablePamyatki.getTableParametersChild(), id: \.id) { name in
                                MyViewBuilder59(title1: name.content1,title2: name.content2,title3: name.content3,title4: name.content4,title5: name.content5,title6: name.content6,title7: name.content7,title8: name.content8,title9: name.content9,title10: name.content10,title11: name.content11,title12: name.content12,title13: name.content13,title14: name.content14, title15: name.content15,title16: name.content16,title17: name.content17,title18: name.content18,title19: name.content19,title20: name.content20,title21: name.content21,title22: name.content22,title23: name.content23,title24: name.content24,title25: name.content25,title26: name.content26,title27: name.content27,title28: name.content28).buildTableParametersChild()
                            }
                        }
                        .cornerRadius(10)
                        .shadow(color: .shadowGrayRectangle, radius: 0.5)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded14.toggle()
                            }
                        }
                        MyViewBuilder(title: Text("""
                                                  ----
                                                  """),
                                      content: Text("""
                                                    **Среднее возрастное АД для детей от 1 года до 10 лет**:
                                                    Систолическое = 90 + (возраст в годах) х 2
                                                    Диастолическое = 60 + (возраст в годах)
                                                    
                                                    **Верхнее пограничное**:
                                                    Систолическое = 105 + (возраст в годах) х 2
                                                    Диастолическое - 75 + (возраст в годах)
                                                    
                                                    **Нижнее пограничное**:
                                                    Систолическое = 75 + (возраст в годах) х 2
                                                    Диастолическое = 45 + (возраст в годах)
                                                    """)).buildGrayText()
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded14.toggle()
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
        .navigationBarTitle("", displayMode: .inline)
        .toolbar {
            ToolbarItem(placement: .principal) {
                VStack {
                    Text("Памятки")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("""
                    «Полезная информация для работников СМП»
                    """)
                    .font(.caption2)
                    .foregroundStyle(Color.toolBar)
                }
            }
        }
    }
    
}
#Preview {
    PamyatkiMain()
}

