//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg122View: View {
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
    @State private var isTextExpanded13 = false
    @State private var isTextExpanded14 = false
    @State private var isTextExpanded15 = false
    
    var body: some View {
        NavigationStack {
            ScrollView {
                Spacer()
                VStack{
                    HStack {
                        MyViewBuilder(title: Text("22"), content: Text("""
                        Сознание **не восстановилось**
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
                                    if isTextExpanded7 == true {
                                        isTextExpanded7.toggle()
                                    }
                                    if isTextExpanded8 == true {
                                        isTextExpanded8.toggle()
                                    }
                                }
                            }
                        MyViewBuilder(title: Text("22"), content: Text("""
                        Сознание **восстановилось**
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
                                    if isTextExpanded5 == true {
                                        isTextExpanded5.toggle()
                                    }
                                    if isTextExpanded6 == true {
                                        isTextExpanded6.toggle()
                                    }
                                }
                            }
                    }
                    if isTextExpanded1{
                        MyViewBuilder(title: Text("22"), content: Text("""
                        **Провести оценку**:
                        
                        - сознания по шкале Глазго; 
                        - АД, ЧСС, ЧДД;
                        - ЭКГ.
                        
                        **Неврологический осмотр. Глюкометрия**.
                        """)).buildGrayText()
                        HStack {
                            MyViewBuilder(title: Text("22"), content: Text("""
                            Гипогликемия **есть**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded3)
                                .onTapGesture {
                                    withAnimation (.interpolatingSpring) {
                                        isTextExpanded3.toggle()
                                        
                                        if isTextExpanded2 == true {
                                            isTextExpanded2.toggle()
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
                                        if isTextExpanded7 == true {
                                            isTextExpanded7.toggle()
                                        }
                                        if isTextExpanded8 == true {
                                            isTextExpanded8.toggle()
                                        }
                                    }
                                }
                            
                            MyViewBuilder(title: Text("22"), content: Text("""
                            Гипогликемии **нет**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded4)
                                .onTapGesture {
                                    withAnimation (.interpolatingSpring) {
                                        isTextExpanded4.toggle()
                                        
                                        
                                        if isTextExpanded3 == true {
                                            isTextExpanded3.toggle()
                                        }
                                        if isTextExpanded2 == true {
                                            isTextExpanded2.toggle()
                                        }
                                        if isTextExpanded5 == true {
                                            isTextExpanded5.toggle()
                                        }
                                        if isTextExpanded6 == true {
                                            isTextExpanded6.toggle()
                                        }
                                        if isTextExpanded7 == true {
                                            isTextExpanded7.toggle()
                                        }
                                        if isTextExpanded8 == true {
                                            isTextExpanded8.toggle()
                                        }
                                    }
                                }
                        }
                    }
                    if isTextExpanded2{
                        NavigationLink (destination: Prikaz1030Alg15View()) {
                            MyViewBuilder(title: Text("22"), content: Text("Алгоритм 27 «Кома неясного генеза»")).buildNavigationText()
                        }
                    }
                    if isTextExpanded3{
                        MyViewBuilder(title: Text("22"), content: Text("""
                        **40% раствор глюкозы в/в до 100 мл**
                        """)).buildGrayText()
                        Image(systemName: "arrow.down")
                            .shadow(radius: 2)
                        MyViewBuilder(title: Text("22"), content: Text("""
                        **Сознание восстановилось**
                        """)).buildGrayText()
                        Image(systemName: "arrow.down")
                            .shadow(radius: 2)
                        MyViewBuilder(title: Text("22"), content: Text("""
                        **Доставка в стационар**
                        """)).buildGrayText()
                    }
                    if isTextExpanded4{
                        HStack {
                            MyViewBuilder(title: Text("22"), content: Text("""
                            Нарушение ритма **есть**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded5)
                                .onTapGesture {
                                    withAnimation (.interpolatingSpring) {
                                        isTextExpanded5.toggle()
                                        
                                        if isTextExpanded2 == true {
                                            isTextExpanded2.toggle()
                                        }
                                        
                                        
                                        if isTextExpanded3 == true {
                                            isTextExpanded3.toggle()
                                        }
                                        if isTextExpanded6 == true {
                                            isTextExpanded6.toggle()
                                        }
                                        if isTextExpanded7 == true {
                                            isTextExpanded7.toggle()
                                        }
                                        if isTextExpanded8 == true {
                                            isTextExpanded8.toggle()
                                        }
                                    }
                                }
                            
                            MyViewBuilder(title: Text("22"), content: Text("""
                            Нарушения ритма **нет**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded6)
                                .onTapGesture {
                                    withAnimation (.interpolatingSpring) {
                                        isTextExpanded6.toggle()
                                        
                                        
                                        if isTextExpanded3 == true {
                                            isTextExpanded3.toggle()
                                        }
                                        if isTextExpanded2 == true {
                                            isTextExpanded2.toggle()
                                        }
                                        
                                        if isTextExpanded5 == true {
                                            isTextExpanded5.toggle()
                                        }
                                        if isTextExpanded7 == true {
                                            isTextExpanded7.toggle()
                                        }
                                        if isTextExpanded8 == true {
                                            isTextExpanded8.toggle()
                                        }
                                    }
                                }
                        }
                    }
                    if isTextExpanded5 {
                        MyViewBuilder(title: Text("22"), content: Text("""
                        **См. алгоритмы в зависимости от вида нарушения ритма**
                        """)).buildGrayText()
                        NavigationLink (destination: Prikaz1030Alg6View()) {
                            MyViewBuilder(title: Text("22"), content: Text("Алгоритм 6 «Фибрилляция желудочков (ФЖ), желудочковая тахикардия (ЖТ) с острой сердечной недостаточностью»")).buildNavigationText()
                        }
                        NavigationLink (destination: Prikaz1030Alg12View()) {
                            MyViewBuilder(title: Text("22"), content: Text("Алгоритм 12 «Желудочковая экстрасистолия (злокачественная)»")).buildNavigationText()
                        }
                        NavigationLink (destination: Prikaz1030Alg13View()) {
                            MyViewBuilder(title: Text("22"), content: Text("Алгоритм 13 «Брадиаритмия (синусовая брадикардия, AV-блокада II степени, полная AV-блокада, синдром слабости синусового узла)»")).buildNavigationText()
                        }
                        NavigationLink (destination: Prikaz1030Alg10View()) {
                            MyViewBuilder(title: Text("22"), content: Text("Алгоритм 10 «Пароксизмальная тахикардия с узким комплексом QRS»")).buildNavigationText()
                        }
                        NavigationLink (destination: Prikaz1030Alg11View()) {
                            MyViewBuilder(title: Text("22"), content: Text("Алгоритм 11 «Пароксизмальная тахикардия с широким комплексом QRS»")).buildNavigationText()
                        }
                    }
                    if isTextExpanded6 {
                        HStack {
                            MyViewBuilder(title: Text("22"), content: Text("""
                            ОНМК **есть**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded7)
                                .onTapGesture {
                                    withAnimation (.interpolatingSpring) {
                                        isTextExpanded7.toggle()
                                        
                                        if isTextExpanded2 == true {
                                            isTextExpanded2.toggle()
                                        }
                                        
                                        
                                        if isTextExpanded3 == true {
                                            isTextExpanded3.toggle()
                                        }
                                        
                                        if isTextExpanded5 == true {
                                            isTextExpanded5.toggle()
                                        }
                                        if isTextExpanded8 == true {
                                            isTextExpanded8.toggle()
                                        }
                                    }
                                }
                            
                            MyViewBuilder(title: Text("22"), content: Text("""
                            ОНМК **нет**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded8)
                                .onTapGesture {
                                    withAnimation (.interpolatingSpring) {
                                        isTextExpanded8.toggle()
                                        
                                        
                                        if isTextExpanded3 == true {
                                            isTextExpanded3.toggle()
                                        }
                                        if isTextExpanded2 == true {
                                            isTextExpanded2.toggle()
                                        }
                                        
                                        if isTextExpanded5 == true {
                                            isTextExpanded5.toggle()
                                        }
                                        if isTextExpanded7 == true {
                                            isTextExpanded7.toggle()
                                        }
                                        
                                    }
                                }
                        }
                    }
                    if isTextExpanded7 {
                        NavigationLink (destination: Prikaz1030Alg13View()) {
                            MyViewBuilder(title: Text("22"), content: Text("Алгоритм 30 «Острое нарушение мозгового кровообращения»")).buildNavigationText()
                        }
                    }
                    if isTextExpanded8 {
                        MyViewBuilder(title: Text("21"), content: Text("""
                        **Доставка в стационар**
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
                    Text("Алгоритм 22")
                        .font(.headline)
                        .bold()
                    Text("«Обморок»")
                        .font(.caption2)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg22"), title: "Алгоритм 22")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}

#Preview {
    Prikaz1030Alg122View()
}
