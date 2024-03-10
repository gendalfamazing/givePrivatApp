//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg46View: View {
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
    
    @State private var isTextExpanded71 = true
    @State private var isTextExpanded72 = true
    
    var body: some View {
        NavigationStack {
            ScrollView {
                Spacer()
                VStack {
                    ZStack{
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack {
                            
                            MyViewBuilder(title: Text("46"), content: Text("""
                                    **Перенести пациента в прохладное место**.
                                    Первичный осмотр (ABCD), оценка уровня сознания.
                                    """)).buildGrayInHiddenText()
                            NavigationLink (destination: Prikaz1030Alg2View()) {
                                MyViewBuilder(title: Text("1"), content: Text("Алгоритм 2 «Первичный осмотр пациента (ABCD)».")).buildNavigationText().padding(5.0)
                            }
                            MyViewBuilder(title: Text("46"), content: Text("""
                                    **Пациент в сознании**:
                                    """)).buildGrayInText()
                            HStack {
                                MyViewBuilder(title: Text("46"), content: Text("""
                                **Да**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded1)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded1.toggle()
                                            
                                            if isTextExpanded2 == true {
                                                isTextExpanded2.toggle()
                                            }
                                            if isTextExpanded3 == false {
                                                isTextExpanded3.toggle()
                                            }
                                            if isTextExpanded2 == false && isTextExpanded1 == false{
                                                isTextExpanded3.toggle()
                                            }
                                        }
                                    }
                                MyViewBuilder(title: Text("46"), content: Text("""
                                **Нет**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded2)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded2.toggle()
                                            
                                            if isTextExpanded1 == true {
                                                isTextExpanded1.toggle()
                                            }
                                            if isTextExpanded3 == false {
                                                isTextExpanded3.toggle()
                                            }
                                            if isTextExpanded2 == false && isTextExpanded1 == false{
                                                isTextExpanded3.toggle()
                                            }
                                        }
                                    }
                                
                            }.padding(5).padding(.top, -10).padding(.bottom, -3)
                        }
                        
                    }
                    
                    if isTextExpanded1{
                        Image(systemName: "arrow.down")
                         
                                MyViewBuilder(title: Text("**Медицинская помощь**:"), content: Text("""
                                - **ингаляция кислорода** при необходимости;
                                - **охлаждение пациента**;
                                - **солевой раствор** внутрь или в/в при тошноте, рвоте (**0,9% раствор натрия хлорида, растворы электоролитов**);
                                - **ЭКГ контроль**.
                                """)).buildGrayInAndHiddenBlock()
                            
                    }
                    if isTextExpanded2{
                        Image(systemName: "arrow.down")
                        
                                MyViewBuilder(title: Text("**Неотложная помощь**:"), content: Text("""
                                - поддержание **проходимости дыхательных путей**;
                                - **кислород** в высокой концентрации;
                                - **интубация трахеи**;
                                - в/в **0,9% раствор натрия хлорида, растворы электоролитов**;
                                - **быстрое охлаждение**;
                                - ЭКГ контроль.
                                """)).buildGrayInAndHiddenBlock()
                           
                        Image(systemName: "arrow.down")
                        
                                MyViewBuilder(title: Text("**Медицинская помощь**:"), content: Text("""
                                - **ингаляция кислорода** при необходимости;
                                - **охлаждение пациента**;
                                - **солевой раствор** внутрь или в/в при тошноте, рвоте (**0,9% раствор натрия хлорида, растворы электоролитов**);
                                - **ЭКГ контроль**.
                                """)).buildGrayInAndHiddenBlock()
                           
                    }
                    if isTextExpanded3{
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("46"), content: Text("""
                        **Вторичный осмотр (ABCD)**
                        """)).buildGrayText()
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("46"), content: Text("""
                        **Симптоматическая терапия**
                        **(избегать использования вазопрессоров и препаратов антихолинергического действия)**.
                        **Глюкометрия**.
                        """)).buildGrayText()
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("46"), content: Text("""
                        **Экстренная доставка в стационар** по профилю основного заболевания
                        """)).buildGrayText()
                    }
                    
                }
                .textSelection(.enabled)
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
                    Text("Алгоритм 46")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Тепловой удар»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg46"), title: "Алгоритм 46")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}

#Preview {
    Prikaz1030Alg46View()
}
