//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct _2Oksigenoterapiya: View {
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
                                            **Оксигенотерапия**
                                            на примере аппарата ИВЛ MEDUMAT Standard 2
                                            """
                                           )).buildGrayTextCenter()
                    .multilineTextAlignment(.center)
                VStack {
                    Image("Oksigenoterapiya1")
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
                        MyViewBuilder(title: Text("Через носовой катетер"),
                                      content: Text("""
                                        Через носовой катетер
                                        """)).buildBlue59Text(isTextExpanded: isTextExpanded1)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded1.toggle()
                                }
                            }
                        if isTextExpanded1{
                            VStack (spacing:1){
                                Image("Oksigenoterapiya2")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Rectangle())
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(10)
                                MyViewBuilder(title: Text(""),
                                              content: Text("""
                                        1. Аппарат ИВЛ должен быть **выключен**.
                                        2. Бактериально-вирусный **фильтр не требуется**.
                                        3. **Закрепить кислородный катетер** как на картинке.
                                        """)).buildGrayInHiddenText()
                                
                                Image("Oksigenoterapiya3")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Rectangle())
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(10)
                                MyViewBuilder(title: Text(""),
                                              content: Text("""
                                        4. **Присоединить кислородный катетер к отверстию для ингаляции на редукторе баллона**.
                                        """)).buildGrayInHiddenText()
                                
                                Image("Oksigenoterapiya4")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Rectangle())
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(10)
                                MyViewBuilder(title: Text(""),
                                              content: Text("""
                                        **Повернуть рукоятку выбора скорости потока в соответствии с таблицей**:
                                        """)).buildGrayInHiddenText()
                                HStack {
                                    Spacer()
                                    VStack (spacing: 1){
                                        HStack (alignment: .bottom){
                                            Text("1 л/мин")
                                                .font(.footnote)
                                            .bold()
                                            Text("24% O2")
                                                .font(.footnote)
                                        }
                                        HStack (alignment: .bottom){
                                        Text("2 л/мин")
                                            .font(.footnote)
                                            .bold()
                                        Text("28% O2")
                                            .font(.footnote)
                                        }
                                        HStack (alignment: .bottom){
                                        Text("3 л/мин")
                                            .font(.footnote)
                                            .bold()
                                        Text("32% O2")
                                            .font(.footnote)
                                        }
                                        HStack (alignment: .bottom){
                                            Text("4 л/мин")
                                                .font(.footnote)
                                                .bold()
                                            Text("26% O2")
                                                .font(.footnote)
                                        }
                                    }
                                Spacer(minLength: 30)
                                VStack (spacing: 1){
                                    HStack (alignment: .bottom){
                                        Text("5 л/мин")
                                            .font(.footnote)
                                        .bold()
                                        Text("40% O2")
                                            .font(.footnote)
                                    }
                                    HStack (alignment: .bottom){
                                    Text("6 л/мин")
                                        .font(.footnote)
                                        .bold()
                                    Text("44% O2")
                                        .font(.footnote)
                                    }
                                    HStack (alignment: .bottom){
                                    Text("7 л/мин")
                                        .font(.footnote)
                                        .bold()
                                    Text("48% O2")
                                        .font(.footnote)
                                    }
                                    HStack (alignment: .bottom){
                                        Text("8 л/мин")
                                            .font(.footnote)
                                            .bold()
                                        Text("52% O2")
                                            .font(.footnote)
                                    }
                                }
                                    Spacer()
                                }
                                MyViewBuilder(title: Text(""),
                                              content: Text("""
                                        5. По окончании **утилизируйте носовой катетер**.
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
                ZStack {
                    MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                    VStack  {
                        MyViewBuilder(title: Text("Через простую маску"),
                                      content: Text("""
                                        Через простую маску
                                        """)).buildBlue59Text(isTextExpanded: isTextExpanded2)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded2.toggle()
                                }
                            }
                        if isTextExpanded2{
                            VStack (spacing:1){
                                Image("Oksigenoterapiya5")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Rectangle())
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(10)
                                MyViewBuilder(title: Text(""),
                                              content: Text("""
                                        1. Аппарат ИВЛ должен **быть выключен**.
                                        2. Бактериально-вирусный **фильтр не требуется**.
                                        3. **Подключить кислородную магистраль к лицевой маске и закрепить маску на голове пациента**.
                                        4. **Повернуть рукоятку выбора скорости потока** в соответствии с таблицей.
                                        
                                        **Не используйте поток <5 л/мин учитывая риск повторного вдоха выдыхаемого CO2 и возрастающего сопротивления во время вдоха**.
                                        """)).buildGrayInHiddenText()
                                
                                HStack {
                                    Spacer()
                                    VStack (spacing: 1){
                                        HStack (alignment: .bottom){
                                            Text("5-6 л/мин")
                                                .font(.footnote)
                                            .bold()
                                            Text("40% O2")
                                                .font(.footnote)
                                        }
                                        HStack (alignment: .bottom){
                                        Text("6-7 л/мин")
                                            .font(.footnote)
                                            .bold()
                                        Text("50% O2")
                                            .font(.footnote)
                                        }
                                        HStack (alignment: .bottom){
                                        Text("7-8 л/мин")
                                            .font(.footnote)
                                            .bold()
                                        Text("60% O2")
                                            .font(.footnote)
                                        }
                                        
                                    }
                                
                                    Spacer()
                                }
                                MyViewBuilder(title: Text(""),
                                              content: Text("""
                                        5. По окончании **утилизируйте лицевую маску и кислородную магистраль**.
                                        """)).buildGrayInHiddenText()
                                
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
                        MyViewBuilder(title: Text("Через высокопоточную маску"),
                                      content: Text("""
                                        Через высокопоточную маску
                                        """)).buildBlue59Text(isTextExpanded: isTextExpanded3)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded3.toggle()
                                }
                            }
                        if isTextExpanded3{
                            VStack (spacing:1){
                                Image("Oksigenoterapiya6")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Rectangle())
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(10)
                                MyViewBuilder(title: Text(""),
                                              content: Text("""
                                        1. **Присоединить бактериально-вирусный фильтр к дыхательному контуру** (не требуется при использовании одноразового контура).
                                        2. **Включить аппарат. Выбрать пункт «Новый пациент», ввести рост и пол**.
                                        3. **Выбрать режим On Demand**. Настройки режима оставить **по умолчанию** (FiO2=1.0, pMax = 30 mbar).
                                        4. **Плотно приложить маску подходящего размера к лицу**.
                                        5. Данный вариант оксигенотерапии больше подходит **для кратковременного применения**.
                                        6. **Для длительной оксигенотерапии используйте анестезиологические маски**, закрепляя маску на лице с помощью ремня из комплекта.
                                        """)).buildGrayInHiddenText()
                                
                                Image("Oksigenoterapiya7")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Rectangle())
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(10)
                                MyViewBuilder(title: Text(""),
                                              content: Text("""
                                        7. По окончании **утилизируйте бактериально-вирусный фильтр**, а **лицевую маску сдайте для дезинфекции и стерилизации**.
                                        """)).buildGrayInHiddenText()
                                
                            }
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded3.toggle()
                                }
                            }
                        }
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
                                                """
                                           )).buildDualBlockBlueGray(isTextExpanded: isTextExpanded4)
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded4.toggle()
                        }
                    }
                MyViewBuilder(title: Text("Осложнения"),
                              content: Text("""
                                                1. **Побочные действия кислорода** — использование кислорода в высокой концентрации (>50 %, или FiO2 >0,5) сопряжено с токсическим действием на ткани, которые зависят от концентрации кислорода и времени экспозиции;
                                                
                                                **Различают 4 симптомокомплекса**:
                                                – **воспаление трахеи и бронхов** (воспалительные изменения с чрезмерной сухостью слизистой оболочки и нарушением мукоцилиарного клиренса)
                                                – **абсорбционный ателектаз** (при дыхании 100% кислородом происходит вымывание азота, который, среди прочего предотвращает спадание альвеол, а кислород, замещающий азот, подлежит быстрой абсорбции)
                                                – **острое повреждение легких** (невозможно дифференцировать патологические изменения, которые принуждают к терапевтическому применению кислорода в высоких концентрациях)
                                                – **бронхолёгочная дисплазия** (у новорождённых).

                                                2. **Последствия дыхания сухой и холодной газовой смесью** (особенно длительного): высыхание и изъязвление слизистых оболочек, замедление мукоцилиарного клиренса, задержка секрета и увеличение его вязкости (что приводит к образованию очагов ателектаза), спазм бронхов, инфекция.
                                                """
                                           )).buildDualBlockBlueGray(isTextExpanded: isTextExpanded5)
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded5.toggle()
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
    _2Oksigenoterapiya()
}


