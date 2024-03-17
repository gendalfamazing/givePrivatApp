//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct AtlasECGElectroliti06: View {
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
                            LazyVStack (spacing:1){
                            MyViewBuilder(title: Text("1"),
                                          content: Text("""
                                                        77-летняя женщина. ЭКГ показывает синусовый ритм с гипертрофией ЛЖ, высокими зубцами T в грудных отведениях, с неспецифичной депрессией ST в нижне-боковой области. Также имеется отклонение ЭОС влево с передним гемиблоком и удлинением интервала QT. Соединяя все это, высокие T указывают на гиперкалиемию с ГЛЖ на фоне почечной недостаточности и артериальной гипертензии. Удлинение QT с депрессией ST связано с гипокальциемией при ХПН. Депрессия ST может быть от ГЛЖ или от ишемии миокарда. В данном случае наблюдается триада: высокие T (гиперкалиемия), удлинение QT (гипокальциемия), гипертрофия ЛЖ. Данная пациентка имеет почечную недостаточность.
                                                        """)).buildGrayInHiddenText()
                                  
                            VStack (spacing:1) {
                                GeometryReader { proxy in
                                    ScrollView {
                                        Image("AtlasECGElectroliti1")
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
                            MyViewBuilder(title: Text("1"), content: Text("65-летний мужчина. Классическая гиперкалиемия с высокими зубцами T, наряду с удлинением PQ и гипертрофией ЛЖ (пациент имеет почечную болезнь с гипертонией). Отмечается уширение QRS.")).buildGrayInHiddenText()
                                  
                            VStack (spacing:1) {
                                GeometryReader { proxy in
                                    ScrollView {
                                        Image("AtlasECGElectroliti2")
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
                            MyViewBuilder(title: Text("1"), content: Text("30-летний мужчина, лечение не получает. Хорошо видны зубцы U с удлинением интервала Q-T (U). Пациент имеет синдром гипокалиемии из-за диареи.")).buildGrayInHiddenText()
                                  
                            VStack (spacing:1) {
                                GeometryReader { proxy in
                                    ScrollView {
                                        Image("AtlasECGElectroliti3")
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
                            MyViewBuilder(title: Text("1"), content: Text("Гипокальциемия (синдром удлинения QT).")).buildGrayInHiddenText()
                                  
                            VStack (spacing:1) {
                                GeometryReader { proxy in
                                    ScrollView {
                                        Image("AtlasECGElectroliti4")
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
                            MyViewBuilder(title: Text("1"), content: Text("Гиперкалиемия. Отмечаются высокие острые зубцы T.")).buildGrayInHiddenText()
                                  
                            VStack (spacing:1) {
                                GeometryReader { proxy in
                                    ScrollView {
                                        Image("AtlasECGElectroliti5")
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
                            MyViewBuilder(title: Text("1"), content: Text("35-летний мужчина. Классическая ЭКГ при гиперкальциемии (сокращение интервала ST, подъём ST в V2/V3).")).buildGrayInHiddenText()
                                  
                            VStack (spacing:1) {
                                GeometryReader { proxy in
                                    ScrollView {
                                        Image("AtlasECGElectroliti6")
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
                            MyViewBuilder(title: Text("1"), content: Text("Почечная недостаточность. Гиперкалиемия (высокие, узкие зубцы T, особенно в V3-V4), удлинение QRS.")).buildGrayInHiddenText()
                                  
                            VStack (spacing:1) {
                                GeometryReader { proxy in
                                    ScrollView {
                                        Image("AtlasECGElectroliti7")
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
                            MyViewBuilder(title: Text("1"), content: Text("40-летняя женщина с опасной для жизни проблемой. Гиперкалиемия. Дополнительно - гипертрофия ЛП.")).buildGrayInHiddenText()
                                  
                            VStack (spacing:1) {
                                GeometryReader { proxy in
                                    ScrollView {
                                        Image("AtlasECGElectroliti8")
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
                            VStack (spacing:1){
                            MyViewBuilder(title: Text("1"), content: Text("31-летняя женщина с кардиограммой, симулирующей ишемию. Гипокалиемия. Очень серьезная гипокалиемия может вызвать депрессии ST и инверсии зубцов T, как замечено здесь, подражая ишемии. Также отмечается большой зубец U.")).buildGrayInHiddenText()
                                  
                            VStack (spacing:1) {
                                GeometryReader { proxy in
                                    ScrollView {
                                        Image("AtlasECGElectroliti9")
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
                            MyViewBuilder(title: Text("1"), content: Text("Гиперкалиемия. Отметьте широкие комплексы QRS без зубцов P.")).buildGrayInHiddenText()
                                  
                            VStack (spacing:1) {
                                GeometryReader { proxy in
                                    ScrollView {
                                        Image("AtlasECGElectroliti10")
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
                            MyViewBuilder(title: Text("1"), content: Text("Молодой взрослый азиатский мужчина. Гипокалиемия.")).buildGrayInHiddenText()
                                  
                            VStack (spacing:1) {
                                GeometryReader { proxy in
                                    ScrollView {
                                        Image("AtlasECGElectroliti11")
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
                            MyViewBuilder(title: Text("1"), content: Text("Почечная недостаточность. Гипертрофия ЛЖ, высокие, узкие зубцы T волны наиболее совместимы с хронической почечной недостаточностью, вызывающей гипертонию и гиперкалиемию.")).buildGrayInHiddenText()
                                  
                            VStack (spacing:1) {
                                GeometryReader { proxy in
                                    ScrollView {
                                        Image("AtlasECGElectroliti12")
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
                            MyViewBuilder(title: Text("1"), content: Text("Гиперкалиемия")).buildGrayInHiddenText()
                                  
                            VStack (spacing:1) {
                                GeometryReader { proxy in
                                    ScrollView {
                                        Image("AtlasECGElectroliti13")
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
                            MyViewBuilder(title: Text("1"), content: Text("Кардиограмма 66-летного мужчины с алкогольным циррозом печени и нестабильной гемодинамикой. За две недели до этого ЭКГ имела нормальные показатели. Гиперкалиемия.")).buildGrayInHiddenText()
                                  
                            VStack (spacing:1) {
                                GeometryReader { proxy in
                                    ScrollView {
                                        Image("AtlasECGElectroliti14")
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
                            MyViewBuilder(title: Text("1"), content: Text("Гиперкалиемия. ЭКГ показывает чрезвычайно сложный ритм с широкими комплексами QRS (0.28 секунды) с частотой 70/мин.")).buildGrayInHiddenText()
                                  
                            VStack (spacing:1) {
                                GeometryReader { proxy in
                                    ScrollView {
                                        Image("AtlasECGElectroliti15")
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
                            MyViewBuilder(title: Text("1"), content: Text("47-летняя женщина с анамнезом рака молочной железы. Гиперкальциемия.")).buildGrayInHiddenText()
                                  
                            VStack (spacing:1) {
                                GeometryReader { proxy in
                                    ScrollView {
                                        Image("AtlasECGElectroliti16")
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
                    Text("Электролитные нарушения")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                    //
                }
            }
            
        }
    }
    
}
#Preview {
    AtlasECGElectroliti06()
}

