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
        NavigationStack {
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
                                
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGAritmii201")
                                                .resizable()
                                                .frame(maxWidth: proxy.size.width)
                                                .frame(maxHeight: proxy.size.height)
                                                .scaledToFit()
                                                .clipShape(Rectangle())
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: proxy.size.width, height: proxy.size.height)))
                                            
                                        }
                                    }
                                }
                                .frame(minHeight: 240)
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        **Мерцание предсердий,** тахисистолическая форма (120 удар/мин). Имеется расширение комплекса QRS в форме БЛНПГ.
                                                        """)).buildGrayInHiddenText()
                                
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGAritmii202")
                                                .resizable()
                                                .frame(maxWidth: proxy.size.width)
                                                .frame(maxHeight: proxy.size.height)
                                                .scaledToFit()
                                                .clipShape(Rectangle())
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: proxy.size.width, height: proxy.size.height)))
                                            
                                        }
                                    }
                                }
                                .frame(minHeight: 240)
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        **Желудочковая тахикардия** (левожелудочковая) с частотой 170 уд/мин.
                                                        """)).buildGrayInHiddenText()
                                
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGAritmii203")
                                                .resizable()
                                                .frame(maxWidth: proxy.size.width)
                                                .frame(maxHeight: proxy.size.height)
                                                .scaledToFit()
                                                .clipShape(Rectangle())
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: proxy.size.width, height: proxy.size.height)))
                                            
                                        }
                                    }
                                }
                                .frame(minHeight: 240)
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        Это - относительно **медленная двунаправленная желудочковая тахикардия**.
                                                        """)).buildGrayInHiddenText()
                                
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGAritmii204")
                                                .resizable()
                                                .frame(maxWidth: proxy.size.width)
                                                .frame(maxHeight: proxy.size.height)
                                                .scaledToFit()
                                                .clipShape(Rectangle())
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: proxy.size.width, height: proxy.size.height)))
                                            
                                        }
                                    }
                                }
                                .frame(minHeight: 240)
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        89-летний мужчина с опасностью остановки сердца. **Мерцание предсердий, брадиформа.** Имеется БЛНПГ. rsR' в V6 наводит на размышление о серьезной левожелудочковой дисфункции, часто связываемой с желудочковой аневризмой. QR или rsR' комплекс также присутствуют в отведениях I и aVL. Отклонение ЭОС влево и удлинение QT. Пациент имел ранее остановку сердца из-за предшествующего безболевого инфаркта.
                                                        """)).buildGrayInHiddenText()
                                
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGAritmii205")
                                                .resizable()
                                                .frame(maxWidth: proxy.size.width)
                                                .frame(maxHeight: proxy.size.height)
                                                .scaledToFit()
                                                .clipShape(Rectangle())
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: proxy.size.width, height: proxy.size.height)))
                                            
                                        }
                                    }
                                }
                                .frame(minHeight: 240)
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        **Трепетание предсердий с проведением 2:1.** Кроме этого имеются БПНПГ, отклонение ЭОС влево, гипертрофия ЛЖ. Пациент имеет стеноз аортального клапана.
                                                        """)).buildGrayInHiddenText()
                                
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGAritmii206")
                                                .resizable()
                                                .frame(maxWidth: proxy.size.width)
                                                .frame(maxHeight: proxy.size.height)
                                                .scaledToFit()
                                                .clipShape(Rectangle())
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: proxy.size.width, height: proxy.size.height)))
                                            
                                        }
                                    }
                                }
                                .frame(minHeight: 240)
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        63-летний человек с обмороками в анамнезе. **СССУ, замещающий ритм из АВ-соединения с одновременным возбуждением предсердий и желудочков.** Брадикардия (приблизительно 25 ударов/минут). Сокращения регулярные, без зубцов P, комплексы QRS не изменены.
                                                        """)).buildGrayInHiddenText()
                                
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGAritmii207")
                                                .resizable()
                                                .frame(maxWidth: proxy.size.width)
                                                .frame(maxHeight: proxy.size.height)
                                                .scaledToFit()
                                                .clipShape(Rectangle())
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: proxy.size.width, height: proxy.size.height)))
                                            
                                        }
                                    }
                                }
                                .frame(minHeight: 240)
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        **Синдром WPW**
                                                        """)).buildGrayInHiddenText()
                                
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGAritmii208")
                                                .resizable()
                                                .frame(maxWidth: proxy.size.width)
                                                .frame(maxHeight: proxy.size.height)
                                                .scaledToFit()
                                                .clipShape(Rectangle())
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: proxy.size.width, height: proxy.size.height)))
                                            
                                        }
                                    }
                                }
                                .frame(minHeight: 240)
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        Эта 10-секундная ЭКГ показывают по крайней мере три, и вероятно четыре, различных ритма! 1) **Пароксизм трепетания предсердий с переменным блоком** (начало и конец ЭКГ). 2) **Синусовый ритм** (одно сокращение после пароксизма трепетания предсердий). 3) **Пароксизм мерцания предсердий** (см. между 3 и 4 сокращениями от маркера отведениий V1-V3). 4) Вероятно одна или две **предсердные экстрасистолы** - между событиями 2) и 3).
                                                        """)).buildGrayInHiddenText()
                                
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGAritmii209")
                                                .resizable()
                                                .frame(maxWidth: proxy.size.width)
                                                .frame(maxHeight: proxy.size.height)
                                                .scaledToFit()
                                                .clipShape(Rectangle())
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: proxy.size.width, height: proxy.size.height)))
                                            
                                        }
                                    }
                                }
                                .frame(minHeight: 240)
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        **Мерцание предсердий**, нормоформа, а также одиночное желудочковое сокращение после срабатывания искусственного водителя ритма (см. 5-ое сокращение).
                                                        """)).buildGrayInHiddenText()
                                
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGAritmii210")
                                                .resizable()
                                                .frame(maxWidth: proxy.size.width)
                                                .frame(maxHeight: proxy.size.height)
                                                .scaledToFit()
                                                .clipShape(Rectangle())
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: proxy.size.width, height: proxy.size.height)))
                                            
                                        }
                                    }
                                }
                                .frame(minHeight: 240)
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        **Мерцание предсердий**, тахиформа с ЧСС приблизительно 150/минут.
                                                        """)).buildGrayInHiddenText()
                                
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGAritmii211")
                                                .resizable()
                                                .frame(maxWidth: proxy.size.width)
                                                .frame(maxHeight: proxy.size.height)
                                                .scaledToFit()
                                                .clipShape(Rectangle())
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: proxy.size.width, height: proxy.size.height)))
                                            
                                        }
                                    }
                                }
                                .frame(minHeight: 240)
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        **Многофокальная предсердная тахикардия.**
                                                        """)).buildGrayInHiddenText()
                                
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGAritmii212")
                                                .resizable()
                                                .frame(maxWidth: proxy.size.width)
                                                .frame(maxHeight: proxy.size.height)
                                                .scaledToFit()
                                                .clipShape(Rectangle())
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: proxy.size.width, height: proxy.size.height)))
                                            
                                        }
                                    }
                                }
                                .frame(minHeight: 240)
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        Синусовый ритм с частыми **предсердными экстрасистолами (тригеминия)**.
                                                        """)).buildGrayInHiddenText()
                                
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGAritmii213")
                                                .resizable()
                                                .frame(maxWidth: proxy.size.width)
                                                .frame(maxHeight: proxy.size.height)
                                                .scaledToFit()
                                                .clipShape(Rectangle())
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: proxy.size.width, height: proxy.size.height)))
                                            
                                        }
                                    }
                                }
                                .frame(minHeight: 240)
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        ЭКГ 74-летней женщины. **Трепетание предсердий с проведением 4:1** и блокада ПНПГ. Волны F наиболее хорошо заметны в V1 и III. Кроме этого имеется БПНПГ.
                                                        """)).buildGrayInHiddenText()
                                
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGAritmii214")
                                                .resizable()
                                                .frame(maxWidth: proxy.size.width)
                                                .frame(maxHeight: proxy.size.height)
                                                .scaledToFit()
                                                .clipShape(Rectangle())
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: proxy.size.width, height: proxy.size.height)))
                                            
                                        }
                                    }
                                }
                                .frame(minHeight: 240)
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        **Веретенообразная желудочковая тахикардия** с синдромом удлинения QT. Пациент был реанимирован от остановки сердца, и постреанимационная ЭКГ демонстрирует синдром удлинения QT.
                                                        """)).buildGrayInHiddenText()
                                
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGAritmii215")
                                                .resizable()
                                                .frame(maxWidth: proxy.size.width)
                                                .frame(maxHeight: proxy.size.height)
                                                .scaledToFit()
                                                .clipShape(Rectangle())
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: proxy.size.width, height: proxy.size.height)))
                                            
                                        }
                                    }
                                }
                                .frame(minHeight: 240)
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        Синусовый ритм с **желудочковой бигеминией**.
                                                        """)).buildGrayInHiddenText()
                                
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGAritmii216")
                                                .resizable()
                                                .frame(maxWidth: proxy.size.width)
                                                .frame(maxHeight: proxy.size.height)
                                                .scaledToFit()
                                                .clipShape(Rectangle())
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: proxy.size.width, height: proxy.size.height)))
                                            
                                        }
                                    }
                                }
                                .frame(minHeight: 240)
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        **Мерцание предсердий с частыми полиморфными желудочковыми экстрасистолами**.
                                                        """)).buildGrayInHiddenText()
                                
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGAritmii217")
                                                .resizable()
                                                .frame(maxWidth: proxy.size.width)
                                                .frame(maxHeight: proxy.size.height)
                                                .scaledToFit()
                                                .clipShape(Rectangle())
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: proxy.size.width, height: proxy.size.height)))
                                            
                                        }
                                    }
                                }
                                .frame(minHeight: 240)
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        **Мерцание предсердий с блокадой ЛНПГ.**
                                                        """)).buildGrayInHiddenText()
                                
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGAritmii218")
                                                .resizable()
                                                .frame(maxWidth: proxy.size.width)
                                                .frame(maxHeight: proxy.size.height)
                                                .scaledToFit()
                                                .clipShape(Rectangle())
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: proxy.size.width, height: proxy.size.height)))
                                            
                                        }
                                    }
                                }
                                .frame(minHeight: 240)
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        73-летний мужчина с анамнезом ИБС (перенесенные ОИМ задней и передней стенок ЛЖ). **Мерцание предсердий.**
                                                        """)).buildGrayInHiddenText()
                                
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGAritmii219")
                                                .resizable()
                                                .frame(maxWidth: proxy.size.width)
                                                .frame(maxHeight: proxy.size.height)
                                                .scaledToFit()
                                                .clipShape(Rectangle())
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: proxy.size.width, height: proxy.size.height)))
                                            
                                        }
                                    }
                                }
                                .frame(minHeight: 240)
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                
                                
                            }
                        }
                    }
                }
                .padding(.horizontal, 10)
                .padding(.bottom, 85)
            }
            //        .padding(.horizontal, 200)
            .edgesIgnoringSafeArea(.bottom)
            .background(Color.back)
        }
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

