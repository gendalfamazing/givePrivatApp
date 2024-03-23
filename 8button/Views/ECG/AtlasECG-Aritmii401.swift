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
                                                        Синусовый ритм с единичной **предсердной экстрасистолой**.
                                                        """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGAritmii401"), title: "").buildECG(isTextExpanded: isTextExpanded1)
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
                                                        **Предсердная тахикардия с блокадой проведения 2:1** с блокадой ПНПГ. Частота сокращений предсердий 200/мин, частота сокращений желудочков 100/мин. Если пристально посмотреть на V1, Вы увидите два зубца P перед каждым QRS (один из них накладывается на зубец T).
                                                        """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGAritmii402"), title: "").buildECG(isTextExpanded: isTextExpanded2)
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
                                                        **Синусовый ритм с предсердными экстрасистолами.** Предсердные экстрасистолы - сокращения №№ 3, 7 и 10.
                                                        """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGAritmii403"), title: "").buildECG(isTextExpanded: isTextExpanded3)
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
                                                        27-летняя женщина с переменным пульсом. **Физиологическая (дыхательная) синусовая аритмия.**
                                                        """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGAritmii404"), title: "").buildECG(isTextExpanded: isTextExpanded4)
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
                                                        **Эктопический предсердный ритм.**
                                                        """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGAritmii405"), title: "").buildECG(isTextExpanded: isTextExpanded5)
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
                                                        ХОБЛ. Обращает внимание **миграция водителя ритма**
                                                        """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGAritmii406"), title: "").buildECG(isTextExpanded: isTextExpanded6)
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
                                                        21-летняя женщина с жалобой на сердцебиения. **Синдром WPW.**
                                                        """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGAritmii407"), title: "").buildECG(isTextExpanded: isTextExpanded7)
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
                                                        **Предсердная ЭКС** с нормальным желудочковым ответом. (см. артефакты в отведении II перед каждым зубцом P)
                                                        """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGAritmii408"), title: "").buildECG(isTextExpanded: isTextExpanded8)
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
                                                        24-летняя женщина с анамнезом астмы, сердцебиениями и  головокружением. **Синдром WPW.**
                                                        """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGAritmii409"), title: "").buildECG(isTextExpanded: isTextExpanded9)
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
                                                        24-летний мужчина с жалобами на сердцебиения. **Дыхательная синусовая аритмия.**
                                                        """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGAritmii410"), title: "").buildECG(isTextExpanded: isTextExpanded10)
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
                                                        62-летний человек, принимающий метопролол, с периодическими сердцебиениями. **Синусовая брадикардия** с артефактами из-за тремора (б-нь Паркинсона). (см. наличие зубцов P в отведениях V2-V4).
                                                        """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGAritmii411"), title: "").buildECG(isTextExpanded: isTextExpanded11)
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
                                                        59-летняя женщина. **Синдром WPW.**
                                                        """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGAritmii412"), title: "").buildECG(isTextExpanded: isTextExpanded12)
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
                                                        **Трепетание предсердий с проведением 2:1.**
                                                        """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGAritmii413"), title: "").buildECG(isTextExpanded: isTextExpanded13)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            isTextExpanded13.toggle()
                                        }
                                    })
                                    .frame(minHeight: (isTextExpanded13 ? 110 : 220))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        **Суправентрикулярная тахикардия.**
                                                        """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGAritmii414"), title: "").buildECG(isTextExpanded: isTextExpanded14)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            isTextExpanded14.toggle()
                                        }
                                    })
                                    .frame(minHeight: (isTextExpanded14 ? 165 : 330))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        **Синусовая брадикардия.**
                                                        """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGAritmii415"), title: "").buildECG(isTextExpanded: isTextExpanded15)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            isTextExpanded15.toggle()
                                        }
                                    })
                                    .frame(minHeight: (isTextExpanded15 ? 115 : 230))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        **Мультифокальная предсердная тахикардия.**
                                                        """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGAritmii416"), title: "").buildECG(isTextExpanded: isTextExpanded16)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            isTextExpanded16.toggle()
                                        }
                                    })
                                    .frame(minHeight: (isTextExpanded16 ? 180 : 360))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        **Мультифокальная предсердная тахикардия.**
                                                        """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGAritmii417"), title: "").buildECG(isTextExpanded: isTextExpanded17)
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
                                                        **Фибрилляция желудочков.**
                                                        """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGAritmii418"), title: "").buildECG(isTextExpanded: isTextExpanded18)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            isTextExpanded18.toggle()
                                        }
                                    })
                                    .frame(minHeight: (isTextExpanded18 ? 100 : 200))
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

