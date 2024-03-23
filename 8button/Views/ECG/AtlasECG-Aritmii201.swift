//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct AtlasECGAritmii201: View {
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
                                                        ЭКГ 85-летней женщины. **Предсердная тахикардия**.
                                                        """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGAritmii201"), title: "").buildECG(isTextExpanded: isTextExpanded1)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            isTextExpanded1.toggle()
                                        }
                                    })
                                    .frame(minHeight: (isTextExpanded1 ? 240 : 480))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        **Мерцание предсердий,** тахисистолическая форма (120 удар/мин). Имеется расширение комплекса QRS в форме БЛНПГ.
                                                        """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGAritmii202"), title: "").buildECG(isTextExpanded: isTextExpanded2)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            isTextExpanded2.toggle()
                                        }
                                    })
                                    .frame(minHeight: (isTextExpanded2 ? 240 : 480))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        **Желудочковая тахикардия** (левожелудочковая) с частотой 170 уд/мин.
                                                        """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGAritmii203"), title: "").buildECG(isTextExpanded: isTextExpanded3)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            isTextExpanded3.toggle()
                                        }
                                    })
                                    .frame(minHeight: (isTextExpanded3 ? 240 : 480))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        Это - относительно **медленная двунаправленная желудочковая тахикардия**.
                                                        """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGAritmii204"), title: "").buildECG(isTextExpanded: isTextExpanded4)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            isTextExpanded4.toggle()
                                        }
                                    })
                                    .frame(minHeight: (isTextExpanded4 ? 240 : 480))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        89-летний мужчина с опасностью остановки сердца. **Мерцание предсердий, брадиформа.** Имеется БЛНПГ. rsR' в V6 наводит на размышление о серьезной левожелудочковой дисфункции, часто связываемой с желудочковой аневризмой. QR или rsR' комплекс также присутствуют в отведениях I и aVL. Отклонение ЭОС влево и удлинение QT. Пациент имел ранее остановку сердца из-за предшествующего безболевого инфаркта.
                                                        """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGAritmii205"), title: "").buildECG(isTextExpanded: isTextExpanded5)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            isTextExpanded5.toggle()
                                        }
                                    })
                                    .frame(minHeight: (isTextExpanded5 ? 240 : 480))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        **Трепетание предсердий с проведением 2:1.** Кроме этого имеются БПНПГ, отклонение ЭОС влево, гипертрофия ЛЖ. Пациент имеет стеноз аортального клапана.
                                                        """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGAritmii206"), title: "").buildECG(isTextExpanded: isTextExpanded6)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            isTextExpanded6.toggle()
                                        }
                                    })
                                    .frame(minHeight: (isTextExpanded6 ? 240 : 480))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        63-летний человек с обмороками в анамнезе. **СССУ, замещающий ритм из АВ-соединения с одновременным возбуждением предсердий и желудочков.** Брадикардия (приблизительно 25 ударов/минут). Сокращения регулярные, без зубцов P, комплексы QRS не изменены.
                                                        """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGAritmii207"), title: "").buildECG(isTextExpanded: isTextExpanded7)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            isTextExpanded7.toggle()
                                        }
                                    })
                                    .frame(minHeight: (isTextExpanded7 ? 240 : 480))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        **Синдром WPW**
                                                        """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGAritmii208"), title: "").buildECG(isTextExpanded: isTextExpanded8)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            isTextExpanded8.toggle()
                                        }
                                    })
                                    .frame(minHeight: (isTextExpanded8 ? 240 : 480))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        Эта 10-секундная ЭКГ показывают по крайней мере три, и вероятно четыре, различных ритма! 1) **Пароксизм трепетания предсердий с переменным блоком** (начало и конец ЭКГ). 2) **Синусовый ритм** (одно сокращение после пароксизма трепетания предсердий). 3) **Пароксизм мерцания предсердий** (см. между 3 и 4 сокращениями от маркера отведениий V1-V3). 4) Вероятно одна или две **предсердные экстрасистолы** - между событиями 2) и 3).
                                                        """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGAritmii209"), title: "").buildECG(isTextExpanded: isTextExpanded9)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            isTextExpanded9.toggle()
                                        }
                                    })
                                    .frame(minHeight: (isTextExpanded9 ? 240 : 480))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        **Мерцание предсердий**, нормоформа, а также одиночное желудочковое сокращение после срабатывания искусственного водителя ритма (см. 5-ое сокращение).
                                                        """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGAritmii210"), title: "").buildECG(isTextExpanded: isTextExpanded10)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            isTextExpanded10.toggle()
                                        }
                                    })
                                    .frame(minHeight: (isTextExpanded10 ? 240 : 480))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        **Мерцание предсердий**, тахиформа с ЧСС приблизительно 150/минут.
                                                        """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGAritmii211"), title: "").buildECG(isTextExpanded: isTextExpanded11)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            isTextExpanded11.toggle()
                                        }
                                    })
                                    .frame(minHeight: (isTextExpanded11 ? 240 : 480))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        **Многофокальная предсердная тахикардия.**
                                                        """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGAritmii212"), title: "").buildECG(isTextExpanded: isTextExpanded12)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            isTextExpanded12.toggle()
                                        }
                                    })
                                    .frame(minHeight: (isTextExpanded12 ? 240 : 480))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        Синусовый ритм с частыми **предсердными экстрасистолами (тригеминия)**.
                                                        """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGAritmii213"), title: "").buildECG(isTextExpanded: isTextExpanded13)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            isTextExpanded13.toggle()
                                        }
                                    })
                                    .frame(minHeight: (isTextExpanded13 ? 240 : 480))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        ЭКГ 74-летней женщины. **Трепетание предсердий с проведением 4:1** и блокада ПНПГ. Волны F наиболее хорошо заметны в V1 и III. Кроме этого имеется БПНПГ.
                                                        """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGAritmii214"), title: "").buildECG(isTextExpanded: isTextExpanded14)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            isTextExpanded14.toggle()
                                        }
                                    })
                                    .frame(minHeight: (isTextExpanded14 ? 240 : 480))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        **Веретенообразная желудочковая тахикардия** с синдромом удлинения QT. Пациент был реанимирован от остановки сердца, и постреанимационная ЭКГ демонстрирует синдром удлинения QT.
                                                        """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGAritmii215"), title: "").buildECG(isTextExpanded: isTextExpanded15)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            isTextExpanded15.toggle()
                                        }
                                    })
                                    .frame(minHeight: (isTextExpanded15 ? 240 : 480))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        Синусовый ритм с **желудочковой бигеминией**.
                                                        """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGAritmii216"), title: "").buildECG(isTextExpanded: isTextExpanded16)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            isTextExpanded16.toggle()
                                        }
                                    })
                                    .frame(minHeight: (isTextExpanded16 ? 240 : 480))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        **Мерцание предсердий с частыми полиморфными желудочковыми экстрасистолами**.
                                                        """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGAritmii217"), title: "").buildECG(isTextExpanded: isTextExpanded17)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            isTextExpanded17.toggle()
                                        }
                                    })
                                    .frame(minHeight: (isTextExpanded17 ? 240 : 480))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        **Мерцание предсердий с блокадой ЛНПГ.**
                                                        """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGAritmii218"), title: "").buildECG(isTextExpanded: isTextExpanded18)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            isTextExpanded18.toggle()
                                        }
                                    })
                                    .frame(minHeight: (isTextExpanded18 ? 240 : 480))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        73-летний мужчина с анамнезом ИБС (перенесенные ОИМ задней и передней стенок ЛЖ). **Мерцание предсердий.**
                                                        """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGAritmii219"), title: "").buildECG(isTextExpanded: isTextExpanded19)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            isTextExpanded19.toggle()
                                        }
                                    })
                                    .frame(minHeight: (isTextExpanded19 ? 240 : 480))
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
                    Text("Аритмии. Часть 2")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                    //
                }
            }
            
        }
    }
    
}
#Preview {
    AtlasECGAritmii201()
}

