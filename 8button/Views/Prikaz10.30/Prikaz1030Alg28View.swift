//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg128View: View {
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
    @State private var isTextExpanded16 = false
    @State private var isTextExpanded17 = false
    
    var body: some View {
        NavigationStack {
            ScrollView {
                Spacer()
                VStack {
                    MyViewBuilder(title: Text("28"), content: Text("""
                            **Сахарный диабет в анамнезе**
                            """)).buildGrayText()
                    
                    Image(systemName: "arrow.down")
                        .shadow(radius: 2)
                    
                    MyViewBuilder(title: Text("28"), content: Text("""
                            Оценка сознания по **шкале Глазго**. Оценка **витальных функций**. Определение уровня **гликемии**.
                            """)).buildGrayText()
                    HStack {
                        MyViewBuilder(title: Text("27"), content: Text("""
                            **Гипогликемическая** кома
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
                        MyViewBuilder(title: Text("27"), content: Text("""
                            **Гипергликемическая** кома.
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
                                    
                                }
                            }
                    }
                    if isTextExpanded1 {
                        MyViewBuilder(title: Text("28"), content: Text("""
                                **Клинические признаки**:
                                
                                - **влажные кожные покровы**;
                                - повышенный тонус мышц;
                                - **клонико-тонические судороги**;
                                - тургор тканей не изменён;
                                - уровень гликемии **менее 3,5 ммоль/л**;
                                - **быстрое развитие симптомов**.
                                """)).buildGrayText()
                        Image(systemName: "arrow.down")
                            .shadow(radius: 2)
                        MyViewBuilder(title: Text("28"), content: Text("""
                                Ввести **40% раствор глюкозы** в/в не **более 80-100 мл**;
                                
                                при неэффективности – **5% раствор глюкозы в/в капельно 400 мл**.
                                """)).buildGrayText()
                        HStack {
                            MyViewBuilder(title: Text("27"), content: Text("""
                                Сознание **восстановилось**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded3)
                                .onTapGesture {
                                    withAnimation (.interpolatingSpring) {
                                        isTextExpanded3.toggle()
                                        
                                        
                                        if isTextExpanded4 == true {
                                            isTextExpanded4.toggle()
                                        }
                                        
                                    }
                                }
                            MyViewBuilder(title: Text("27"), content: Text("""
                                Сознание **не восстановилось**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded4)
                                .onTapGesture {
                                    withAnimation (.interpolatingSpring) {
                                        isTextExpanded4.toggle()
                                        if isTextExpanded3 == true {
                                            isTextExpanded3.toggle()
                                        }
                                    }
                                }
                        }
                    }
                    if isTextExpanded2 {
                        MyViewBuilder(title: Text("28"), content: Text("""
                                **Клинические признаки**:
                                
                                - **сухость кожных покровов**;
                                - **дыхание Куссмауля с запахом ацетона**;
                                - тонус мышц снижен;
                                - **медленное развитие симптомов** (от нескольких часов до нескольких суток).
                                """)).buildGrayText()
                        Image(systemName: "arrow.down")
                            .shadow(radius: 2)
                        MyViewBuilder(title: Text("28"), content: Text("""
                                **Неотложная помощь**:
                                
                                - **постановка воздуховода**;
                                - **оксигенотерапия**, при неадекватном дыхании – **ИВЛ через ларингеальную маску** (интубационную трубку);
                                - обеспечить **венозный доступ**,
                                - **0,9% раствор натрия хлорида 500 мл в/в**.
                                """)).buildGrayText()
                        Image(systemName: "arrow.down")
                            .shadow(radius: 2)
                        MyViewBuilder(title: Text("28"), content: Text("""
                                **Доставка в стационар** по профилю основного заболевания
                                """)).buildGrayText()
                    }
                    if isTextExpanded3 {
                        MyViewBuilder(title: Text("28"), content: Text("""
                                **Доставка в стационар** по профилю основного заболевания
                                """)).buildGrayText()
                    }
                    if isTextExpanded4 {
                        MyViewBuilder(title: Text("28"), content: Text("""
                                **Неотложная помощь**:
                                
                                - **постановка воздуховода**;
                                - **оксигенотерапия**, при неадекватном дыхании – **ИВЛ через ларингеальную маску** (интубационную трубку);
                                - обеспечить **венозный доступ**,
                                - **0,9% раствор натрия хлорида 500 мл в/в**.
                                """)).buildGrayText()
                        Image(systemName: "arrow.down")
                            .shadow(radius: 2)
                        MyViewBuilder(title: Text("28"), content: Text("""
                                **Доставка в стационар** по профилю основного заболевания
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
                    Text("Алгоритм 28")
                        .font(.headline)
                        .bold()
                    Text("«Комы при сахарном диабете»")
                        .font(.caption2)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg28"), title: "Алгоритм 28")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}

#Preview {
    Prikaz1030Alg128View()
}
