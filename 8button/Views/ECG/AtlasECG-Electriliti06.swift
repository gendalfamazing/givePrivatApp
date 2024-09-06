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
                            
                            ImagePDF(image: Image("AtlasECGElectroliti1"), title: "").buildECGPad(isTextExpanded: isTextExpanded1)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded1.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded1 ? 520 : 520) : (isTextExpanded1 ? 240 : 480))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            
                            MyViewBuilder(title: Text("1"), content: Text("65-летний мужчина. Классическая **гиперкалиемия** с высокими зубцами T, наряду с удлинением PQ и гипертрофией ЛЖ (пациент имеет почечную болезнь с гипертонией). Отмечается уширение QRS.")).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGElectroliti2"), title: "").buildECGPad(isTextExpanded: isTextExpanded2)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded2.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded2 ? 520 : 520) : (isTextExpanded2 ? 240 : 480))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            
                            MyViewBuilder(title: Text("1"), content: Text("30-летний мужчина, лечение не получает. Хорошо видны зубцы U с удлинением интервала Q-T (U). Пациент имеет **синдром гипокалиемии** из-за диареи.")).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGElectroliti3"), title: "").buildECGPad(isTextExpanded: isTextExpanded3)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded3.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded3 ? 520 : 520) : (isTextExpanded3 ? 240 : 480))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            
                            MyViewBuilder(title: Text("1"), content: Text("**Гипокальциемия** (синдром удлинения QT).")).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGElectroliti4"), title: "").buildECGPad(isTextExpanded: isTextExpanded4)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded4.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded4 ? 520 : 520) : (isTextExpanded4 ? 240 : 480))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            
                            MyViewBuilder(title: Text("1"), content: Text("**Гиперкалиемия**. Отмечаются высокие острые зубцы T.")).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGElectroliti5"), title: "").buildECGPad(isTextExpanded: isTextExpanded5)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded5.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded5 ? 520 : 520) : (isTextExpanded5 ? 240 : 480))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            
                            MyViewBuilder(title: Text("1"), content: Text("35-летний мужчина. Классическая ЭКГ при **гиперкальциемии** (сокращение интервала ST, подъём ST в V2/V3).")).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGElectroliti6"), title: "").buildECGPad(isTextExpanded: isTextExpanded6)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded6.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded6 ? 520 : 520) : (isTextExpanded6 ? 240 : 480))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            
                            MyViewBuilder(title: Text("1"), content: Text("Почечная недостаточность. **Гиперкалиемия** (высокие, узкие зубцы T, особенно в V3-V4), удлинение QRS.")).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGElectroliti7"), title: "").buildECGPad(isTextExpanded: isTextExpanded7)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded7.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded7 ? 520 : 520) : (isTextExpanded7 ? 240 : 480))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            
                            MyViewBuilder(title: Text("1"), content: Text("40-летняя женщина с опасной для жизни проблемой. **Гиперкалиемия**. Дополнительно - гипертрофия ЛП.")).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGElectroliti8"), title: "").buildECGPad(isTextExpanded: isTextExpanded8)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded8.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded8 ? 520 : 520) : (isTextExpanded8 ? 240 : 480))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            
                        }
                        VStack (spacing:1){
                            MyViewBuilder(title: Text("1"), content: Text("31-летняя женщина с кардиограммой, симулирующей ишемию. **Гипокалиемия**. Очень серьезная гипокалиемия может вызвать депрессии ST и инверсии зубцов T, как замечено здесь, подражая ишемии. Также отмечается большой зубец U.")).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGElectroliti9"), title: "").buildECGPad(isTextExpanded: isTextExpanded9)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded9.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded9 ? 520 : 520) : (isTextExpanded9 ? 240 : 480))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            
                            MyViewBuilder(title: Text("1"), content: Text("**Гиперкалиемия**. Отметьте широкие комплексы QRS без зубцов P.")).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGElectroliti10"), title: "").buildECGPad(isTextExpanded: isTextExpanded10)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded10.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded10 ? 520 : 520) : (isTextExpanded10 ? 240 : 480))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            
                            MyViewBuilder(title: Text("1"), content: Text("Молодой взрослый азиатский мужчина. **Гипокалиемия**.")).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGElectroliti11"), title: "").buildECGPad(isTextExpanded: isTextExpanded11)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded11.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded11 ? 520 : 520) : (isTextExpanded11 ? 240 : 480))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            
                            MyViewBuilder(title: Text("1"), content: Text("Почечная недостаточность. Гипертрофия ЛЖ, высокие, узкие зубцы T волны наиболее совместимы с хронической почечной недостаточностью, вызывающей гипертонию и **гиперкалиемию**.")).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGElectroliti12"), title: "").buildECGPad(isTextExpanded: isTextExpanded12)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded12.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded12 ? 520 : 520) : (isTextExpanded12 ? 240 : 480))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            
                            MyViewBuilder(title: Text("1"), content: Text("**Гиперкалиемия**")).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGElectroliti13"), title: "").buildECGPad(isTextExpanded: isTextExpanded13)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded13.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded13 ? 520 : 520) : (isTextExpanded13 ? 240 : 480))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            
                            MyViewBuilder(title: Text("1"), content: Text("Кардиограмма 66-летного мужчины с алкогольным циррозом печени и нестабильной гемодинамикой. За две недели до этого ЭКГ имела нормальные показатели. **Гиперкалиемия**.")).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGElectroliti14"), title: "").buildECGPad(isTextExpanded: isTextExpanded14)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded14.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded14 ? 520 : 520) : (isTextExpanded14 ? 240 : 480))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            
                            MyViewBuilder(title: Text("1"), content: Text("**Гиперкалиемия**. ЭКГ показывает чрезвычайно сложный ритм с широкими комплексами QRS (0.28 секунды) с частотой 70/мин.")).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGElectroliti15"), title: "").buildECGPad(isTextExpanded: isTextExpanded15)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded15.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded15 ? 520 : 520) : (isTextExpanded15 ? 240 : 480))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            
                            MyViewBuilder(title: Text("1"), content: Text("47-летняя женщина с анамнезом рака молочной железы. **Гиперкальциемия**.")).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGElectroliti16"), title: "").buildECGPad(isTextExpanded: isTextExpanded16)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded16.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded16 ? 520 : 520) : (isTextExpanded16 ? 240 : 480))
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

