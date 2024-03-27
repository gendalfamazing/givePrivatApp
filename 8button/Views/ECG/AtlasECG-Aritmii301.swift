//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct AtlasECGAritmii301: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @State private var isTextExpanded1 = true
    @State private var isTextExpanded2 = true
    @State private var isTextExpanded3 = true
    @State private var isTextExpanded4 = true
    @State private var isTextExpanded5 = true
    @State private var isTextExpanded6 = true
    @State private var isTextExpanded7 = true
    @State private var isTextExpanded8 = true
    @State private var isTextExpanded9 = true
    @State private var isTextExpanded10 = true
    @State private var isTextExpanded11 = true
    @State private var isTextExpanded12 = true
    @State private var isTextExpanded13 = true
    @State private var isTextExpanded14 = true
    @State private var isTextExpanded15 = true
    @State private var isTextExpanded16 = true
    @State private var isTextExpanded17 = true
    @State private var isTextExpanded18 = true
    @State private var isTextExpanded19 = true
    @State private var isTextExpanded20 = true
    
    var body: some View {
            ScrollView {
                VStack (spacing: 5) {
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        VStack (spacing: 1) {
                            LazyVStack (spacing:1) {
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        Аритмия у пожилой женщины с анамнезом ревматического поражения митрального клапана. **Мерцание предсердий.**
                                                        """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGAritmii301"), title: "").buildECG(isTextExpanded: isTextExpanded1)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded1.toggle()
                                        }
                                    })
                                    .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded1 ? 520 : 520) : (isTextExpanded1 ? 240 : 480))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        Тахикардия с широкими комплексами QRS у 70-летней женщины.  **Пароксизмальная наджелудочковая тахикардия** с блокадой ПНПГ.
                                                        """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGAritmii302"), title: "").buildECG(isTextExpanded: isTextExpanded2)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded2.toggle()
                                        }
                                    })
                                    .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded2 ? 520 : 520) : (isTextExpanded2 ? 240 : 480))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        Молодой взрослый мужчина с сердцебиениями. **Неустойчивый синдром WPW.** 8-ой и 9-ый сокращения показывают образец WPW-синдром с укороченными PQ, широкими QRS и волнами дельты.
                                                        """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGAritmii303"), title: "").buildECG(isTextExpanded: isTextExpanded3)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded3.toggle()
                                        }
                                    })
                                    .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded3 ? 520 : 520) : (isTextExpanded3 ? 240 : 480))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        Молодой мужчина с усталостью. **АВ-блокада II степени с проведением 3:2, 2:1, и 4:3.** Неопределенные изменения ST в задне-боковой области. (**НЕ предсердные экстрасистолы!**)
                                                        """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGAritmii304"), title: "").buildECG(isTextExpanded: isTextExpanded4)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded4.toggle()
                                        }
                                    })
                                    .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded4 ? 520 : 520) : (isTextExpanded4 ? 240 : 480))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        **Трепетание предсердий с изменяющимся проведением.** Желудочковый ответ нерегулярен. Проводимость - не постоянно 3:1 или 4:1, а скорее комбинация этих интервалов.
                                                        """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGAritmii305"), title: "").buildECG(isTextExpanded: isTextExpanded5)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded5.toggle()
                                        }
                                    })
                                    .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded5 ? 520 : 520) : (isTextExpanded5 ? 240 : 480))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        Молодой мужчина с сердцебиениями м обмороком. **Синдром WPW.** Классическая триада WPW: укорочение PQ, широкий QRS и волны дельта. Волны дельта отрицательны в III и aVF, и положительны в V1-V3.
                                                        """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGAritmii306"), title: "").buildECG(isTextExpanded: isTextExpanded6)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded6.toggle()
                                        }
                                    })
                                    .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded6 ? 520 : 520) : (isTextExpanded6 ? 240 : 480))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        Эта кардиограмма человека средних лет с остановкой сердца в анамнезе. **Предсердная тахикардия с проведением 2:1** и нарушением внутрижелудочковой проводимости на фоне обширного ИМ.
                                                        """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGAritmii307"), title: "").buildECG(isTextExpanded: isTextExpanded7)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded7.toggle()
                                        }
                                    })
                                    .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded7 ? 520 : 520) : (isTextExpanded7 ? 240 : 480))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        64-летний мужчина с болями в груди в состоянии покоя. Гипертрофия ЛП. **Желудочковая экстрасистолия с полной компенсационной паузой.** Q-позитивный передний ИМ. Снижение вольтажа R в грудных отведениях. (**Не путать с мерцанием предсердий с регулярным желудочковым ответом.!**)
                                                        """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGAritmii308"), title: "").buildECG(isTextExpanded: isTextExpanded8)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded8.toggle()
                                        }
                                    })
                                    .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded8 ? 520 : 520) : (isTextExpanded8 ? 240 : 480))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        Заметное снижение вольтажа обусловлено гидропневмотораксом. **Мерцание предсердий.**
                                                        """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGAritmii309"), title: "").buildECG(isTextExpanded: isTextExpanded9)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded9.toggle()
                                        }
                                    })
                                    .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded9 ? 520 : 520) : (isTextExpanded9 ? 240 : 480))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        55-летняя женщина с ревматическим поражением митрального клапана и тахикардией. **Трепетание предсердий с проведением 2:1.**
                                                        """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGAritmii310"), title: "").buildECG(isTextExpanded: isTextExpanded10)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded10.toggle()
                                        }
                                    })
                                    .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded10 ? 520 : 520) : (isTextExpanded10 ? 240 : 480))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        Пожилая женщина с недавним синкопальным эпизодом. **Мерцание предсердий.**
                                                        """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGAritmii311"), title: "").buildECG(isTextExpanded: isTextExpanded11)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded11.toggle()
                                        }
                                    })
                                    .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded11 ? 520 : 520) : (isTextExpanded11 ? 240 : 480))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        **Дыхательная синусовая аритмия.**
                                                        """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGAritmii312"), title: "").buildECG(isTextExpanded: isTextExpanded12)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded12.toggle()
                                        }
                                    })
                                    .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded12 ? 520 : 520) : (isTextExpanded12 ? 240 : 480))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        **Синдром WPW.**
                                                        """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGAritmii313"), title: "").buildECG(isTextExpanded: isTextExpanded13)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded13.toggle()
                                        }
                                    })
                                    .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded13 ? 520 : 520) : (isTextExpanded13 ? 240 : 480))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        Пожилой человек с гипертонией и астмой жалуется на сердцебиения и головокружение. **Пароксизмальная наджелудочковая тахикардия, наиболее вероятно AV-узловая** (re-entry).
                                                        """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGAritmii314"), title: "").buildECG(isTextExpanded: isTextExpanded14)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded14.toggle()
                                        }
                                    })
                                    .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded14 ? 520 : 520) : (isTextExpanded14 ? 240 : 480))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        Эта кардиограмма 76-летнего мужчины. **Синусовая брадикардия.** Задне-диафрагмальный ИМ. Удлинение интервала PQ. Блокада ПНПГ. (**НЕ путать с синдромом WPW!**)!
                                                        """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGAritmii315"), title: "").buildECG(isTextExpanded: isTextExpanded15)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded15.toggle()
                                        }
                                    })
                                    .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded15 ? 520 : 520) : (isTextExpanded15 ? 240 : 480))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        **Мерцание предсердий.**
                                                        """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGAritmii316"), title: "").buildECG(isTextExpanded: isTextExpanded16)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded16.toggle()
                                        }
                                    })
                                    .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded16 ? 520 : 520) : (isTextExpanded16 ? 240 : 480))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        ЭКГ пожилой женщины с головокружением после терапии мерцательной аритмии. **АВ-ритм с брадикардией.**
                                                        """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGAritmii317"), title: "").buildECG(isTextExpanded: isTextExpanded17)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded17.toggle()
                                        }
                                    })
                                    .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded17 ? 520 : 520) : (isTextExpanded17 ? 240 : 480))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        **Дыхательная синусовая аритмия.**
                                                        """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGAritmii318"), title: "").buildECG(isTextExpanded: isTextExpanded18)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded18.toggle()
                                        }
                                    })
                                    .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded18 ? 520 : 520) : (isTextExpanded18 ? 240 : 480))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        **Мерцание/трепетание предсердий с быстрым желудочковым ответом.**
                                                        """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGAritmii319"), title: "").buildECG(isTextExpanded: isTextExpanded19)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded19.toggle()
                                        }
                                    })
                                    .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded19 ? 520 : 520) : (isTextExpanded19 ? 240 : 480))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
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
                    Text("Атлас ЭКГ")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("Аритмии. Часть 3")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                    //
                }
            }
            
        }
    }
    
}
#Preview {
    AtlasECGAritmii301()
}

