//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct ZakonOZdravoohranenii_09: View {
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
    
    var body: some View {
            ScrollView {
                Spacer()
                VStack (spacing: 5){
                    
                            MyViewBuilder6(title: Text("Статья 38"), content: Text("Порядок обеспечения граждан Республики Беларусь лекарственными средствами, медицинскими изделиями и биомедицинскими клеточными продуктами"),
                            text: Text("""
                                        **Граждане Республики Беларусь при оказании им в государственных организациях здравоохранения медицинской помощи в стационарных условиях и условиях отделения дневного пребывания обеспечиваются за счет средств республиканского и (или) местных бюджетов**:
                                        - лекарственными средствами в пределах Республиканского формуляра лекарственных средств;
                                        - медицинскими изделиями в пределах Республиканского формуляра медицинских изделий;
                                        - биомедицинскими клеточными продуктами.
                                        
                                        При заболеваниях, которые включены в перечень, устанавливаемый Министерством здравоохранения, гражданам Республики Беларусь может быть назначено контролируемое лечение в стационарных и (или) амбулаторных условиях в виде регулярной выдачи лекарственных средств с постоянным наблюдением за их медицинским применением.
                                        
                                        Граждане Республики Беларусь при назначении им контролируемого лечения в амбулаторных условиях в государственных организациях здравоохранения обеспечиваются лекарственными средствами и медицинскими изделиями в пределах перечня основных лекарственных средств и Республиканского формуляра медицинских изделий за счет средств республиканского и (или) местных бюджетов, иных источников, не запрещенных законодательством.
                                        
                                        При заболеваниях, которые включены в перечень, устанавливаемый Министерством здравоохранения, граждане Республики Беларусь при оказании им в государственных организациях здравоохранения медицинской помощи в амбулаторных условиях обеспечиваются за счет средств республиканского и (или) местных бюджетов медицинскими изделиями, перечень которых устанавливается Министерством здравоохранения, в пределах Республиканского формуляра медицинских изделий.
                                        
                                        В иных случаях, не предусмотренных частями первой–четвертой настоящей статьи и другими актами законодательства, граждане Республики Беларусь в порядке, установленном законодательством, обеспечиваются лекарственными средствами, медицинскими изделиями и биомедицинскими клеточными продуктами за счет собственных средств, средств юридических лиц и иных источников, не запрещенных законодательством.
                                        """)).buildTitleZakon2(isTextExpanded: isTextExpanded1)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded1.toggle()
                                    }
                                }
                            
                            MyViewBuilder6(title: Text("Статья 38¹"), content: Text("Республиканский формуляр лекарственных средств"),
                            text: Text("""
                                        Республиканский формуляр лекарственных средств ежегодно устанавливается Министерством здравоохранения в целях обеспечения доступности лекарственных средств.
                                        
                                        Порядок формирования Республиканского формуляра лекарственных средств устанавливается Министерством здравоохранения.
                                        
                                        **Республиканский формуляр лекарственных средств используется для формирования и разработки**:
                                        - перечня основных лекарственных средств;
                                        - годовых планов государственных закупок лекарственных средств;
                                        - клинических протоколов;
                                        - методов оказания медицинской помощи.
                                        """)).buildTitleZakon2(isTextExpanded: isTextExpanded2)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded2.toggle()
                                    }
                                }
                           
                            MyViewBuilder6(title: Text("Статья 39"), content: Text("Ввоз, вывоз, реализация, медицинское применение, хранение, транспортировка, изъятие из обращения, возврат производителю или поставщику, уничтожение лекарственных средств. Государственный фармацевтический надзор за соблюдением требований законодательства об обращении лекарственных средств"),
                            text: Text("""
                                        Ввоз, вывоз, реализация, медицинское применение, хранение, транспортировка, изъятие из обращения, возврат производителю или поставщику, уничтожение лекарственных средств, а также государственный фармацевтический надзор за соблюдением требований законодательства об обращении лекарственных средств осуществляются в порядке, установленном законодательством.
                                        """)).buildTitleZakon2(isTextExpanded: isTextExpanded3)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded3.toggle()
                                    }
                                }
                            
                            MyViewBuilder6(title: Text("Статья 39¹"), content: Text("Обращение медицинских изделий"),
                            text: Text("""
                                        Обращение медицинских изделий включает проектирование, разработку, создание опытных образцов, проведение технических испытаний, исследований (испытаний) в целях оценки биологического действия, клинических испытаний, экспертизы безопасности, качества и эффективности медицинских изделий, регистрацию, производство (изготовление), хранение, транспортировку, реализацию, монтаж, наладку, применение (эксплуатацию), техническое обслуживание, ремонт и уничтожение медицинских изделий.
                                        
                                        Медицинские изделия допускаются к производству, реализации и медицинскому применению в Республике Беларусь после их государственной регистрации в порядке, установленном Советом Министров Республики Беларусь, или регистрации в рамках Евразийского экономического союза, если иное не установлено законодательными актами, международно-правовыми актами, составляющими право Евразийского экономического союза.
                                        
                                        Государственную регистрацию медицинских изделий осуществляет Министерство здравоохранения в порядке, установленном Советом Министров Республики Беларусь.
                                        
                                        Регистрация медицинских изделий в рамках Евразийского экономического союза осуществляется в соответствии с Соглашением о единых принципах и правилах обращения медицинских изделий (изделий медицинского назначения и медицинской техники) в рамках Евразийского экономического союза от 23 декабря 2014 года, а также с иными международно-правовыми актами, составляющими право Евразийского экономического союза.
                                        
                                        **Запрещаются ввоз и реализация в Республике Беларусь**:
                                        - некачественных медицинских изделий;
                                        - фальсифицированных медицинских изделий (медицинских изделий, вводящих в заблуждение потребителей относительно качества, количества, состава, способа, места изготовления и (или) производителя и иных характеристик, в том числе путем нанесения недостоверной маркировки либо распространения недостоверной информации);
                                        - изделий медицинского назначения с истекшим сроком годности либо не соответствующих требованиям по безопасности;
                                        - медицинских изделий, в отношении которых имеется официальное уведомление уполномоченного органа или производителя (его уполномоченного представителя) о выявленных несоответствиях.
                                        
                                        Ввоз в Республику Беларусь и вывоз из Республики Беларусь медицинских изделий осуществляются при соблюдении требований международно-правовых актов, составляющих право Евразийского экономического союза, настоящего Закона и иных актов законодательства.
                                        
                                        Ответственным за выпуск медицинского изделия в обращение является производитель (его уполномоченный представитель).
                                        
                                        Выпуск медицинских изделий в обращение – любая возмездная или безвозмездная передача медицинских изделий, которая осуществляется впервые и делает их доступными для распространения и (или) применения, за исключением передачи медицинских изделий для проведения исследований (испытаний) в целях их последующих реализации и применения.
                                        """)).buildTitleZakon2(isTextExpanded: isTextExpanded4)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded4.toggle()
                                    }
                                }
                            
                            MyViewBuilder6(title: Text("Статья 39²"), content: Text("Республиканский формуляр медицинских изделий"),
                            text: Text("""
                                        **Республиканский формуляр медицинских изделий ежегодно устанавливается Министерством здравоохранения и используется для формирования и разработки**:
                                        - годовых планов государственных закупок медицинских изделий;
                                        - клинических протоколов;
                                        - методов оказания медицинской помощи.
                                        """)).buildTitleZakon2(isTextExpanded: isTextExpanded5)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded5.toggle()
                                    }
                                }
                            
                            MyViewBuilder6(title: Text("Статья 39³"), content: Text("Ввоз, вывоз, реализация, медицинское применение, возврат производителю или поставщику, уничтожение биомедицинских клеточных продуктов. Государственная регистрация биомедицинских клеточных продуктов"),
                            text: Text("""
                                        Ввоз, вывоз, реализация, медицинское применение, возврат производителю или поставщику, уничтожение биомедицинских клеточных продуктов осуществляются в порядке, установленном настоящим Законом и иными актами законодательства.
                                        
                                        Реализация и медицинское применение биомедицинских клеточных продуктов разрешаются, если иное не предусмотрено законодательством, после их государственной регистрации в порядке, установленном Советом Министров Республики Беларусь.
                                        
                                        **Государственной регистрации не подлежат, если иное не установлено частью пятой настоящей статьи**:
                                        - биомедицинские клеточные продукты, изготовленные в Республике Беларусь по заказам и технической и (или) иной документации иностранных юридических лиц, регламентирующей производство и контроль за качеством биомедицинских клеточных продуктов, и предназначенные для реализации за пределами Республики Беларусь;
                                        - сырье, предназначенное для производства биомедицинских клеточных продуктов в Республике Беларусь (согласно нормативной технической документации производителя), за исключением материалов и изделий для заготовки сырья;
                                        - биомедицинские клеточные продукты, изготовленные государственной организацией здравоохранения или государственной медицинской, фармацевтической научной организацией Республики Беларусь и предназначенные исключительно для нужд этой организации;
                                        - биомедицинские клеточные продукты персонифицированного применения (клеточные продукты из сырья пациента или его родственников, предназначенные для терапии только этого пациента, полученные и применяемые в одной организации здравоохранения) до момента утраты ими такого статуса;
                                        - клеточные компоненты крови;
                                        - иные биомедицинские клеточные продукты в соответствии с перечнем, определенным Советом Министров Республики Беларусь.
                                        
                                        При осуществлении государственной регистрации биомедицинских клеточных продуктов проводятся клинические испытания в порядке и объеме, установленных Советом Министров Республики Беларусь или уполномоченным им органом.
                                        
                                        Биомедицинские клеточные продукты на основе генетически модифицированных клеток человека подлежат государственной регистрации после доказательства их безопасности на этапе доклинических исследований на моделях, максимально отражающих патогенез и набор симптомов и синдромов заболевания (патологического состояния).
                                        """)).buildTitleZakon2(isTextExpanded: isTextExpanded6)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded6.toggle()
                                    }
                                }
                            
                            MyViewBuilder6(title: Text("Статья 40"), content: Text("Проведение клинических исследований (испытаний) лекарственных препаратов, клинических испытаний медицинских изделий"),
                            text: Text("""
                                        В целях выявления или подтверждения клинических свойств исследуемых лекарственных препаратов, медицинских изделий в государственных организациях здравоохранения могут быть проведены клинические исследования (испытания) на людях.
                                        
                                        Клинические исследования (испытания) лекарственных препаратов проводятся государственными организациями здравоохранения в порядке, установленном законодательством об обращении лекарственных средств с учетом требований международно-правовых актов, составляющих право Евразийского экономического союза.
                                        
                                        Клинические испытания медицинских изделий проводятся государственными организациями здравоохранения после проведения лабораторных исследований и других испытаний, подтверждающих их безопасность.
                                        
                                        Проведение клинических испытаний медицинских изделий на беременных женщинах и несовершеннолетних допускается в случае, если испытания проводятся для оказания медицинской помощи исключительно этим категориям лиц.
                                        
                                        Клинические испытания медицинских изделий могут проводиться только добровольно и с письменного согласия лица, подвергаемого испытанию (в отношении несовершеннолетнего – с письменного согласия одного из его законных представителей), ознакомленного с целями его проведения, продолжительностью, ожидаемыми результатами и возможными последствиями для здоровья.
                                        
                                        **Клинические испытания медицинских изделий должны быть прекращены**:
                                        - по требованию лица, подвергаемого испытанию (в отношении несовершеннолетнего – по требованию одного из его законных представителей);
                                        - в случае возникновения угрозы для жизни или здоровья лица, подвергаемого испытанию.
                                        
                                        **Запрещается проведение клинических испытаний медицинских изделий на**:
                                        - детях-сиротах и детях, оставшихся без попечения родителей;
                                        - военнослужащих и лицах, на которых распространяется статус военнослужащих;
                                        - осужденных и лицах, содержащихся под стражей;
                                        - лицах, признанных в установленном порядке недееспособными, а также страдающих психическими расстройствами (заболеваниями), принудительно госпитализированных и находящихся на принудительном лечении в психиатрическом стационаре;
                                        - лицах, в отношении которых проводится судебная экспертиза.
                                        
                                        Порядок проведения клинических испытаний медицинских изделий на людях определяется законодательством.
                                        """)).buildTitleZakon2(isTextExpanded: isTextExpanded7)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded7.toggle()
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
                    Text("Глава 8")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Обесечение лекарственными средствами»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            
        }
    }
    
}
#Preview {
    ZakonOZdravoohranenii_09()
}

