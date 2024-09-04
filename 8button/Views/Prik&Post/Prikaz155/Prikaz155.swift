//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct Prikaz155: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @State private var isTextExpanded1 = false
    @State private var isTextExpanded2 = false
    @State private var isTextExpanded3 = false
    @State private var isTextExpanded4 = false
    @State private var isTextExpanded5 = true
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
    var body: some View {
            ScrollView {
                Spacer()
                VStack (spacing: 5){
                    MyViewBuilder(title: Text(""),
                                  content: Text("""
                                                **Приложение 3**
                                                Алгоритм оказания медицинской помощи пациентам с острым нарушением мозгового кровообращения на амбулаторном этапе
                                                """
                                               )).buildGrayTextCenter()
                        .multilineTextAlignment(.center)
                    MyViewBuilder(title: Text("1. Этап амбулаторно-поликлинической организации здравоохранения"),
                                  content: Text("""
                                    Каждый пациент с подозрением на острое нарушение мозгового кровообращения (далее – ОНМК) нуждается в экстренной медицинской помощи.
                                    
                                    **Алгоритм диагностики при подозрении на ОНМК**:
                                    
                                    1. **Сбор анамнеза и общесоматическое обследование**:
                                    - **исключение возможной черепно-мозговой травмы**;
                                    - **выявление заболеваний, являющихся факторами риска инсульта**: сердечно-сосудистых (АГ, болезни сердца – пороки, фибрилляция предсердий и т.д., проявления атеросклероза), сахарного диабета (СД), гемостазиопатии;
                                    - **выявление и оценка клинических проявлений соматических заболеваний, оказывающих влияние на течение инсульта**, выбор терапии и/или требующих проведения специального лечения (хронические обструктивные заболевания легких, туберкулез, СД, язвенная болезнь желудка и двенадцатиперстной кишки, патология вен нижних конечностей, онкозаболевания и др.);
                                    - **уточнение семейного анамнеза**.
                                    
                                    2. **Неврологический осмотр**:
                                    - **оценка уровня сознания** (ясное, оглушение, сопор, кома);
                                    - **оценка нарушений высших корковых функций**: памяти, речи, способности писать, читать, считать, ориентация в пространстве и собственной личности;
                                    - **оценка зрительной сферы** (снижение остроты зрения, изменение полей зрения и др.);
                                    - **оценка черепной иннервации**: зрачковые реакции; расположение и объем движений глазных яблок, чувствительность на лице, мимическая мускулатура, жевание, глотание, звучность голоса и др.;
                                    - **оценка двигательной сферы**: слабость или отсутствие движений в конечностях, способность стоять, ходить, координация движений, наличие гиперкинезов.
                                     
                                    3. **Менингиальные симптомы**.
                                     
                                    **Основание для постановки диагноза ОНМК**: остро развившиеся неврологические нарушения, которые могут быть объяснены очагом сосудистого происхождения при наличии признаков сердечно-сосудистого заболевания, нарушений системы гемостаза.
                                    
                                    **В пользу диагноза свидетельствует возникновение за короткий период времени двигательных, чувствительных и нередко речевых нарушений на фоне значительного эмоционального, физического напряжения, сразу после сна или приема горячей ванны, при высоком или низком АД**.
                                    Дополнительная информация о наличии у больного любых сосудистых заболеваний (недавно перенесенный инфаркт миокарда, мерцательная аритмия, атеросклероз сосудов нижних конечностей и т.д.) или факторов риска делает первоначальный диагноз более достоверным.
                                    
                                    **При подозрении на ОНМК необходимо срочно вызвать бригаду скорой медицинской помощи (СМП)**.
                                    До приезда бригады СМП пациенту необходимо обеспечить постельный режим с приподнятым на 30° головным концом кровати, измерить артериальное давление (АД).
                                    
                                    **Коррекция АД в первые сутки развития инсульта проводится при САД >220 мм рт. ст., ДАД >120 мм рт. ст**. Наличие сопутствующей сердечной недостаточности, расслаивающей аневризмы аорты, острого инфаркта миокарда, острой почечной недостаточности, необходимости проведения тромболизиса или внутривенного введения гепарина требует начала антигипертензивной терапии при меньших цифрах. **АД снижают не более чем на 10–15 % от исходного уровня в течение 24 часов**. Если пациент ранее получал антигипертензивное лечение, целесообразно его продолжение, при этом АД снижают до уровня, превышающего на 15–20 мм рт. ст. «привычный».
                                    
                                    **Применяют каптоприл 12,5 мг внутрь**. Если через 30–40 мин АД снизилось на 15 % – повторный прием 12,5 мг через 3 часа. Если АД не изменилось или повысилось – 25 мг внутрь. **Возможно применение клонидина 0,5–2,0 мл 0,1%-го **раствора внутривенно или внутримышечно.
                                    **При ДАД >140 мм рт.ст.** (по результатам двукратного измерения с интервалом 5 мин) – **нитроглицерин 20–400 мкг/мин** в/в под контролем АД.
                                    """)).buildDualBlockBlueGray(isTextExpanded: isTextExpanded1)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded1.toggle()
                            }
                        }
                    MyViewBuilder(title: Text("2. Этап скорой медицинской помощи"),
                                  content: Text("""
                                    **Медицинская помощь пациентам с ОНМК на догоспитальном этапе оказывается специализированными и линейными бригадами СМП, в функции которых входят диагностика ОНМК, оказание неотложной помощи и экстренная транспортировка пациента в приемное отделение стационара**.
                                    
                                    **Алгоритм действий бригады СМП**:
                                    - жалобы, анамнез;
                                    - общесоматическое обследование;
                                    - неврологический осмотр;
                                    - ЭКГ;
                                    - определение содержания глюкозы в крови (по показаниям).
                                    
                                    При подозрении на инсульт необходимо обеспечить пациенту строгий постельный режим с приподнятым на 30° головным концом кровати.
                                    
                                    **Коррекция АД проводится аналогично амбулаторно-поликлиническому этапу**.
                                    
                                    **При артериальной гипотензии (систолическое АД ниже 90 мм рт. ст.)**:
                                    **объемзаместительная терапия** (гидроксиэтилкрахмал 6 %, 10%-й раствор 250–500 мл/сут., 10%-й раствор декстрана/натрия хлорида 250–500 мл/сут., **при отсутствии эффекта – допамин 50 мг** (0,5 % – 10 мл) **в 250 мл 0,9%-го раствора хлорида натрия** внутривенно капельно (**10–20 мкг/кг/мин**)).
                                    
                                    **Нейропротективная терапия**: **эмоксипин 3% раствор 10–15 мл** внутривенно капельно, **магнезии сульфат 25%-й раствор 10–20 мл** внутривенно, **глицин до 1,0 г/сут**. сублингвально.
                                    
                                    **При головной боли**: **метамизол натрия 2 мл** 50%-го раствора внутривенно или внутримышечно, **баралгина 5 мл** внутривенно или внутримышечно, **трамадол 50–100 мг** (1–2 мл раствора) внутривенно на 10 мл 0,9%-го раствора натрия хлорида или внутримышечно.
                                    
                                    **При возбуждении, судорогах**: **диазепам 2 мл** 0,5%-го раствора внутривенно в 20 мл 0,9%-го раствора натрия хлорида или внутримышечно.
                                    
                                    **При повторной рвоте**: **метоклопрамид 2 мл** (10 мг) внутримышечно или на 0,9%-м растворе натрия хлорида внутривенно.
                                    
                                    **При гипертермии свыше 38 °С**: **метамизол натрия 2 мл** 50%-го раствора внутривенно на 10 мл 0,9%-го раствора натрия хлорида или внутримышечно.
                                    """)).buildDualBlockBlueGray(isTextExpanded: isTextExpanded2)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded2.toggle()
                            }
                        }
                    MyViewBuilder(title: Text("3. Транспортировка"),
                                  content: Text("""
                                    **При наличии показаний и отсутствии противопоказаний осуществляется транспортировка в приемное отделение больницы с целью госпитализации в специализированное неврологическое отделение для инсультных больных** (отделение реанимации, неврологическое отделение общего профиля или терапевтическое отделение на закрепленные койки для лечения больных инсультом).
                                     
                                    **Показания для госпитализации в неврологический стационар**:
                                    - транзиторная ишемическая атака (ТИА);
                                    - инфаркт мозга;
                                    - внутримозговое, субарахноидальное кровоизлияние;
                                    - острая гипертоническая энцефалопатия;
                                    - инсульт, не уточненный как кровоизлияние или инфаркт;
                                    - тромбоз мозговых вен и синусов.
                                     
                                    **Противопоказания к госпитализации в неврологический стационар**:
                                    - острые инфекционные заболевания;
                                    - туберкулез легких, активная стадия;
                                    - психические расстройства в стадии обострения, предшествовавшие ОНМК;
                                    - тяжелая сопутствующая соматическая патология в стадии декомпенсации;
                                    - некурабельные злокачественные новообразования.
                                     
                                    **Противопоказания к транспортировке пациента с ОНМК**:
                                    - атоническая кома;
                                    - некупируемые нарушения дыхания;
                                    - отек легких;
                                    - эпилептический статус;
                                    - выраженная артериальная гипертензия (АД 300/150 мм рт. ст. и выше);
                                    - выраженная артериальная гипотензия (АД 70/40 мм рт. ст. и ниже).
                                    
                                    **Транспортировка указанных пациентов, за исключением атонической комы, возможна только после устранения перечисленных нарушений**.
                                    
                                    **При транспортировке специалист бригады СМП следит за жизненно важными функциями**: уровнем сознания, проходимостью верхних дыхательных путей, дыханием и гемодинамикой. Интубация и искусственная вентиляция легких обязательны пациентам в коматозном состоянии при высоком риске аспирационных осложнений и при наличии дыхательной недостаточности.
                                    """)).buildDualBlockBlueGray(isTextExpanded: isTextExpanded3)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded3.toggle()
                            }
                        }
                    
                        VStack  {
                            MyViewBuilder(title: Text("Пункция"),
                                          content: Text("""
                                            4. Дифференциальная диагностика типа инсульта
                                            """)).buildBlue592Text(isTextExpanded: isTextExpanded4)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded4.toggle()
                                    }
                                }
                            if isTextExpanded4{
                                VStack (spacing:1){
                                    MyViewBuilder(title: Text(""),
                                                  content: Text("""
                                            **Важной задачей догоспитального этапа является предположительная диагностика типа инсульта, влияющая на тактику дальнейшего лечения, в том числе – возможность проведения тромболитической терапии**.
                                            
                                            От тактики ведения пациента на догоспитальном этапе во многом зависят исход заболевания и судьба пациента.
                                            """)).buildGrayInHiddenText()
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded4.toggle()
                                            }
                                        }
                                    ImagePDF(image: Image("Prikaz155-1"), title: "").buildECGPad(isTextExpanded: isTextExpanded5)
                                        .onTapGesture (count: 1, perform: {
                                            withAnimation(.easeInOut){
                                                UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded5.toggle()
                                            }
                                        })
                                        .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded5 ? 1160 : 1160) : (isTextExpanded5 ? 537 : 1074))
                                        .cornerRadius(10)
                                        .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                        .padding(5)
                                }
                                
                            }
                        }
                        .background(Color.grayButton)
                        .cornerRadius(10)
                        .overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                        )
                    
                    
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
                    Text("Приказ 155")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«ОНМК на амбулаторном этапе»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            
        }
    }
    
}
#Preview {
    Prikaz155()
}

