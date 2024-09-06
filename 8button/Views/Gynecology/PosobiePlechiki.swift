//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct PosobiePlechiki: View {
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
    var body: some View {
        ScrollView {
            VStack (spacing: 5) {
                VStack (spacing: 1){
                    MyViewBuilder(title: Text("1"),
                                  content: Text("""
                                                **Дистоция плечиков** — осложнение периода изгнания, развивающееся в результате диспропорции, т.е. клинического несоответствия плечевого пояса плода тазу матери.
                                                    
                                                **Несмотря на то, что головка родилась, и ребенок делает попытки сделать вдох, его грудная клетка сильно сдавлена стенками родового канала, и легкие не могут расправиться**. В результате уменьшения объема матки, а иногда и за счет сдавления пуповины нарушается плодово-плацентарный кровоток, и плод может погибнуть от асфиксии в течение короткого времени.
                                                
                                                **В отечественной литературе термин «дистоция плечиков» идентифицируется с «затрудненным выведением плечиков», что на практике не совсем одно и то же**.
                                                **Дистоция плечиков** возникает при устанавливании плечиков в прямом размере и задержке переднего плечика над лонным сочленением, а заднего под мысом или вколачивании плечиков между лонным сочленением и крестцовой впадиной (**рис. 5**). Потягивание за головку в этом случае не сопровождается рождением плечиков, задержка составляет более одной минуты после рождения головки и дальнейшее изгнание становится невозможным без применения специальных пособий.
                                                """)).buildGrayInHiddenText()
                    Image("Akusheri5")
                        .resizable()
                        .scaledToFit()
                        .clipShape(Rectangle())
                        .cornerRadius(10)
                        .overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                        )
                        .padding(.horizontal, 5)
                    MyViewBuilder(title: Text("1"),
                                  content: Text("""
                                                        **В случае дистоции плечиков необходимо действовать быстро, избегая при этом трех вещей**:
                                                        - **не тянуть**, т.е. не производить чрезмерных тракций за головку;
                                                        - **не толкать**, т.е. не выдавливать плод;
                                                        - **не сгибать**, т.е. не совершать чрезмерных латеральных сгибаний головки.
                                                        
                                                        **В англоязычном акушерстве для обозначения приемов оказания
                                                        помощи при дистоции плечиков используют мнемоническую аббревиатуру HELPERR, что означает**:
                                                        **H – help** – позвать на помощь,
                                                        **E – evaluate for episiotomy** – рассмотреть необходимость эпизиотомии (обычно выполняют большую медиолатеральную эпизиотомию под адекватной пудендальной анестезией),
                                                        **L – legs, the Mc Roberts maneuver** – ноги, приём Мак-Робертса (максимальное сгибание ног роженицы в тазобедренных суставах),
                                                        **P – pressure** – давление рукой помощника над лоном дорсально или косо дорсально,
                                                        **E – enter, Woods, Rubin maneuvers** – приёмы Вудса и Рубина путем введения руки во влагалище для внутреннего поворота,
                                                        **R – roll** – поворот роженицы по Гаскину в коленно-локтевую позу,
                                                        **R – remove the posterior arm** – извлечение задней ручки «умывающим» движением в направлении от спинки к груди.
                                                                                                                
                                                        **Мнемонический термин «HELPERR»** был предложен Carlan и соавт. для того, чтобы в острой ситуации быстро вспомнить последовательность действий при данном осложнении.
                                                                                                                
                                                        **При дистоции плечиков легкой степени** мероприятия, как правило, включают приемы H E L P, при умеренной – E R R.
                                                        **При выраженной дистоции плечиков** не исключают возможность извлечения путем перелома ключицы (сlavicle fracture), а в случае **полной невозможности рождения плечевого пояса** – вправление головки обратно в полость малого таза с последующим кесаревым сечением (Zavenelli).
                                                                                                                
                                                        **Одно из основных условий оказания всех пособий при дистоции плечиков – это исключение потуг и адекватное обезболивание! При этом эффективным может быть любой из выше указанных приёмов, однако ни один из них не является универсальным**.
                                                        """)).buildGrayInHiddenText()
                }
                .background(Color.grayButton)
                .cornerRadius(10)
                .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                )
                
                    VStack (spacing: 1){
                        MyViewBuilder(title: Text(""),
                                      content: Text("""
                                                    Приемы по Mazzanti и Rubin
                                                    """)).buildBlue592Text(isTextExpanded: isTextExpanded2)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded2.toggle()
                                }
                            }
                        if isTextExpanded2 {
                            VStack {
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                                **Первый и самый простой ручной приём, применяемый при дистоции плечиков** – это прямое давление над лоном в направлении несколько краниальнее лона (**по Mazzanti**) или поочерёдное давление вправо и влево (**по Rubin**). чтобы перевести плечики в косой размер таза (рис. 6).
                                                                """)).buildGrayInHiddenText()
                                
                                Image("Akusheri6")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Rectangle())
                                    .cornerRadius(10)
                                    .overlay(RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                    )
                                    .padding(.horizontal, 5)
                                    .padding(.bottom, 5)
                                
                                
                            }
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded2.toggle()
                                }
                            }
                        }
                    }
                    .background(Color.grayButton)
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                    )
                
                    VStack (spacing: 1){
                        MyViewBuilder(title: Text(""),
                                      content: Text("""
                                                    Приёмы Вудса, Хиббарда и Рубина
                                                    """)).buildBlue592Text(isTextExpanded: isTextExpanded3)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded3.toggle()
                                }
                            }
                        if isTextExpanded3 {
                            VStack {
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                                **Следующий по сложности – это приём Вудса или его модификация (обратный приём Вудса)**.
                                                                **По Вудсу** давление оказывают на переднюю поверхность заднего плечика и отводят его от грудки («завинчивание»).
                                                                **По Рубину** давление оказывают на заднюю поверхность заднего плечика с целью приведения обоих плечиков к грудине, что с точки зрения физиологии плода более целесообразно (рис. 7).
                                                                """)).buildGrayInHiddenText()
                                
                                Image("Akusheri7")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Rectangle())
                                    .cornerRadius(10)
                                    .overlay(RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                    )
                                    .padding(.horizontal, 5)
                                
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                                **По Хиббарду** давят на головку, пытаясь несколько «затолкать» её обратно во влагалище. Переднее плечико отталкивают по направлению к прямой кишке, т.е. отодвигают от лонного сочленения. Для выполнения данного приема необходим помощник, чтобы сначала отдавить плечико, а затем оказывать давление на дно матки.
                                                                
                                                                **Пособие состоит из нескольких последовательных этапов**:
                                                                1. Давление ладонью одновременно на головку, челюсти и выйную область по направлению к прямой кишке и немного краниально, чтобы облегчить высвобождение переднего плечика.
                                                                2. После высвобождения переднего плечика – сильное давление на дно матки с одновременным смещением давления на челюсти и выйную область несколько в сторону прямой кишки.
                                                                
                                                                **Основное требование при выполнении данного пособия** — достаточно сильное и постоянное давление ассистента на дно матки. При правильном применении приема можно избежать повреждения плечевого сплетения и гипоксических повреждений из-за затяжного изгнания.
                                                                
                                                                **При дистоции плечиков средней степени предложено применять сочетание приёмов Хиббарда и обратный приём Вудса**.
                                                                """)).buildGrayInHiddenText()
                            }
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded3.toggle()
                                }
                            }
                        }
                    }
                    .background(Color.grayButton)
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                    )
                
                    VStack (spacing: 1){
                        MyViewBuilder(title: Text(""),
                                      content: Text("""
                                                    Прием освобождения задней ручки
                                                    """)).buildBlue592Text(isTextExpanded: isTextExpanded4)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded4.toggle()
                                }
                            }
                        if isTextExpanded4 {
                            VStack {
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                                **При умеренной дистоции плечиков в качестве ручного пособия можно попытаться освободить сначала заднюю ручку как при запрокидывании ручек при тазовом предлежании, но в обратном направлении** (рис. 8).
                                                                """)).buildGrayInHiddenText()
                                Image("Akusheri8")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Rectangle())
                                    .cornerRadius(10)
                                    .overlay(RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                    )
                                    .padding(.horizontal, 5)
                                    .padding(.bottom, 5)
                            }
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded4.toggle()
                                }
                            }
                        }
                    }
                    .background(Color.grayButton)
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                    )
                
                
                    VStack (spacing: 1){
                        MyViewBuilder(title: Text(""),
                                      content: Text("""
                                                    Приём Мак-Робертса
                                                    """)).buildBlue592Text(isTextExpanded: isTextExpanded5)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded5.toggle()
                                }
                            }
                        if isTextExpanded5 {
                            VStack {
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                                **Для выполнения приема Мак-Робертса требуется два помощника**. Бёдра роженицы приводят в соприкосновение с животом, добиваясь при этом уменьшения лордоза и наклонения таза (рис. 9).
                                                                
                                                                **Несмотря на то, что данный прием не уменьшает размеров малого таза, при движении лонного сочленения краниально создаются условия для высвобождения переднего плечика. Если нет немедленного эффекта, добавляют все вышеуказанные приёмы**.
                                                                """)).buildGrayInHiddenText()
                                
                                Image("Akusheri9")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Rectangle())
                                    .cornerRadius(10)
                                    .overlay(RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                    )
                                    .padding(.horizontal, 5)
                                    .padding(.bottom, 5)
                            }
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded5.toggle()
                                }
                            }
                        }
                    }
                    .background(Color.grayButton)
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                    )
                
                
                    VStack (spacing: 1){
                        MyViewBuilder(title: Text(""),
                                      content: Text("""
                                                    Заправление головки по Заванелли
                                                    """)).buildBlue592Text(isTextExpanded: isTextExpanded6)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded6.toggle()
                                }
                            }
                        if isTextExpanded6 {
                            VStack {
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                                **При безуспешной попытке родить плечевой пояс** (**тяжелая дистоция плечиков**) J. A. O’Leary, H. B. Leonetti (1990) рекомендуют прибегнуть к **заправлению головки по Заванелли** (cephalic replacement).
                                                                
                                                                **Прием предполагает выполнение следующих манипуляций**:
                                                                1. начать подготовку к кесареву сечению;
                                                                2. начать интенсивный токолиз;
                                                                3. при необходимости установить кардиомониторинг;
                                                                4. быстро произвести заправление головки.
                                                                
                                                                **Головка, по утверждению авторов, легко заводится при постоянном и достаточно энергичном усилии, оказываемом ладонью**. Головку сгибают и подталкивают вверх до точки «0» по Бишопу, что соответствует уровню «большой сегмент в полости малого таза» (рис.10). При необходимости ассистент удерживает головку на этом уровне стояния до родоразрешения.
                                                                """)).buildGrayInHiddenText()
                                
                                Image("Akusheri10")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Rectangle())
                                    .cornerRadius(10)
                                    .overlay(RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                    )
                                    .padding(.horizontal, 5)
                                    .padding(.bottom, 5)
                            }
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded6.toggle()
                                }
                            }
                        }
                    }
                    .background(Color.grayButton)
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                    )
                
                
                    VStack (spacing: 1){
                        MyViewBuilder(title: Text(""),
                                      content: Text("""
                                                    Рекомендации ведения родов при узком тазе
                                                    """)).buildBlue592Text(isTextExpanded: isTextExpanded7)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded7.toggle()
                                }
                            }
                        if isTextExpanded7 {
                            VStack {
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                                **В отечественной литературе специальных приемов, применяемых при дистоции плечиков, не описано, однако имеется информационное письмо с рекомендациями, которые уместны и при дистоции плечиков**:
                                                                
                                                                - **На родах присутствуют два врача акушера-гинеколога**, владеющие приёмами оказания помощи при дистоции плечиков, **анестезиолог и неонатолог-реаниматолог**.
                                                                
                                                                - **Обязательное рассечение промежности под адекватным обезболиванием** (предпочтительна срединно-латеральная эпизиотомия).
                                                                
                                                                - **Захват головки плода двумя руками в щёчно-височных областях, осторожное потягивание головки книзу до тех пор, пока под лоно не подойдет переднее плечико на границе верхней и средней трети**. В это время ассистент осуществляет умеренное давление рукой над лобком. Затем головка приподнимается кпереди и освобождается заднее плечико.
                                                                
                                                                - **Максимальное сгибание бёдер роженицы в тазобедренных и коленных суставах и отведение их в сторону живота**.
                                                                
                                                                - **Одноименной рукой акушер захватывает, сгибает и выводит заднюю ручку плода, затем выводится переднее плечико**.
                                                                
                                                                - **Акушер рукой, введённой во влагалище, смещает переднее плечико в сторону грудки и кзади**. Ассистент в это время проводит умеренное давление на дно матки и в надлобковой области кзади и латерально в сторону живота матери.
                                                                
                                                                - **Акушер рукой, введённой под заднее плечико плода, поворотом на 180° переводит его в переднее и оно извлекается**.
                                                                
                                                                - **Все ручные манипуляции выполняют последовательно по мере увеличения сложности их исполнения**: вначале применяют менее сложные и менее травматичные для плода приемы, при их неэффективности – переходят к более сложным.
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
                    Text("Акушерское пособие")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("""
                    «Дистоция плечиков»
                    """)
                    .font(.caption2)
                    .foregroundStyle(Color.toolBar)
                }
            }
            
        }
    }
    
}
#Preview {
    PosobiePlechiki()
}

