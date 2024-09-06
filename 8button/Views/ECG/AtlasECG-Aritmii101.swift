//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct AtlasECGAritmii101: View {
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
                                                        59-летняя женщина с приступами сердцебиений и головокружений. **Мерцание предсердий с синдромом WPW** с частотой приблизительно 230 ударов/минут.
                                                        """)).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGAritmii101"), title: "").buildECG(isTextExpanded: isTextExpanded1)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded1.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded1 ? 520 : 520) : (isTextExpanded1 ? 240 : 480))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            MyViewBuilder(title: Text("1"),
                                          content: Text("""
                                                            38-летний мужчина на хирургическом лечении. Синдром предвозбуждения (**WPW-cиндром**). Отмечается укорочение интервала PQ и дельта-волна, лучше всего заметная в V5 как начальная часть комплекса QRS, с высоким R (положительная волна дельты) в V1, отрицательном в aVL.
                                                            """)).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGAritmii102"), title: "").buildECG(isTextExpanded: isTextExpanded2)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded2.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded2 ? 520 : 520) : (isTextExpanded2 ? 240 : 480))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            MyViewBuilder(title: Text("1"),
                                          content: Text("""
                                                            82-летняя женщина.  Это может походить на синусовый ритм, но если Вы посмотрите в V1, Вы сможете увидеть зубцы P как раз перед комплексом QRS (имеется БПНПГ) и также зубцы P, накладывающиеся на зубцы T. Частота сокращений предсердий приблизительно 150, частота желудочков - 75. Это - **пароксизмальная предсердная тахикардия с блокадой 2:1.**
                                                            """)).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGAritmii103"), title: "").buildECG(isTextExpanded: isTextExpanded3)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded3.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded3 ? 520 : 520) : (isTextExpanded3 ? 240 : 480))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            MyViewBuilder(title: Text("1"),
                                          content: Text("""
                                                            Тахикардия и легкий цианоз.  **Трепетание предсердий QRS** с частотой приблизительно 300 уд/мин, с переменным желудочковым ответом (проведение 2:1, иногда 3:1).
                                                            """)).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGAritmii104"), title: "").buildECG(isTextExpanded: isTextExpanded4)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded4.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded4 ? 520 : 520) : (isTextExpanded4 ? 240 : 480))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            MyViewBuilder(title: Text("1"),
                                          content: Text("""
                                                            71-летний мужчина. **Предсердная тахикардия с блокадой 2:1** (см. наложение зубцов P на зубцы T в отведениях V2 и V3) и БЛНПГ.
                                                            """)).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGAritmii105"), title: "").buildECG(isTextExpanded: isTextExpanded5)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded5.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded5 ? 520 : 520) : (isTextExpanded5 ? 240 : 480))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            MyViewBuilder(title: Text("1"),
                                          content: Text("""
                                                            **Трепетание предсердий с проведение 2:1**. Также имеется ГЛЖ, отклонение ЭОС влево и возможный перенесённый ИМ нижней стенки.
                                                            """)).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGAritmii106"), title: "").buildECG(isTextExpanded: isTextExpanded6)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded6.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded6 ? 520 : 520) : (isTextExpanded6 ? 240 : 480))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            MyViewBuilder(title: Text("1"),
                                          content: Text("""
                                                            91-летний пожилой мужчина с остановкой сердца в анамнезе и БПНПГ. Имеется тахикардия с широкими комплексами QRS с БПНПГ и отклонением ЭОС влево. Ритм несинусовый, **трепетание предсердий с проведением 2:1**.
                                                            """)).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGAritmii107"), title: "").buildECG(isTextExpanded: isTextExpanded7)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded7.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded7 ? 520 : 520) : (isTextExpanded7 ? 240 : 480))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            MyViewBuilder(title: Text("1"),
                                          content: Text("""
                                                            **Трепетание предсердий с проведением 2:1.**
                                                            """)).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGAritmii108"), title: "").buildECG(isTextExpanded: isTextExpanded8)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded8.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded8 ? 520 : 520) : (isTextExpanded8 ? 240 : 480))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            MyViewBuilder(title: Text("1"),
                                          content: Text("""
                                                            84-летняя женщина с угрозой остановки сердца. Ритм несинусовый, частота сокращения предсердий - 150, желудочков - 75. Это - **предсердная тахикардия с блокадой 2:1**. "Дополнительные" зубцы P после QRS лучше всего заметны в V1. Кроме этого имеется неполная БПНПГ.
                                                            """)).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGAritmii109"), title: "").buildECG(isTextExpanded: isTextExpanded9)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded9.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded9 ? 520 : 520) : (isTextExpanded9 ? 240 : 480))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            MyViewBuilder(title: Text("1"),
                                          content: Text("""
                                                            81-летняя женщина. **Трепетание предсердий с проведением 2:1** и БЛНПГ.
                                                            """)).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGAritmii110"), title: "").buildECG(isTextExpanded: isTextExpanded10)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded10.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded10 ? 520 : 520) : (isTextExpanded10 ? 240 : 480))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            MyViewBuilder(title: Text("1"),
                                          content: Text("""
                                                            **Трепетание предсердий с проведением 2:1.**
                                                            """)).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGAritmii111"), title: "").buildECG(isTextExpanded: isTextExpanded11)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded11.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded11 ? 520 : 520) : (isTextExpanded11 ? 240 : 480))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            MyViewBuilder(title: Text("1"),
                                          content: Text("""
                                                            69-летний мужчина с жалобами на сердцебиение.  ЧСС - 180/минут. **AV-узловая тахикардия** (см. зубцы P после QRS в отведениях aVR и II).
                                                            """)).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGAritmii112"), title: "").buildECG(isTextExpanded: isTextExpanded12)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded12.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded12 ? 520 : 520) : (isTextExpanded12 ? 240 : 480))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            MyViewBuilder(title: Text("1"),
                                          content: Text("""
                                                            86-летний мужчина с редким пульсом и усталостью. **Мерцание предсердий** с частотой сокращения желудочков 45/мин. Передний гемиблок. Гипертрофия ЛЖ. Удлинение Q-T с неопределенными изменениями ST.
                                                            """)).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGAritmii113"), title: "").buildECG(isTextExpanded: isTextExpanded13)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded13.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded13 ? 520 : 520) : (isTextExpanded13 ? 240 : 480))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            MyViewBuilder(title: Text("1"),
                                          content: Text("""
                                                            92-летняя женщина.  **Предсердная тахикардия с блокадой проведения 2:1 и желудочковая эксрасистолия**. Частота сокращений предсердий - 200/минуту. Кроме этого - гипертрофия ЛЖ с нарушением внутрижелудочковой проводимости (передний гемиблок), снижение амплитуды зубцов R (нельзя исключить перенесённый ИМ), неопределенные изменения ST.
                                                            """)).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGAritmii114"), title: "").buildECG(isTextExpanded: isTextExpanded14)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded14.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded14 ? 520 : 520) : (isTextExpanded14 ? 240 : 480))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            MyViewBuilder(title: Text("1"),
                                          content: Text("""
                                                            Женщина 78 лет. **Трепетание предсердий с проведением 2:1**. Частота сокращений предсердий 240 уд/мин. Кроме этого имеется гипертрофия ЛЖ и возможно передне-перегородочный ИМ (неопределенные изменения ST).
                                                            """)).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGAritmii115"), title: "").buildECG(isTextExpanded: isTextExpanded15)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded15.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded15 ? 520 : 520) : (isTextExpanded15 ? 240 : 480))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            MyViewBuilder(title: Text("1"),
                                          content: Text("""
                                                            39- летний мужчина. **Мерцание предсердий, тахисистолия** (в среднем 204 удара в минуту). Имеется преходящая БПНПГ с абберациями.
                                                            """)).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGAritmii116"), title: "").buildECG(isTextExpanded: isTextExpanded16)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded16.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded16 ? 520 : 520) : (isTextExpanded16 ? 240 : 480))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            MyViewBuilder(title: Text("1"),
                                          content: Text("""
                                                            Синусовый ритм с **желудочковой бигеминией**.
                                                            """)).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGAritmii117"), title: "").buildECG(isTextExpanded: isTextExpanded17)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded17.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded17 ? 520 : 520) : (isTextExpanded17 ? 240 : 480))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            MyViewBuilder(title: Text("1"),
                                          content: Text("""
                                                            Синусовый ритм с **предсердной бигеминией**. Кроме того, имеются критерии гипертрофии ЛЖ, гипертрофия ЛП, медленное нарастание R в V1-V3.
                                                            """)).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGAritmii118"), title: "").buildECG(isTextExpanded: isTextExpanded18)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded18.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded18 ? 520 : 520) : (isTextExpanded18 ? 240 : 480))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            MyViewBuilder(title: Text("1"),
                                          content: Text("""
                                                            51-летняя женщина с сердцебиением. Наиболее вероятна **атриовентрикулярная тахикардия** (re-entry).
                                                            """)).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGAritmii119"), title: "").buildECG(isTextExpanded: isTextExpanded19)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded19.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded19 ? 520 : 520) : (isTextExpanded19 ? 240 : 480))
                                .cornerRadius(10)
                            
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
                    Text("Аритмии. Часть 1")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                    //
                }
            }
            
        }
    }
    
}
#Preview {
    AtlasECGAritmii101()
}

