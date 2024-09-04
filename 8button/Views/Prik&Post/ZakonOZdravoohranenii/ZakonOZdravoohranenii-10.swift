//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct ZakonOZdravoohranenii_10: View {
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
                    
                            MyViewBuilder6(title: Text("Статья 41"), content: Text("Права пациентов"),
                            text: Text("""
                                        **Пациент имеет право на**:
                                        - получение медицинской помощи;
                                        - выбор лечащего врача и организации здравоохранения;
                                        - участие в выборе методов оказания медицинской помощи;
                                        - пребывание в организации здравоохранения в условиях, соответствующих санитарно-эпидемиологическим требованиям и позволяющих реализовать право на безопасность и защиту личного достоинства;
                                        - уважительное и гуманное отношение со стороны работников здравоохранения;
                                        - получение в доступной форме информации о состоянии собственного здоровья, применяемых методах оказания медицинской помощи, а также о квалификации лечащего врача, других медицинских работников, непосредственно участвующих в оказании ему медицинской помощи;
                                        - отказ от внесения информации, составляющей врачебную тайну, в централизованную информационную систему здравоохранения, за исключением информации, предоставляемой организациями здравоохранения в правоохранительные органы в соответствии с абзацем вторым части одиннадцатой статьи 46 настоящего Закона;
                                        - ознакомление с медицинскими документами, имеющимися в организации здравоохранения и отражающими информацию о состоянии его здоровья, фактах обращения за медицинской помощью;
                                        - выбор лиц, которым может быть сообщена информация о состоянии его здоровья;
                                        - отказ от оказания медицинской помощи, в том числе медицинского вмешательства, за исключением случаев, предусмотренных настоящим Законом;
                                        - облегчение боли, связанной с заболеванием и (или) медицинским вмешательством, всеми методами оказания медицинской помощи с учетом лечебно-диагностических возможностей организации здравоохранения;
                                        - реализацию иных прав в соответствии с настоящим Законом и иными актами законодательства.
                                        
                                        При оказании медицинской помощи в стационарных условиях пациент имеет право на допуск к нему священнослужителя, а также на предоставление условий для отправления религиозных обрядов, если это не нарушает правил внутреннего распорядка для пациентов, санитарно-эпидемиологических требований.
                                        
                                        Предоставление пациенту указанных в настоящей статье прав не может осуществляться в ущерб здоровью других пациентов и нарушать их права и свободы.
                                        """)).buildTitleZakon2(isTextExpanded: isTextExpanded1)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded1.toggle()
                                    }
                                }
                           
                            MyViewBuilder6(title: Text("Статья 42"), content: Text("Обязанности пациентов"),
                            text: Text("""
                                        **Пациент обязан**:
                                        - заботиться о собственном здоровье, принимать своевременные меры по его сохранению, укреплению и восстановлению;
                                        - уважительно относиться к работникам здравоохранения и другим пациентам;
                                        - выполнять рекомендации медицинских работников, необходимые для реализации избранной тактики лечения, сотрудничать с медицинскими работниками при оказании медицинской помощи;
                                        - сообщать медицинским работникам о наличии у него заболеваний, представляющих опасность для здоровья населения, вируса иммунодефицита человека, а также соблюдать меры предосторожности при контактах с другими лицами;
                                        - информировать медицинских работников о ранее выявленных медицинских противопоказаниях к применению лекарственных средств, наследственных и перенесенных заболеваниях, об обращениях за медицинской помощью, а также об изменениях в состоянии здоровья;
                                        - соблюдать правила внутреннего распорядка для пациентов, бережно относиться к имуществу организации здравоохранения;
                                        - выполнять иные обязанности, предусмотренные настоящим Законом и иными актами законодательства.
                                        """)).buildTitleZakon2(isTextExpanded: isTextExpanded2)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded2.toggle()
                                    }
                                }
                            
                            MyViewBuilder6(title: Text("Статья 43"), content: Text("Правила внутреннего распорядка для пациентов"),
                            text: Text("""
                                        Организации здравоохранения разрабатывают и утверждают правила внутреннего распорядка для пациентов на основании примерных правил внутреннего распорядка для пациентов, утверждаемых Министерством здравоохранения, а также создают условия для беспрепятственного ознакомления пациентов с их содержанием.
                                        
                                        Пациент при оказании ему медицинской помощи в стационарных условиях должен быть ознакомлен с правилами внутреннего распорядка для пациентов. Факт ознакомления с правилами внутреннего распорядка для пациентов подтверждается подписью пациента либо лиц, указанных в части второй статьи 18 настоящего Закона, и вносится в медицинские документы. В случае отказа пациента либо лиц, указанных в части второй статьи 18 настоящего Закона, от ознакомления с правилами внутреннего распорядка для пациентов врач-специалист вносит соответствующую запись в медицинские документы, которая удостоверяется другим врачом-специалистом этой же организации здравоохранения.
                                        """)).buildTitleZakon2(isTextExpanded: isTextExpanded3)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded3.toggle()
                                    }
                                }
                            
                            MyViewBuilder6(title: Text("Статья 44"), content: Text("Согласие на оказание медицинской помощи"),
                            text: Text("""
                                        Необходимым условием оказания медицинской помощи пациенту является наличие предварительного информированного добровольного согласия совершеннолетнего пациента, если иное не предусмотрено настоящей статьей, или лиц, указанных в части второй статьи 18 настоящего Закона, ознакомленных с целью медицинского вмешательства, прогнозируемыми результатами и возможными рисками.
                                        
                                        Согласие на простое медицинское вмешательство дается устно пациентом или лицами, указанными в части второй статьи 18 настоящего Закона. Отметка о согласии на простое медицинское вмешательство делается медицинским работником в медицинских документах.
                                        
                                        Несовершеннолетние в возрасте от четырнадцати до восемнадцати лет имеют право самостоятельно давать согласие на простое медицинское вмешательство.
                                        
                                        Отзыв согласия на простое медицинское вмешательство осуществляется лицами, давшими его. Отметка об отзыве согласия на простое медицинское вмешательство делается медицинским работником в медицинских документах.
                                        
                                        Обязательным условием проведения сложного медицинского вмешательства является наличие предварительного письменного согласия совершеннолетнего пациента или лиц, указанных в части второй статьи 18 настоящего Закона.
                                        
                                        Согласие пациента на сложное медицинское вмешательство вносится в медицинские документы и подписывается пациентом либо лицами, указанными в части второй статьи 18 настоящего Закона, и лечащим врачом. Форма согласия пациента на сложное медицинское вмешательство устанавливается Министерством здравоохранения.
                                        
                                        В случае, если сложное медицинское вмешательство должно быть выполнено срочно (неотложно), а лица, указанные в части второй статьи 18 настоящего Закона, отсутствуют или установить их местонахождение невозможно, решение принимается врачебным консилиумом, а при невозможности его проведения – лечащим врачом с оформлением записи в медицинских документах.
                                        
                                        Лечащий врач (врачебный консилиум), принявший решение и осуществивший неотложное сложное медицинское вмешательство, при первой возможности должен уведомить об этом руководителя организации здравоохранения, а также лиц, указанных в части второй статьи 18 настоящего Закона.
                                        
                                        Согласие на сложное медицинское вмешательство может быть отозвано пациентом либо лицами, указанными в части второй статьи 18 настоящего Закона, за исключением случаев, когда медицинское вмешательство уже началось и его прекращение либо возврат к первоначальному состоянию невозможны или связаны с угрозой для жизни или здоровья пациента.
                                        
                                        Отзыв согласия на сложное медицинское вмешательство и информация о невозможности удовлетворения отзыва с указанием причин оформляются записью в медицинских документах и подписываются пациентом либо лицами, указанными в части второй статьи 18 настоящего Закона, и лечащим врачом.
                                        
                                        Согласие на оказание психиатрической помощи дается и оформляется в соответствии с законодательством об оказании психиатрической помощи.
                                        
                                        Перечень простых медицинских вмешательств определяется Министерством здравоохранения.
                                        
                                        При формировании электронной медицинской карты пациента, информационных систем, информационных ресурсов, баз (банков) данных, реестров (регистров) в здравоохранении согласие, отзыв согласия на внесение и обработку персональных данных пациента или лиц, указанных в части второй статьи 18 настоящего Закона, информации, составляющей врачебную тайну, отказ от их внесения и обработки оформляются на бумажном носителе или иным способом, не запрещенным законодательством, по формам и в порядке, устанавливаемым Министерством здравоохранения.
                                        
                                        Особенности получения, передачи, сбора, обработки, накопления, хранения медицинской информации, содержащейся в централизованной информационной системе здравоохранения, определяются частью восьмой статьи 37⁶ настоящего Закона.
                                        """)).buildTitleZakon2(isTextExpanded: isTextExpanded4)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded4.toggle()
                                    }
                                }
                           
                            MyViewBuilder6(title: Text("Статья 45"), content: Text("Отказ пациента от оказания медицинской помощи, в том числе медицинского вмешательства"),
                            text: Text("""
                                        Пациент либо лица, указанные в части второй статьи 18 настоящего Закона, имеют право отказаться от оказания медицинской помощи, в том числе медицинского вмешательства, за исключением случаев, предусмотренных настоящим Законом.
                                        
                                        При отказе от оказания медицинской помощи, в том числе медицинского вмешательства, пациенту либо лицам, указанным в части второй статьи 18 настоящего Закона, лечащим врачом в доступной форме должны быть разъяснены возможные последствия отказа.
                                        
                                        Отказ от оказания медицинской помощи, в том числе медицинского вмешательства, оформляется записью в медицинских документах и подписывается пациентом либо лицами, указанными в части второй статьи 18 настоящего Закона, и лечащим врачом.
                                        """)).buildTitleZakon2(isTextExpanded: isTextExpanded5)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded5.toggle()
                                    }
                                }
                           
                            MyViewBuilder6(title: Text("Статья 46"), content: Text("Предоставление информации о состоянии здоровья пациента. Врачебная тайна"),
                            text: Text("""
                                        Информация о состоянии здоровья пациента предоставляется лечащим врачом пациенту или лицам, указанным в части второй статьи 18 настоящего Закона. Совершеннолетний пациент вправе определить лиц, которым следует сообщать информацию о состоянии его здоровья, либо запретить ее сообщение определенным лицам.
                                        
                                        Информация о состоянии здоровья пациента излагается лечащим врачом в форме, соответствующей требованиям медицинской этики и деонтологии и доступной для понимания лица, не обладающего специальными знаниями в области здравоохранения.
                                        
                                        По просьбе несовершеннолетнего либо в целях осознанного выполнения им медицинских предписаний по согласованию с его законным представителем лечащим врачом несовершеннолетнему предоставляется информация о состоянии его здоровья и выбранных методах оказания медицинской помощи в доступной для его возраста форме с учетом психофизиологической зрелости и эмоционального состояния пациента.
                                        
                                        По желанию пациента, уполномоченных им лиц или лиц, указанных в части второй статьи 18 настоящего Закона, организации здравоохранения выдают выписки из медицинских документов, медицинские справки о состоянии здоровья и другие документы, содержащие информацию о состоянии здоровья пациента, в порядке, установленном законодательством.
                                        
                                        Использование информации о состоянии здоровья пациента в образовательном процессе и научной литературе допускается только с согласия пациента либо лиц, указанных в части второй статьи 18 настоящего Закона.
                                        
                                        Информация о факте обращения пациента за медицинской помощью и состоянии его здоровья, сведения о наличии заболевания, диагнозе, возможных методах оказания медицинской помощи, рисках, связанных с медицинским вмешательством, а также возможных альтернативах предлагаемому медицинскому вмешательству, иные сведения, в том числе личного характера, полученные при оказании пациенту медицинской помощи, а в случае смерти – и информация о результатах патологоанатомического исследования составляют врачебную тайну.
                                        
                                        **Предоставление информации, составляющей врачебную тайну, без согласия пациента или лиц, указанных в части второй статьи 18 настоящего Закона, допускается по запросу в письменной форме и (или) в виде электронного документа, оформленного в соответствии с законодательством об электронных документах и электронной цифровой подписи**:
                                        - Министерства здравоохранения, главных управлений по здравоохранению областных исполнительных комитетов и Комитета по здравоохранению Минского городского исполнительного комитета в целях организации оказания медицинской помощи пациенту, при проведении экспертизы качества медицинской помощи, оценки качества медицинской помощи и медицинских экспертиз, при угрозе распространения инфекционных заболеваний, а также при осуществлении государственного санитарного надзора;
                                        - организаций здравоохранения в целях организации оказания медицинской помощи пациенту или при угрозе распространения инфекционных заболеваний;
                                        - органов уголовного преследования и суда в связи с проведением досудебного производства или судебным разбирательством;
                                        - органов внутренних дел о явке (неявке) лица, обязанного возмещать расходы, затраченные государством на содержание детей, находящихся на государственном обеспечении, в государственную организацию здравоохранения для прохождения медицинского осмотра, а также о прохождении (непрохождении) этим лицом медицинского осмотра;
                                        - органов, осуществляющих оперативно-розыскную деятельность, в связи с осуществлением такой деятельности;
                                        - страховых организаций, Белорусского бюро по транспортному страхованию для решения вопроса о назначении страховых выплат;
                                        - местных органов военного управления для медицинского освидетельствования граждан при призыве на воинскую службу;
                                        - органов дознания в связи с проведением экспертиз для решения вопроса о возбуждении уголовного дела;
                                        - органов внутренних дел о прохождении (непрохождении) медицинского переосвидетельствования водителей механических транспортных средств, самоходных машин, наличии заболевания или противопоказания, препятствующих управлению механическими транспортными средствами, самоходными машинами;
                                        - нанимателя в связи с проведением расследования несчастного случая на производстве и профессионального заболевания;
                                        - органов опеки и попечительства, иных организаций, уполномоченных в соответствии с законодательством осуществлять защиту прав и законных интересов детей, в связи с осуществлением ими контроля за условиями содержания, воспитания и образования детей-сирот, детей, оставшихся без попечения родителей;
                                        - в иных случаях, установленных законодательными актами.
                                        
                                        **Кроме случаев, указанных в части седьмой настоящей статьи, без согласия лица, обязанного возмещать расходы, затраченные государством на содержание детей, находящихся на государственном обеспечении, или лиц, указанных в части второй статьи 18 настоящего Закона, государственная организация здравоохранения предоставляет засвидетельствованную копию заключения врачебно-консультационной комиссии о наличии либо отсутствии заболеваний, при которых родители не могут выполнять родительские обязанности, по запросу в письменной форме и (или) в виде электронного документа, оформленного в соответствии с законодательством об электронных документах и электронной цифровой подписи**:
                                        - управлений (отделов) образования местных исполнительных и распорядительных органов – в случаях, когда дети находятся на государственном обеспечении в детских домах семейного типа, опекунских семьях, приемных семьях;
                                        - детских интернатных учреждений, государственных учреждений профессионально-технического, среднего специального, высшего образования, детских домов семейного типа, опекунских семей, приемных семей – в случаях, когда дети находятся на государственном обеспечении в этих учреждениях, семьях;
                                        - прокурора.
                                        
                                        **После смерти пациента разглашение информации, составляющей врачебную тайну, не допускается, за исключением случаев**:
                                        - предусмотренных абзацами четвертым, шестым и одиннадцатым части седьмой настоящей статьи;
                                        - если при жизни пациент дал в порядке, установленном Министерством здравоохранения, письменное согласие на разглашение информации, составляющей врачебную тайну, после его смерти в отношении определенного либо неопределенного круга лиц;
                                        - предоставления информации в отношении несовершеннолетнего пациента одному из его законных представителей;
                                        - предоставления информации в отношении пациента, признанного в установленном порядке недееспособным, его опекуну;
                                        - предоставления информации в отношении пациента, не способного на момент начала оказания медицинской помощи по состоянию здоровья к принятию осознанного решения, супругу (супруге) или одному из близких родственников.
                                        
                                        В целях организации оказания медицинской помощи пациенту, а также предотвращения распространения инфекционных и массовых неинфекционных заболеваний информация, составляющая врачебную тайну, может направляться организацией здравоохранения в иные государственные организации здравоохранения, к компетенции которых относится решение соответствующих вопросов, в порядке, установленном Министерством здравоохранения.
                                        
                                        **Организации здравоохранения обязаны представлять информацию, составляющую врачебную тайну, без согласия пациента или лиц, указанных в части второй статьи 18 настоящего Закона, а также без запроса, указанного в абзаце первом части седьмой настоящей статьи**:
                                        - в правоохранительные органы при наличии оснований, позволяющих полагать, что вред здоровью причинен в результате противоправных действий, в том числе дорожно-транспортных происшествий, в случаях обращения за медицинской помощью пациента, который в силу состояния здоровья или возраста не может сообщить о себе сведения, и (или) его смерти, а также в случаях, если состояние или заболевание пациента могут угрожать жизни и (или) здоровью людей, в порядке и по перечню, установленным Советом Министров Республики Беларусь;
                                        - в органы государственного управления, осуществляющие организацию мероприятий и координирующие деятельность республиканских органов государственного управления, местных исполнительных и распорядительных органов в ходе ликвидации последствий чрезвычайных ситуаций природного и техногенного характера, актов терроризма и массовых беспорядков, в отношении лиц, пострадавших в результате чрезвычайных ситуаций природного и техногенного характера, актов терроризма и массовых беспорядков;
                                        - в Министерство иностранных дел в отношении иностранных граждан, пострадавших в результате чрезвычайных ситуаций природного и техногенного характера, актов терроризма и массовых беспорядков;
                                        - в иных случаях, установленных законодательными актами.
                                        
                                        Обязанность сохранять врачебную тайну наравне с медицинскими, фармацевтическими работниками распространяется также на лиц, которым в установленном настоящим Законом порядке стали известны сведения, составляющие врачебную тайну.
                                        
                                        Организации здравоохранения обеспечивают хранение медицинских документов в соответствии с требованиями сохранения врачебной тайны.
                                        """)).buildTitleZakon2(isTextExpanded: isTextExpanded6)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded6.toggle()
                                    }
                                }
                            
                            MyViewBuilder6(title: Text("Статья 47"), content: Text("Анатомический дар"),
                            text: Text("""
                                        Анатомическим даром признается распоряжение, выраженное физическим лицом в письменной форме, о добровольном согласии на передачу после смерти его тела, органов, тканей в организацию здравоохранения или государственное учреждение образования, осуществляющее подготовку, повышение квалификации и (или) переподготовку специалистов с высшим или средним специальным медицинским, фармацевтическим образованием, для использования в образовательном процессе и научных исследованиях.
                                        
                                        Гражданин имеет также право отменить свое распоряжение об анатомическом даре.
                                        
                                        Порядок и условия совершения анатомического дара определяются Министерством здравоохранения.
                                        """)).buildTitleZakon2(isTextExpanded: isTextExpanded7)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded7.toggle()
                                    }
                                }
                           
                            MyViewBuilder6(title: Text("Статья 48"), content: Text("Деятельность комитетов (комиссий) по вопросам медицинской этики и деонтологии"),
                            text: Text("""
                                        В целях защиты прав пациентов для участия в разработке норм медицинской этики и деонтологии, а также рассмотрения вопросов, связанных с нарушением этих норм, в организациях здравоохранения могут создаваться комитеты (комиссии) по вопросам медицинской этики и деонтологии.
                                        
                                        Порядок создания и деятельности комитетов (комиссий) по вопросам медицинской этики и деонтологии определяется Министерством здравоохранения.
                                        """)).buildTitleZakon2(isTextExpanded: isTextExpanded8)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded8.toggle()
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
                    Text("Глава 9")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Права и обязанности пациентов»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            
        }
    }
    
}
#Preview {
    ZakonOZdravoohranenii_10()
}

