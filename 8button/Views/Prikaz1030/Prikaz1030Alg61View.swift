//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg61View: View {
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
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack {
                            MyViewBuilder(title: Text("61"), content: Text("""
                            **Освобождение шеи от петли**
                            """)).buildGrayInText()
                            
                        }
                        .padding(5)
                    }
                    Image(systemName: "arrow.down")
                       
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack {
                            
                            MyViewBuilder(title: Text("61"), content: Text("""
                            **Отсутствие спонтанного дыхания и пульса на сонной артерии**:
                            """)).buildGrayInText()
                            HStack {
                                
                                MyViewBuilder(title: Text("61"), content: Text("""
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
                                            if isTextExpanded1 == false && isTextExpanded2 == false {
                                                isTextExpanded3 = false
                                            }
                                            
                                        }
                                    }
                                MyViewBuilder(title: Text("61"), content: Text("""
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
                                            if isTextExpanded1 == false && isTextExpanded2 == false {
                                                isTextExpanded3 = false
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
                    if isTextExpanded3 {
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                
                                MyViewBuilder(title: Text("61"), content: Text("""
                                **Неоложная помощь**:
                                """)).buildGrayInText()
                                MyViewBuilder(title: Text("61"), content: Text("""
                                1. **Восстановление и поддержание проходимости дыхательных путей** – **установка воздуховода** (интубационная трубка, ларингиальная маска, пищеводно-трахеальный обтуратор).
                                2. **ИВЛ со 100% оксигенотерапией**.
                                3. **Катетеризация периферической** (при необходимости центральной) **вены**.
                                4. **Инфузионная терапия**:
                                - **декстран/натрия хлорид, 0,9% раствор хлорида натрия**
                                - или **глюкоза 5% раствор 400-800 мл** в/в капельно.
                                5. **Унитиол 5% раствор 1 мл/10 кг** массы тела в/в.
                                6. **Преднизолон 60-90 мг** в/в;
                                7. **При судорогах** алгоритм 29 «Судорожный синдром»
                                """)).buildGrayInHiddenText()
                                NavigationLink (destination: Prikaz1030Alg29View()) {
                                    MyViewBuilder(title: Text("61"), content: Text("Алгоритм 29 «Судорожный синдром»")).buildNavigationText()
                                }
                            }
                            .padding(5)
                        }
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("61"), content: Text("""
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
                    Text("Алгоритм 61")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Странгуляционная асфиксия»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg61"), title: "Алгоритм 61")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}

#Preview {
    Prikaz1030Alg61View()
}
