//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg48View: View {
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
            ScrollView {
                Spacer()
                VStack {
                    
                    MyViewBuilder(title: Text("48"), content: Text("""
                            **Наложение шейного воротника, очистка верхних дыхательных путей и обеспечение адекватного дыхания**
                            """)).buildGrayText()
                    
                    Image(systemName: "arrow.down")
                       
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack {
                            MyViewBuilder(title: Text("48"), content: Text("""
                            **Оценка уровня сознания**:
                            """)).buildGrayInText().padding(-5)
                            VStack {
                                MyViewBuilder(title: Text("48"), content: Text("""
                                **Признаки клинической смерти**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded1)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded1.toggle()
                                            
                                            if isTextExpanded2 == true {
                                                isTextExpanded2.toggle()
                                            }
                                            if isTextExpanded3 == true {
                                                isTextExpanded3.toggle()
                                            }
                                            if isTextExpanded4 == false {
                                                isTextExpanded4.toggle()
                                            }
                                            if isTextExpanded1 == false && isTextExpanded2 == false && isTextExpanded3 == false{
                                                isTextExpanded4 = false
                                            }
                                        }
                                    }
                                HStack {
                                    
                                    MyViewBuilder(title: Text("48"), content: Text("""
                                **Оглушение, сопор, кома**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded2)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded2.toggle()
                                                
                                                if isTextExpanded1 == true {
                                                    isTextExpanded1.toggle()
                                                }
                                                if isTextExpanded3 == true {
                                                    isTextExpanded3.toggle()
                                                }
                                                if isTextExpanded4 == false {
                                                    isTextExpanded4.toggle()
                                                }
                                                if isTextExpanded1 == false && isTextExpanded2 == false && isTextExpanded3 == false{
                                                    isTextExpanded4 = false
                                                }
                                            }
                                        }
                                    MyViewBuilder(title: Text("48"), content: Text("""
                                **Нет**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded3)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded3.toggle()
                                                
                                                if isTextExpanded1 == true {
                                                    isTextExpanded1.toggle()
                                                }
                                                if isTextExpanded2 == true {
                                                    isTextExpanded2.toggle()
                                                }
                                                if isTextExpanded4 == true {
                                                    isTextExpanded4.toggle()
                                                }
                                                if isTextExpanded1 == false && isTextExpanded2 == false && isTextExpanded3 == false{
                                                    isTextExpanded4 = false
                                                }
                                            }
                                        }
                                    
                                }
                            }
                            
                        }
                        .padding(5)
                    }
                    
                    if isTextExpanded1 {
                        Image(systemName: "arrow.down")
                           
                        NavigationLink (destination: Prikaz1030Alg4View()) {
                            MyViewBuilder(title: Text("1"), content: Text("Алгоритм 4 «Внезапная смерть, сердечно-легочная реанимация»")).buildNavigationText()
                        }
                    }
                    if isTextExpanded2 {
                        //
                    }
                    if isTextExpanded3 {
                        Image(systemName: "arrow.down")
                       
                                MyViewBuilder(title: Text("**Неотложная помощь**:"), content: Text("""
                                - **ингаляция кислорода**,
                                - **согревание**.
                                
                                - **антигипоксанты** (**аскорбиновая кислота 5% - 0.3 мл/10кг** в/в, **эмоксипин 3% - 5-10мл** в/в).
                                - **раствор гидроксиэтилкрахмала 6% - 500 мл** в/в.
                                - **раствор глюкозы 5% - 400 мл в/в**.
                                - при возбуждении – **диазепам 0,5% - 2-4 мл** (далее **по 2 мл** в/в **до получения эффекта**).
                                - **преднизолон 120 - 300 мг** (дексаметазон 12 - 20 мг) в/в.
                                - **фуросемид 20-40 мг** в/в.
                                """)).buildGrayInAndHiddenBlock()
                            
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("48"), content: Text("""
                        **Доставка в ОИТАР стационара**
                        """)).buildGrayText()
                    }
                    if isTextExpanded4 {
                        Image(systemName: "arrow.down")
                         
                                MyViewBuilder(title: Text("**Неотложная помощь**:"), content: Text("""
                                - **ингаляция кислорода**.
                                
                                - при необходимости – **интубация трахеи** или комбитюб (ларингиальная маска) и **ВВЛ 50% О2**.
                                - **раствор гидроксиэтилкрахмала 6% - 500 мл** в/в.
                                - **раствор глюкозы 5%-400 мл** в/в.
                                - **натрия гидрокарбонат 4%-200 мл** в/в.
                                - **антигипоксанты: аскорбиновая кислота 5%-2 мл в/в; эмоксипин 3%-5-10 мл** в/в.
                                - при возбуждении: **диазепам 0,5% - 2-4 мл** в/в (далее **по 2 мл** в/в **до получения эффекта**), **натрия оксибутират 20% - 10-20 мл** в/в капельно в **5% растворе глюкозы**.
                                - **преднизолон 120 - 300 мг** (дексаметазон – 12-20 мг) в/в.
                                - **фуросемид 20-40 мг** (1% - 2-4 мл) в/в.
                                """)).buildGrayInAndHiddenBlock()
                            
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("48"), content: Text("""
                        **Доставка в ОИТАР стационара** под контролем жизненно важных функций, минуя приемное отделение
                        """)).buildGrayText()
                    }
                }
                .textSelection(.enabled)
                .padding(.horizontal, 10)
                .padding(.bottom, 55)
            }
            //            .padding(.horizontal, 200)
//            .edgesIgnoringSafeArea(.bottom)
            .background(Color.back)
        
        .navigationBarBackButtonHidden(false)
        .navigationBarTitle("",displayMode: .automatic)
        
        .toolbar {
            ToolbarItem(placement: .principal) {
                VStack {
                    Text("Алгоритм 48")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Утопление»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg48"), title: "Алгоритм 48")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}

#Preview {
    Prikaz1030Alg48View()
}
