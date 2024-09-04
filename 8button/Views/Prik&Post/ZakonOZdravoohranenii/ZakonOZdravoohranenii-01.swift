//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct ZakonOZdravoohranenii_01: View {
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
                    
                    MyViewBuilder6(title: Text("Статья 1"), content: Text("Основные термины, используемые в настоящем Законе, и их определения"),
                        text: Text("""
                                    **Для целей настоящего Закона используются следующие основные термины и их определения**:
                                    
                                    **близкие родственники** – родители, усыновители (удочерители), совершеннолетние дети, в том числе усыновленные (удочеренные), родные братья и сестры, дед, бабка, совершеннолетние внуки;
                                    **диагноз** – медицинское заключение о состоянии здоровья пациента;
                                    **диагностика** – комплекс медицинских услуг, направленных на установление диагноза;
                                    **заболевание** – расстройство здоровья человека, нарушение нормальной жизнедеятельности его организма, в том числе в результате травм, ранений, увечий, контузий, врожденных дефектов и неотложных состояний;
                                    **здоровье** – состояние полного физического, духовного и социального благополучия человека, а не только отсутствие заболеваний;
                                    **здравоохранение** – отрасль деятельности государства, целью которой являются организация и обеспечение доступного медицинского обслуживания населения;
                                    **качество медицинской помощи** – совокупность характеристик медицинской помощи, отражающих ее способность удовлетворять потребности пациента, своевременность оказания медицинской помощи, степень ее соответствия клиническим протоколам и иным нормативным правовым актам в области здравоохранения, а также степень достижения запланированного результата оказания медицинской помощи;
                                    **клинический протокол** – технический нормативный правовой акт, утверждаемый Министерством здравоохранения и устанавливающий общие, приводимые в структурированном виде требования к объему оказания медицинской помощи пациенту с учетом возможных видов медицинской помощи, форм и условий ее оказания при определенном заболевании, определенном синдроме или определенной клинической ситуации, а также содержащий варианты медицинского вмешательства и описание последовательности действий медицинских работников с учетом синдрома, течения заболевания, наличия осложнений и сопутствующих заболеваний, клинической ситуации, иных факторов, влияющих на результаты оказания медицинской помощи;
                                    **лечение** – комплекс медицинских услуг, направленных на устранение заболевания у пациента;
                                    **медицинская абилитация** – комплекс медицинских услуг, направленных на формирование, развитие и поддержание функций органов или систем организма пациента, а также возможностей и способностей человека, естественное становление которых затруднено;
                                    **медицинская деятельность** – деятельность по организации и оказанию медицинской помощи, обеспечению санитарно-эпидемиологического благополучия населения, проведению медицинской экспертизы, осуществляемая юридическими лицами и индивидуальными предпринимателями в порядке, установленном законодательством;
                                    **медицинская помощь** – комплекс медицинских услуг, направленных на сохранение, укрепление и восстановление здоровья пациента, изменение и поддержание эстетического вида пациента, включающий медицинскую профилактику, диагностику, лечение, медицинскую абилитацию, медицинскую реабилитацию и протезирование, осуществляемый медицинскими работниками;
                                    **медицинская профилактика** – комплекс медицинских услуг, направленных на сохранение и укрепление здоровья пациента, формирование здорового образа жизни, снижение вероятности возникновения и распространения заболеваний и патологических состояний, их раннее выявление, установление причин и условий их возникновения и развития, а также на предотвращение неблагоприятного воздействия на здоровье человека факторов среды его обитания;
                                    **медицинская реабилитация** – комплекс медицинских услуг, направленных на полное или частичное восстановление нарушенных и (или) компенсацию утраченных в результате заболевания функций органов или систем организма пациента;
                                    **медицинская технология** – совокупность взаимосвязанных медицинских услуг, лекарственных средств и медицинских изделий, которые могут быть использованы при оказании медицинской помощи;
                                    **медицинская услуга** – медицинское вмешательство либо комплекс медицинских вмешательств, а также иные действия, выполняемые при оказании медицинской помощи;
                                    **медицинская этика и деонтология** – совокупность принципов, норм и правил поведения медицинских, фармацевтических работников при выполнении ими должностных обязанностей;
                                    **медицинские изделия** (изделия медицинского назначения, медицинская техника) (далее – медицинские изделия) – любые инструменты, аппараты, приборы, оборудование, материалы и прочие изделия, которые применяются в медицинских целях отдельно или в сочетании между собой, а также с принадлежностями, необходимыми для применения медицинских изделий по назначению (включая специальное программное обеспечение), предназначены производителем для оказания медицинской помощи, в том числе мониторинга состояния организма человека, проведения медицинских исследований, восстановления, замещения, изменения анатомической структуры или физиологических функций его организма, предотвращения или прерывания беременности, и функциональное назначение которых не реализуется путем фармакологического, иммунологического, генетического или метаболического воздействия на организм человека, однако может поддерживаться лекарственными средствами;
                                    **медицинский документ** – документ, содержащий диагноз и (или) иные сведения о состоянии здоровья пациента, оказании медицинской помощи, рекомендациях, профилактических прививках, результаты медицинского осмотра, медицинского освидетельствования, инструментальных, лабораторных, иных исследований и другие медицинские сведения;
                                    **медицинский осмотр** – медицинская услуга, направленная на оценку состояния здоровья пациента, выявление заболеваний, факторов риска их возникновения;
                                    **медицинский работник** – физическое лицо, имеющее высшее или среднее специальное медицинское образование, подтвержденное документом об образовании, и в установленном законодательством порядке занимающееся деятельностью, связанной с организацией и оказанием медицинской помощи, обеспечением санитарно-эпидемиологического благополучия населения, проведением медицинских экспертиз;
                                    **медицинское вмешательство** – любое воздействие и (или) иная манипуляция, выполняемые медицинским работником при оказании медицинской помощи;
                                    **медицинское наблюдение** – проводимое с определенной периодичностью необходимое обследование пациента в целях своевременного выявления, предупреждения осложнений, обострений заболеваний, иных состояний, их профилактики и осуществления медицинской реабилитации;
                                    **метод оказания медицинской помощи** – научно обоснованная совокупность последовательных, взаимосвязанных медицинских вмешательств, обеспечивающих медицинскую профилактику, диагностику, лечение, медицинскую абилитацию, медицинскую реабилитацию и протезирование;
                                    **организация здравоохранения** – юридическое лицо, основным видом деятельности которого является осуществление медицинской и (или) фармацевтической деятельности;
                                    **пациент** – физическое лицо, обратившееся за медицинской помощью, находящееся под медицинским наблюдением либо получающее медицинскую помощь;
                                    **протезирование** – комплекс медицинских услуг, направленных на восстановление функций или эстетического вида органа (части тела) пациента с использованием искусственных или биологических материалов;
                                    **работники здравоохранения** – лица, занимающие в установленном законодательством порядке должности медицинских, фармацевтических работников, а также иные лица, работающие в области здравоохранения;
                                    **Республиканский формуляр лекарственных средств** – список лекарственных средств с доказанной эффективностью, допустимой безопасностью, наиболее экономически выгодных при использовании бюджетных средств, выделяемых на здравоохранение;
                                    **Республиканский формуляр медицинских изделий** – список медицинских изделий, соответствующих требованиям по безопасности, эффективности, качеству и наиболее экономически выгодных при использовании бюджетных средств, выделяемых на здравоохранение;
                                    **состояние** – изменения организма человека, возникающие в связи с воздействием патологических и (или) физиологических факторов и требующие оказания медицинской помощи;
                                    **фармацевтическая деятельность** – деятельность в сфере обращения лекарственных средств и лекарственного растительного сырья, осуществляемая юридическими лицами и индивидуальными предпринимателями в порядке, установленном законодательством;
                                    **фармацевтический работник** – физическое лицо, имеющее высшее или среднее специальное фармацевтическое образование, подтвержденное документом об образовании, и в установленном законодательством порядке занимающееся деятельностью, связанной с обращением лекарственных средств и лекарственного растительного сырья;
                                    **электронная медицинская карта пациента** – структурированная совокупность электронных медицинских документов, записей о состоянии здоровья пациента, фактах его обращения за медицинской помощью и иной информации о пациенте в централизованной информационной системе здравоохранения;
                                    **электронный медицинский документ** – медицинский документ в электронном виде с реквизитами, позволяющими установить его целостность и подлинность, которые подтверждаются путем применения сертифицированных средств электронной цифровой подписи с использованием при проверке электронной цифровой подписи открытых ключей организации или физического лица (лиц), подписавших этот электронный документ.
                                    
                                    **Определения иных терминов содержатся в отдельных статьях настоящего Закона**.
                                    """)).buildTitleZakon2(isTextExpanded: isTextExpanded1)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded1.toggle()
                                    }
                                }
                    
                            MyViewBuilder6(title: Text("Статья 2"), content: Text("Правовое регулирование отношений в области здравоохранения"),
                            text: Text ("""
                                        Отношения в области здравоохранения регулируются законодательством о здравоохранении, международными договорами Республики Беларусь, а также международно-правовыми актами, составляющими право Евразийского экономического союза.
                                        
                                        Законодательство о здравоохранении основывается на Конституции Республики Беларусь и состоит из настоящего Закона, актов Президента Республики Беларусь и иных актов законодательства.
                                        
                                        Если международным договором Республики Беларусь установлены иные правила, чем те, которые содержатся в настоящем Законе, то применяются правила международного договора.
                                        """)).buildTitleZakon2(isTextExpanded: isTextExpanded2)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded2.toggle()
                                    }
                                }
                    
                            MyViewBuilder6(title: Text("Статья 2¹"), content: Text("Правовое регулирование отношений в области здравоохранения"),
                            text: Text("""
                                        **Настоящий Закон регулирует общественные отношения, возникающие при**:
                                        - осуществлении организациями здравоохранения, другими организациями, индивидуальными предпринимателями медицинской, фармацевтической деятельности;
                                        - оказании медицинской помощи;
                                        - осуществлении мер по охране здоровья населения.
                                        
                                        **Действие настоящего Закона распространяется на**:
                                        - государственные органы;
                                        - организации здравоохранения;
                                        - другие организации, в том числе организации, которые наряду с основной деятельностью осуществляют медицинскую, фармацевтическую деятельность;
                                        - индивидуальных предпринимателей, осуществляющих медицинскую, фармацевтическую деятельность;
                                        - физических лиц;
                                        - оператора централизованной информационной системы здравоохранения, а также на владельцев информационных систем и информационных ресурсов, осуществляющих получение, передачу, сбор, обработку, накопление, хранение и предоставление медицинской информации в области здравоохранения.
                                        """)).buildTitleZakon2(isTextExpanded: isTextExpanded3)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded3.toggle()
                                    }
                                }
                     
                            MyViewBuilder6(title: Text("Статья 3"), content: Text("Основные принципы государственной политики Республики Беларусь в области здравоохранения"),
                            text: Text("""
                                        **Основными принципами государственной политики Республики Беларусь в области здравоохранения являются**:
                                        - создание условий для сохранения, укрепления и восстановления здоровья населения;
                                        - обеспечение доступности медицинского обслуживания, в том числе лекарственного обеспечения;
                                        - приоритетность мер профилактической направленности;
                                        - приоритетность развития первичной медицинской помощи;
                                        - приоритетность медицинского обслуживания, в том числе лекарственного обеспечения, несовершеннолетних, женщин во время беременности, родов и в послеродовой период, инвалидов и ветеранов в соответствии с законодательством;
                                        - обеспечение санитарно-эпидемиологического благополучия населения и его будущих поколений;
                                        - формирование ответственного отношения населения к сохранению, укреплению и восстановлению собственного здоровья и здоровья окружающих;
                                        - ответственность государственных органов, организаций за состояние здоровья населения;
                                        - ответственность нанимателей за состояние здоровья работников.
                                        """)).buildTitleZakon2(isTextExpanded: isTextExpanded4)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded4.toggle()
                                    }
                                }
                    
                            MyViewBuilder6(title: Text("Статья 4"), content: Text("Обеспечение прав граждан Республики Беларусь на доступное медицинское обслуживание"),
                            text:  Text("""
                                        **Граждане Республики Беларусь имеют право на доступное медицинское обслуживание, которое обеспечивается**:
                                        - предоставлением бесплатной медицинской помощи на основании государственных минимальных социальных стандартов в области здравоохранения в государственных учреждениях здравоохранения;
                                        - предоставлением медицинской помощи в государственных организациях здравоохранения, негосударственных организациях здравоохранения и у индивидуальных предпринимателей, осуществляющих в установленном законодательством порядке медицинскую деятельность, за счет собственных средств, средств юридических лиц и иных источников, не запрещенных законодательством;
                                        - доступностью лекарственных средств;
                                        - осуществлением мер по санитарно-эпидемиологическому благополучию населения;
                                        - проведением медицинских экспертиз.
                                        """)).buildTitleZakon2(isTextExpanded: isTextExpanded5)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded5.toggle()
                                    }
                                }
                      
                            MyViewBuilder6(title: Text("Статья 5"), content: Text("Право иностранных граждан и лиц без гражданства на доступное медицинское обслуживание"),
                            text: Text("""
                                        Иностранные граждане и лица без гражданства, постоянно проживающие в Республике Беларусь, имеют право на доступное медицинское обслуживание наравне с гражданами Республики Беларусь, в том числе на получение бесплатной медицинской помощи на основании государственных минимальных социальных стандартов в области здравоохранения в государственных учреждениях здравоохранения, если иное не установлено законодательными актами и международными договорами Республики Беларусь.
                                        
                                        Иностранные граждане и лица без гражданства, временно пребывающие или временно проживающие в Республике Беларусь, имеют право на доступное медицинское обслуживание за счет собственных средств, средств юридических лиц и иных источников, не запрещенных законодательством, если иное не установлено законодательными актами и международными договорами Республики Беларусь.
                                        """)).buildTitleZakon2(isTextExpanded: isTextExpanded6)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded6.toggle()
                                    }
                                }
                       
                  
                            MyViewBuilder6(title: Text("Статья 6"), content: Text("Международное сотрудничество в области здравоохранения"),
                            text: Text("""
                                        Международное сотрудничество в области здравоохранения осуществляется в соответствии с законодательством на основе соблюдения общепризнанных принципов и норм международного права.
                                        """)).buildTitleZakon2(isTextExpanded: isTextExpanded7)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded7.toggle()
                                    }
                                }
                     
                            MyViewBuilder6(title: Text("Статья 7"), content: Text("Участие общественных объединений в решении вопросов в области здравоохранения"),
                            text: Text("""
                                        Медицинские, фармацевтические общественные объединения, Белорусское Общество Красного Креста, профессиональные союзы и другие общественные объединения в соответствии со своими уставами принимают участие в решении вопросов в области здравоохранения в порядке, установленном законодательством.
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
                    Text("Глава 1")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Общие положения»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            
        }
    }
    
}
#Preview {
    ZakonOZdravoohranenii_01()
}

