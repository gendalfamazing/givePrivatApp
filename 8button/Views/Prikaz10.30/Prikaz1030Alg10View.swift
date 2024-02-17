//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg110View: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @State private var isTextExpanded = false
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
    @State private var isTextExpanded11 = false
    @State private var isTextExpanded12 = false
    
    var body: some View {
        NavigationStack {
            ScrollView {
                Spacer()
                VStack {
                    MyViewBuilder(title: Text("10"), content: Text("""
                    **Анамнез, осмотр, контроль АД, ЭКГ**
                    """)).buildGrayText()
                    
                        HStack{
                            MyViewBuilder(title: Text("10"), content: Text("""
                            Состояние пациента **стабильное**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded1)
                                .onTapGesture {
                                    withAnimation (.interpolatingSpring) {
                                        isTextExpanded1.toggle()
                                        if isTextExpanded2 == true {
                                            isTextExpanded2.toggle()
                                        }
                                        if isTextExpanded3 == true {
                                            isTextExpanded3.toggle()
                                        }
                                        if isTextExpanded4 == true {
                                            isTextExpanded4.toggle()
                                        }
                                    }
                                }
                            MyViewBuilder(title: Text("10"), content: Text("""
                            Состояние пациента **нестабильное**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded2)
                                .onTapGesture {
                                    withAnimation (.interpolatingSpring) {
                                        isTextExpanded2.toggle()
                                        if isTextExpanded1 == true {
                                            isTextExpanded1.toggle()
                                        }
                                        if isTextExpanded3 == true {
                                            isTextExpanded3.toggle()
                                        }
                                        if isTextExpanded4 == true {
                                            isTextExpanded4.toggle()
                                        }
                                        if isTextExpanded5 == true {
                                            isTextExpanded5.toggle()
                                        }
                                        if isTextExpanded6 == true {
                                            isTextExpanded6.toggle()
                                        }
                                    }
                                }
                        }
                    
                    if isTextExpanded1 {
                        MyViewBuilder(title: Text("10"), content: Text("""
                        **Вагусные пробы**
                        """)).buildGrayText()
                        Image(systemName: "arrow.down")
                            .shadow(radius: 2)
                        MyViewBuilder(title: Text("10"), content: Text("""
                        **Оценка проводимой терапии.**
                        Контроль ЭКГ, пульса и АД.
                        """)).buildGrayText()
                        HStack{
                            MyViewBuilder(title: Text("10"), content: Text("""
                            Эффект **есть**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded3)
                                .onTapGesture {
                                    withAnimation (.interpolatingSpring) {
                                        isTextExpanded3.toggle()
                                        if isTextExpanded4 == true {
                                            isTextExpanded4.toggle()
                                        }
                                        if isTextExpanded5 == true {
                                            isTextExpanded5.toggle()
                                        }
                                        if isTextExpanded6 == true {
                                            isTextExpanded6.toggle()
                                        }
                                    }
                                }
                            MyViewBuilder(title: Text("10"), content: Text("""
                            Эффекта **нету**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded4)
                                .onTapGesture {
                                    withAnimation (.interpolatingSpring) {
                                        isTextExpanded4.toggle()
                                        if isTextExpanded3 == true {
                                            isTextExpanded3.toggle()
                                        }
                                        if isTextExpanded5 == true {
                                            isTextExpanded5.toggle()
                                        }
                                        if isTextExpanded6 == true {
                                            isTextExpanded6.toggle()
                                        }
                                    }
                                }
                        }
                    }
                    if isTextExpanded3 {
                        MyViewBuilder(title: Text("10"), content: Text("""
                        **При восстановлении ритма и стабильной гемодинамики** амбулаторное лечение
                        """)).buildGrayText()
                    }
                    if isTextExpanded4 {
                        MyViewBuilder(title: Text("10"), content: Text("""
                        В/в **прокаинамид 5-10 мл 10 %** раствора в **0,9%** растворе **натрия хлорида** медленно под контролем **АД** (возможно **в одном шприце** с **0,1-0,3-0,5 мл 1% раствора фенилэфрина** или **2-4 мл 0,25%** раствора **верапамила**).
                        """)).buildGrayText()
//                        HStack {
//                            Spacer()
//                            Image(systemName: "arrow.down")
//                                .shadow(radius: 2)
//                            Spacer()
//                            Spacer()
//                            Image(systemName: "arrow.down")
//                                .shadow(radius: 2)
//                            Spacer()
//                        }
                        HStack{
                            MyViewBuilder(title: Text("10"), content: Text("""
                            Эффект **есть**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded5)
                                .onTapGesture {
                                    withAnimation (.interpolatingSpring) {
                                        isTextExpanded5.toggle()
                                        if isTextExpanded6 == true {
                                            isTextExpanded6.toggle()
                                        }
                                    }
                                }
                            MyViewBuilder(title: Text("10"), content: Text("""
                            Эффекта **нету**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded6)
                                .onTapGesture {
                                    withAnimation (.interpolatingSpring) {
                                        isTextExpanded6.toggle()
                                        if isTextExpanded5 == true {
                                            isTextExpanded5.toggle()
                                        }
                                    }
                                }
                        }
                    }
                    if isTextExpanded5 {
                        MyViewBuilder(title: Text("10"), content: Text("""
                        **При восстановлении ритма и стабильной гемодинамики** амбулаторное лечение
                        """)).buildGrayText()
                    }
                    if isTextExpanded6 {
                        MyViewBuilder(title: Text("10"), content: Text("""
                        **При отсутствии эффекта экстренная доставка в стационар** по профилю основного заболевания
                        """)).buildGrayText()
                    }
                    if isTextExpanded2 {
                        MyViewBuilder(title: Text("10"), content: Text("""
                        **Гипертензия, застой в малом круге кровообращения, сердечная недостаточность, ИМ, диспноэ, угнетение сознания**
                        """)).buildGrayText()
                        Image(systemName: "arrow.down")
                            .shadow(radius: 2)
                        MyViewBuilder(title: Text("10"), content: Text("""
                        **Венозный доступ** (инфузионные растворы **натрия хлорида 0,9 %**, **ацесоль**)
                        """)).buildGrayText()
                        Image(systemName: "arrow.down")
                            .shadow(radius: 2)
                        MyViewBuilder(title: Text("10"), content: Text("""
                        **Срочная кардиоверсия**, **в/в седация диазепамом 0,5 % - 4-6 мл**.
                        Кардиоверсия **50-100-200-300-360 Дж**.
                        """)).buildGrayText()
                        Image(systemName: "arrow.down")
                            .shadow(radius: 2)
                        MyViewBuilder(title: Text("10"), content: Text("""
                        **Доставка в ОИТАР** стационара
                        """)).buildGrayText()
                    }
                }
                .padding(.horizontal, 10)
                .padding(.bottom, 85)
            }
            //            .padding(.horizontal, 200)
            .edgesIgnoringSafeArea(.bottom)
            .background(Color.back)
        }
        .navigationBarBackButtonHidden(false)
        .navigationBarTitle("",displayMode: .automatic)

        .toolbar {
            ToolbarItem(placement: .principal) {
                VStack {
                Text("Алгоритм 10")
                    .font(.headline)
                    .bold()
                Text("«Пароксизмальная тахикардия с узким комплексом QRS»")
                    .font(.caption2)
            }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg10"), title: "Алгоритм 10")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}



#Preview {
    Prikaz1030Alg110View()
}
