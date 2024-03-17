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
                                                        59-летняя женщина с приступами сердцебиений и головокружений. **Мерцание предсердий с синдромом WPW** с частотой приблизительно 230 ударов/минут.
                                                        """)).buildGrayInHiddenText()
                                
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGAritmii101")
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
                                                            38-летний мужчина на хирургическом лечении. Синдром предвозбуждения (**WPW-cиндром**). Отмечается укорочение интервала PQ и дельта-волна, лучше всего заметная в V5 как начальная часть комплекса QRS, с высоким R (положительная волна дельты) в V1, отрицательном в aVL.
                                                            """)).buildGrayInHiddenText()
                                
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGAritmii102")
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
                                                            82-летняя женщина.  Это может походить на синусовый ритм, но если Вы посмотрите в V1, Вы сможете увидеть зубцы P как раз перед комплексом QRS (имеется БПНПГ) и также зубцы P, накладывающиеся на зубцы T. Частота сокращений предсердий приблизительно 150, частота желудочков - 75. Это - **пароксизмальная предсердная тахикардия с блокадой 2:1.**
                                                            """)).buildGrayInHiddenText()
                                
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGAritmii103")
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
                                                            Тахикардия и легкий цианоз.  **Трепетание предсердий QRS** с частотой приблизительно 300 уд/мин, с переменным желудочковым ответом (проведение 2:1, иногда 3:1).
                                                            """)).buildGrayInHiddenText()
                                
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGAritmii104")
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
                                                            71-летний мужчина. **Предсердная тахикардия с блокадой 2:1** (см. наложение зубцов P на зубцы T в отведениях V2 и V3) и БЛНПГ.
                                                            """)).buildGrayInHiddenText()
                                
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGAritmii105")
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
                                                            **Трепетание предсердий с проведение 2:1**. Также имеется ГЛЖ, отклонение ЭОС влево и возможный перенесённый ИМ нижней стенки.
                                                            """)).buildGrayInHiddenText()
                                
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGAritmii106")
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
                                                            91-летний пожилой мужчина с остановкой сердца в анамнезе и БПНПГ. Имеется тахикардия с широкими комплексами QRS с БПНПГ и отклонением ЭОС влево. Ритм несинусовый, **трепетание предсердий с проведением 2:1**.
                                                            """)).buildGrayInHiddenText()
                                
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGAritmii107")
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
                                                            **Трепетание предсердий с проведением 2:1.**
                                                            """)).buildGrayInHiddenText()
                                
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGAritmii108")
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
                                                            84-летняя женщина с угрозой остановки сердца. Ритм несинусовый, частота сокращения предсердий - 150, желудочков - 75. Это - **предсердная тахикардия с блокадой 2:1**. "Дополнительные" зубцы P после QRS лучше всего заметны в V1. Кроме этого имеется неполная БПНПГ.
                                                            """)).buildGrayInHiddenText()
                                
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGAritmii109")
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
                                                            81-летняя женщина. **Трепетание предсердий с проведением 2:1** и БЛНПГ.
                                                            """)).buildGrayInHiddenText()
                                
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGAritmii110")
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
                                                            **Трепетание предсердий с проведением 2:1.**
                                                            """)).buildGrayInHiddenText()
                                
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGAritmii111")
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
                                                            69-летний мужчина с жалобами на сердцебиение.  ЧСС - 180/минут. **AV-узловая тахикардия** (см. зубцы P после QRS в отведениях aVR и II).
                                                            """)).buildGrayInHiddenText()
                                
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGAritmii112")
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
                                                            86-летний мужчина с редким пульсом и усталостью. **Мерцание предсердий** с частотой сокращения желудочков 45/мин. Передний гемиблок. Гипертрофия ЛЖ. Удлинение Q-T с неопределенными изменениями ST.
                                                            """)).buildGrayInHiddenText()
                                
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGAritmii113")
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
                                                            92-летняя женщина.  **Предсердная тахикардия с блокадой проведения 2:1 и желудочковая эксрасистолия**. Частота сокращений предсердий - 200/минуту. Кроме этого - гипертрофия ЛЖ с нарушением внутрижелудочковой проводимости (передний гемиблок), снижение амплитуды зубцов R (нельзя исключить перенесённый ИМ), неопределенные изменения ST.
                                                            """)).buildGrayInHiddenText()
                                
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGAritmii114")
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
                                                            Женщина 78 лет. **Трепетание предсердий с проведением 2:1**. Частота сокращений предсердий 240 уд/мин. Кроме этого имеется гипертрофия ЛЖ и возможно передне-перегородочный ИМ (неопределенные изменения ST).
                                                            """)).buildGrayInHiddenText()
                                
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGAritmii115")
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
                                                            39- летний мужчина. **Мерцание предсердий, тахисистолия** (в среднем 204 удара в минуту). Имеется преходящая БПНПГ с абберациями.
                                                            """)).buildGrayInHiddenText()
                                
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGAritmii116")
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
                                            Image("AtlasECGAritmii117")
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
                                                            Синусовый ритм с **предсердной бигеминией**. Кроме того, имеются критерии гипертрофии ЛЖ, гипертрофия ЛП, медленное нарастание R в V1-V3.
                                                            """)).buildGrayInHiddenText()
                                
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGAritmii118")
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
                                                            51-летняя женщина с сердцебиением. Наиболее вероятна **атриовентрикулярная тахикардия** (re-entry).
                                                            """)).buildGrayInHiddenText()
                                
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGAritmii119")
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

