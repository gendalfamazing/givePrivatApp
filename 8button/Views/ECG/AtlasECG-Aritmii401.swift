//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct AtlasECGAritmii401: View {
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
                                                        Синусовый ритм с единичной **предсердной экстрасистолой**.
                                                        """)).buildGrayInHiddenText()
                                
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGAritmii401")
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
                                                        **Предсердная тахикардия с блокадой проведения 2:1** с блокадой ПНПГ. Частота сокращений предсердий 200/мин, частота сокращений желудочков 100/мин. Если пристально посмотреть на V1, Вы увидите два зубца P перед каждым QRS (один из них накладывается на зубец T).
                                                        """)).buildGrayInHiddenText()
                                
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGAritmii402")
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
                                                        **Синусовый ритм с предсердными экстрасистолами.** Предсердные экстрасистолы - сокращения №№ 3, 7 и 10.
                                                        """)).buildGrayInHiddenText()
                                
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGAritmii403")
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
                                                        27-летняя женщина с переменным пульсом. **Физиологическая (дыхательная) синусовая аритмия.**
                                                        """)).buildGrayInHiddenText()
                                
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGAritmii404")
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
                                                        **Эктопический предсердный ритм.**
                                                        """)).buildGrayInHiddenText()
                                
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGAritmii405")
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
                                                        ХОБЛ. Обращает внимание **миграция водителя ритма**
                                                        """)).buildGrayInHiddenText()
                                
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGAritmii406")
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
                                                        21-летняя женщина с жалобой на сердцебиения. **Синдром WPW.**
                                                        """)).buildGrayInHiddenText()
                                
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGAritmii407")
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
                                                        **Предсердная ЭКС** с нормальным желудочковым ответом. (см. артефакты в отведении II перед каждым зубцом P)
                                                        """)).buildGrayInHiddenText()
                                
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGAritmii408")
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
                                                        24-летняя женщина с анамнезом астмы, сердцебиениями и  головокружением. **Синдром WPW.**
                                                        """)).buildGrayInHiddenText()
                                
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGAritmii409")
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
                                                        24-летний мужчина с жалобами на сердцебиения. **Дыхательная синусовая аритмия.**
                                                        """)).buildGrayInHiddenText()
                                
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGAritmii410")
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
                                                        62-летний человек, принимающий метопролол, с периодическими сердцебиениями. **Синусовая брадикардия** с артефактами из-за тремора (б-нь Паркинсона). (см. наличие зубцов P в отведениях V2-V4).
                                                        """)).buildGrayInHiddenText()
                                
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGAritmii411")
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
                                                        59-летняя женщина. **Синдром WPW.**
                                                        """)).buildGrayInHiddenText()
                                
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGAritmii412")
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
                                            Image("AtlasECGAritmii413")
                                                .resizable()
                                                .frame(maxWidth: proxy.size.width)
                                                .frame(maxHeight: proxy.size.height)
                                                .scaledToFit()
                                                .clipShape(Rectangle())
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: proxy.size.width, height: proxy.size.height)))
                                            
                                        }
                                    }
                                }
                                .frame(minHeight: 110)
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        **Суправентрикулярная тахикардия.**
                                                        """)).buildGrayInHiddenText()
                                
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGAritmii414")
                                                .resizable()
                                                .frame(maxWidth: proxy.size.width)
                                                .frame(maxHeight: proxy.size.height)
                                                .scaledToFit()
                                                .clipShape(Rectangle())
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: proxy.size.width, height: proxy.size.height)))
                                            
                                        }
                                    }
                                }
                                .frame(minHeight: 165)
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        **Синусовая брадикардия.**
                                                        """)).buildGrayInHiddenText()
                                
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGAritmii415")
                                                .resizable()
                                                .frame(maxWidth: proxy.size.width)
                                                .frame(maxHeight: proxy.size.height)
                                                .scaledToFit()
                                                .clipShape(Rectangle())
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: proxy.size.width, height: proxy.size.height)))
                                            
                                        }
                                    }
                                }
                                .frame(minHeight: 115)
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        **Мультифокальная предсердная тахикардия.**
                                                        """)).buildGrayInHiddenText()
                                
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGAritmii416")
                                                .resizable()
                                                .frame(maxWidth: proxy.size.width)
                                                .frame(maxHeight: proxy.size.height)
                                                .scaledToFit()
                                                .clipShape(Rectangle())
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: proxy.size.width, height: proxy.size.height)))
                                            
                                        }
                                    }
                                }
                                .frame(minHeight: 180)
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        **Мультифокальная предсердная тахикардия.**
                                                        """)).buildGrayInHiddenText()
                                
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGAritmii417")
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
                                                        **Фибрилляция желудочков.**
                                                        """)).buildGrayInHiddenText()
                                
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGAritmii418")
                                                .resizable()
                                                .frame(maxWidth: proxy.size.width)
                                                .frame(maxHeight: proxy.size.height)
                                                .scaledToFit()
                                                .clipShape(Rectangle())
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: proxy.size.width, height: proxy.size.height)))
                                            
                                        }
                                    }
                                }
                                .frame(minHeight: 100)
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
                    Text("Аритмии. Часть 4")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                    //
                }
            }
            
        }
    }
    
}
#Preview {
    AtlasECGAritmii401()
}

