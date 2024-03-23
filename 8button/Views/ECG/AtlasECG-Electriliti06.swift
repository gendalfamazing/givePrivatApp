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
                            LazyVStack (spacing:1){
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        77-летняя женщина. ЭКГ показывает синусовый ритм с гипертрофией ЛЖ, высокими зубцами T в грудных отведениях, с неспецифичной депрессией ST в нижне-боковой области. Также имеется отклонение ЭОС влево с передним гемиблоком и удлинением интервала QT. Соединяя все это, высокие T указывают на **гиперкалиемию с ГЛЖ на фоне почечной недостаточности и артериальной гипертензии**. Удлинение QT с депрессией ST связано с гипокальциемией при ХПН. Депрессия ST может быть от ГЛЖ или от ишемии миокарда. В данном случае наблюдается триада: высокие T (гиперкалиемия), удлинение QT (гипокальциемия), гипертрофия ЛЖ. Данная пациентка имеет почечную недостаточность.
                                                        """)).buildGrayInHiddenText()
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGElectroliti1")
                                                .resizable()
                                                .padding(1)
                                                .cornerRadius(10)
                                                .frame(maxWidth: (isTextExpanded1 ? proxy.size.width : proxy.size.width * 2 ))
                                                .frame(maxHeight: (isTextExpanded1 ? proxy.size.height : proxy.size.height))
                                                .scaledToFit()
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: (isTextExpanded1 ? proxy.size.width : proxy.size.width * 2), height: (isTextExpanded1 ? proxy.size.height : proxy.size.height ))))
                                                .onTapGesture (count: 1, perform: {
                                                    withAnimation(.easeInOut){
                                                        isTextExpanded1.toggle()
                                                    }
                                                })
                                        }
                                    }
                                }
                                .frame(minHeight: (isTextExpanded1 ? 240 : 480))
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                
                                MyViewBuilder(title: Text("1"), content: Text("65-летний мужчина. Классическая **гиперкалиемия** с высокими зубцами T, наряду с удлинением PQ и гипертрофией ЛЖ (пациент имеет почечную болезнь с гипертонией). Отмечается уширение QRS.")).buildGrayInHiddenText()
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGElectroliti2")
                                                .resizable()
                                                .padding(1)
                                                .cornerRadius(10)
                                                .frame(maxWidth: (isTextExpanded2 ? proxy.size.width : proxy.size.width * 2 ))
                                                .frame(maxHeight: (isTextExpanded2 ? proxy.size.height : proxy.size.height))
                                                .scaledToFit()
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: (isTextExpanded2 ? proxy.size.width : proxy.size.width * 2), height: (isTextExpanded2 ? proxy.size.height : proxy.size.height ))))
                                                .onTapGesture (count: 1, perform: {
                                                    withAnimation(.easeInOut){
                                                        isTextExpanded2.toggle()
                                                    }
                                                })
                                        }
                                    }
                                }
                                .frame(minHeight: (isTextExpanded2 ? 240 : 480))
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                
                                MyViewBuilder(title: Text("1"), content: Text("30-летний мужчина, лечение не получает. Хорошо видны зубцы U с удлинением интервала Q-T (U). Пациент имеет **синдром гипокалиемии** из-за диареи.")).buildGrayInHiddenText()
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGElectroliti3")
                                                .resizable()
                                                .padding(1)
                                                .cornerRadius(10)
                                                .frame(maxWidth: (isTextExpanded3 ? proxy.size.width : proxy.size.width * 2 ))
                                                .frame(maxHeight: (isTextExpanded3 ? proxy.size.height : proxy.size.height))
                                                .scaledToFit()
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: (isTextExpanded3 ? proxy.size.width : proxy.size.width * 2), height: (isTextExpanded3 ? proxy.size.height : proxy.size.height ))))
                                                .onTapGesture (count: 1, perform: {
                                                    withAnimation(.easeInOut){
                                                        isTextExpanded3.toggle()
                                                    }
                                                })
                                        }
                                    }
                                }
                                .frame(minHeight: (isTextExpanded3 ? 240 : 480))
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                
                                MyViewBuilder(title: Text("1"), content: Text("**Гипокальциемия** (синдром удлинения QT).")).buildGrayInHiddenText()
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGElectroliti4")
                                                .resizable()
                                                .padding(1)
                                                .cornerRadius(10)
                                                .frame(maxWidth: (isTextExpanded4 ? proxy.size.width : proxy.size.width * 2 ))
                                                .frame(maxHeight: (isTextExpanded4 ? proxy.size.height : proxy.size.height))
                                                .scaledToFit()
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: (isTextExpanded4 ? proxy.size.width : proxy.size.width * 2), height: (isTextExpanded4 ? proxy.size.height : proxy.size.height ))))
                                                .onTapGesture (count: 1, perform: {
                                                    withAnimation(.easeInOut){
                                                        isTextExpanded4.toggle()
                                                    }
                                                })
                                        }
                                    }
                                }
                                .frame(minHeight: (isTextExpanded4 ? 240 : 480))
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                
                                MyViewBuilder(title: Text("1"), content: Text("**Гиперкалиемия**. Отмечаются высокие острые зубцы T.")).buildGrayInHiddenText()
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGElectroliti5")
                                                .resizable()
                                                .padding(1)
                                                .cornerRadius(10)
                                                .frame(maxWidth: (isTextExpanded5 ? proxy.size.width : proxy.size.width * 2 ))
                                                .frame(maxHeight: (isTextExpanded5 ? proxy.size.height : proxy.size.height))
                                                .scaledToFit()
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: (isTextExpanded5 ? proxy.size.width : proxy.size.width * 2), height: (isTextExpanded5 ? proxy.size.height : proxy.size.height ))))
                                                .onTapGesture (count: 1, perform: {
                                                    withAnimation(.easeInOut){
                                                        isTextExpanded5.toggle()
                                                    }
                                                })
                                        }
                                    }
                                }
                                .frame(minHeight: (isTextExpanded5 ? 240 : 480))
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                
                                MyViewBuilder(title: Text("1"), content: Text("35-летний мужчина. Классическая ЭКГ при **гиперкальциемии** (сокращение интервала ST, подъём ST в V2/V3).")).buildGrayInHiddenText()
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGElectroliti6")
                                                .resizable()
                                                .padding(1)
                                                .cornerRadius(10)
                                                .frame(maxWidth: (isTextExpanded6 ? proxy.size.width : proxy.size.width * 2 ))
                                                .frame(maxHeight: (isTextExpanded6 ? proxy.size.height : proxy.size.height))
                                                .scaledToFit()
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: (isTextExpanded6 ? proxy.size.width : proxy.size.width * 2), height: (isTextExpanded6 ? proxy.size.height : proxy.size.height ))))
                                                .onTapGesture (count: 1, perform: {
                                                    withAnimation(.easeInOut){
                                                        isTextExpanded6.toggle()
                                                    }
                                                })
                                        }
                                    }
                                }
                                .frame(minHeight: (isTextExpanded6 ? 240 : 480))
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                
                                MyViewBuilder(title: Text("1"), content: Text("Почечная недостаточность. **Гиперкалиемия** (высокие, узкие зубцы T, особенно в V3-V4), удлинение QRS.")).buildGrayInHiddenText()
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGElectroliti7")
                                                .resizable()
                                                .padding(1)
                                                .cornerRadius(10)
                                                .frame(maxWidth: (isTextExpanded7 ? proxy.size.width : proxy.size.width * 2 ))
                                                .frame(maxHeight: (isTextExpanded7 ? proxy.size.height : proxy.size.height))
                                                .scaledToFit()
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: (isTextExpanded7 ? proxy.size.width : proxy.size.width * 2), height: (isTextExpanded7 ? proxy.size.height : proxy.size.height ))))
                                                .onTapGesture (count: 1, perform: {
                                                    withAnimation(.easeInOut){
                                                        isTextExpanded7.toggle()
                                                    }
                                                })
                                        }
                                    }
                                }
                                .frame(minHeight: (isTextExpanded7 ? 240 : 480))
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                
                                MyViewBuilder(title: Text("1"), content: Text("40-летняя женщина с опасной для жизни проблемой. **Гиперкалиемия**. Дополнительно - гипертрофия ЛП.")).buildGrayInHiddenText()
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGElectroliti8")
                                                .resizable()
                                                .padding(1)
                                                .cornerRadius(10)
                                                .frame(maxWidth: (isTextExpanded8 ? proxy.size.width : proxy.size.width * 2 ))
                                                .frame(maxHeight: (isTextExpanded8 ? proxy.size.height : proxy.size.height))
                                                .scaledToFit()
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: (isTextExpanded8 ? proxy.size.width : proxy.size.width * 2), height: (isTextExpanded8 ? proxy.size.height : proxy.size.height ))))
                                                .onTapGesture (count: 1, perform: {
                                                    withAnimation(.easeInOut){
                                                        isTextExpanded8.toggle()
                                                    }
                                                })
                                        }
                                    }
                                }
                                .frame(minHeight: (isTextExpanded8 ? 240 : 480))
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                
                            }
                            VStack (spacing:1){
                                MyViewBuilder(title: Text("1"), content: Text("31-летняя женщина с кардиограммой, симулирующей ишемию. **Гипокалиемия**. Очень серьезная гипокалиемия может вызвать депрессии ST и инверсии зубцов T, как замечено здесь, подражая ишемии. Также отмечается большой зубец U.")).buildGrayInHiddenText()
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGElectroliti9")
                                                .resizable()
                                                .padding(1)
                                                .cornerRadius(10)
                                                .frame(maxWidth: (isTextExpanded9 ? proxy.size.width : proxy.size.width * 2 ))
                                                .frame(maxHeight: (isTextExpanded9 ? proxy.size.height : proxy.size.height))
                                                .scaledToFit()
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: (isTextExpanded9 ? proxy.size.width : proxy.size.width * 2), height: (isTextExpanded9 ? proxy.size.height : proxy.size.height ))))
                                                .onTapGesture (count: 1, perform: {
                                                    withAnimation(.easeInOut){
                                                        isTextExpanded9.toggle()
                                                    }
                                                })
                                        }
                                    }
                                }
                                .frame(minHeight: (isTextExpanded9 ? 240 : 480))
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                
                                MyViewBuilder(title: Text("1"), content: Text("**Гиперкалиемия**. Отметьте широкие комплексы QRS без зубцов P.")).buildGrayInHiddenText()
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGElectroliti10")
                                                .resizable()
                                                .padding(1)
                                                .cornerRadius(10)
                                                .frame(maxWidth: (isTextExpanded10 ? proxy.size.width : proxy.size.width * 2 ))
                                                .frame(maxHeight: (isTextExpanded10 ? proxy.size.height : proxy.size.height))
                                                .scaledToFit()
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: (isTextExpanded10 ? proxy.size.width : proxy.size.width * 2), height: (isTextExpanded10 ? proxy.size.height : proxy.size.height ))))
                                                .onTapGesture (count: 1, perform: {
                                                    withAnimation(.easeInOut){
                                                        isTextExpanded10.toggle()
                                                    }
                                                })
                                        }
                                    }
                                }
                                .frame(minHeight: (isTextExpanded10 ? 240 : 480))
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                
                                MyViewBuilder(title: Text("1"), content: Text("Молодой взрослый азиатский мужчина. **Гипокалиемия**.")).buildGrayInHiddenText()
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGElectroliti11")
                                                .resizable()
                                                .padding(1)
                                                .cornerRadius(10)
                                                .frame(maxWidth: (isTextExpanded11 ? proxy.size.width : proxy.size.width * 2 ))
                                                .frame(maxHeight: (isTextExpanded11 ? proxy.size.height : proxy.size.height))
                                                .scaledToFit()
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: (isTextExpanded11 ? proxy.size.width : proxy.size.width * 2), height: (isTextExpanded11 ? proxy.size.height : proxy.size.height ))))
                                                .onTapGesture (count: 1, perform: {
                                                    withAnimation(.easeInOut){
                                                        isTextExpanded11.toggle()
                                                    }
                                                })
                                        }
                                    }
                                }
                                .frame(minHeight: (isTextExpanded11 ? 240 : 480))
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                
                                MyViewBuilder(title: Text("1"), content: Text("Почечная недостаточность. Гипертрофия ЛЖ, высокие, узкие зубцы T волны наиболее совместимы с хронической почечной недостаточностью, вызывающей гипертонию и **гиперкалиемию**.")).buildGrayInHiddenText()
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGElectroliti12")
                                                .resizable()
                                                .padding(1)
                                                .cornerRadius(10)
                                                .frame(maxWidth: (isTextExpanded12 ? proxy.size.width : proxy.size.width * 2 ))
                                                .frame(maxHeight: (isTextExpanded12 ? proxy.size.height : proxy.size.height))
                                                .scaledToFit()
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: (isTextExpanded12 ? proxy.size.width : proxy.size.width * 2), height: (isTextExpanded12 ? proxy.size.height : proxy.size.height ))))
                                                .onTapGesture (count: 1, perform: {
                                                    withAnimation(.easeInOut){
                                                        isTextExpanded12.toggle()
                                                    }
                                                })
                                        }
                                    }
                                }
                                .frame(minHeight: (isTextExpanded12 ? 240 : 480))
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                
                                MyViewBuilder(title: Text("1"), content: Text("**Гиперкалиемия**")).buildGrayInHiddenText()
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGElectroliti13")
                                                .resizable()
                                                .padding(1)
                                                .cornerRadius(10)
                                                .frame(maxWidth: (isTextExpanded13 ? proxy.size.width : proxy.size.width * 2 ))
                                                .frame(maxHeight: (isTextExpanded13 ? proxy.size.height : proxy.size.height))
                                                .scaledToFit()
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: (isTextExpanded13 ? proxy.size.width : proxy.size.width * 2), height: (isTextExpanded13 ? proxy.size.height : proxy.size.height ))))
                                                .onTapGesture (count: 1, perform: {
                                                    withAnimation(.easeInOut){
                                                        isTextExpanded13.toggle()
                                                    }
                                                })
                                        }
                                    }
                                }
                                .frame(minHeight: (isTextExpanded13 ? 240 : 480))
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                
                                MyViewBuilder(title: Text("1"), content: Text("Кардиограмма 66-летного мужчины с алкогольным циррозом печени и нестабильной гемодинамикой. За две недели до этого ЭКГ имела нормальные показатели. **Гиперкалиемия**.")).buildGrayInHiddenText()
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGElectroliti14")
                                                .resizable()
                                                .padding(1)
                                                .cornerRadius(10)
                                                .frame(maxWidth: (isTextExpanded14 ? proxy.size.width : proxy.size.width * 2 ))
                                                .frame(maxHeight: (isTextExpanded14 ? proxy.size.height : proxy.size.height))
                                                .scaledToFit()
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: (isTextExpanded14 ? proxy.size.width : proxy.size.width * 2), height: (isTextExpanded14 ? proxy.size.height : proxy.size.height ))))
                                                .onTapGesture (count: 1, perform: {
                                                    withAnimation(.easeInOut){
                                                        isTextExpanded14.toggle()
                                                    }
                                                })
                                        }
                                    }
                                }
                                .frame(minHeight: (isTextExpanded14 ? 240 : 480))
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                
                                MyViewBuilder(title: Text("1"), content: Text("**Гиперкалиемия**. ЭКГ показывает чрезвычайно сложный ритм с широкими комплексами QRS (0.28 секунды) с частотой 70/мин.")).buildGrayInHiddenText()
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGElectroliti15")
                                                .resizable()
                                                .padding(1)
                                                .cornerRadius(10)
                                                .frame(maxWidth: (isTextExpanded15 ? proxy.size.width : proxy.size.width * 2 ))
                                                .frame(maxHeight: (isTextExpanded15 ? proxy.size.height : proxy.size.height))
                                                .scaledToFit()
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: (isTextExpanded15 ? proxy.size.width : proxy.size.width * 2), height: (isTextExpanded15 ? proxy.size.height : proxy.size.height ))))
                                                .onTapGesture (count: 1, perform: {
                                                    withAnimation(.easeInOut){
                                                        isTextExpanded15.toggle()
                                                    }
                                                })
                                        }
                                    }
                                }
                                .frame(minHeight: (isTextExpanded15 ? 240 : 480))
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                
                                MyViewBuilder(title: Text("1"), content: Text("47-летняя женщина с анамнезом рака молочной железы. **Гиперкальциемия**.")).buildGrayInHiddenText()
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGElectroliti16")
                                                .resizable()
                                                .padding(1)
                                                .cornerRadius(10)
                                                .frame(maxWidth: (isTextExpanded16 ? proxy.size.width : proxy.size.width * 2 ))
                                                .frame(maxHeight: (isTextExpanded16 ? proxy.size.height : proxy.size.height))
                                                .scaledToFit()
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: (isTextExpanded16 ? proxy.size.width : proxy.size.width * 2), height: (isTextExpanded16 ? proxy.size.height : proxy.size.height ))))
                                                .onTapGesture (count: 1, perform: {
                                                    withAnimation(.easeInOut){
                                                        isTextExpanded16.toggle()
                                                    }
                                                })
                                        }
                                    }
                                }
                                .frame(minHeight: (isTextExpanded16 ? 240 : 480))
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

