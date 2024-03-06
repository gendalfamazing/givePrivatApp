//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg66View: View {
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
                            
                            MyViewBuilder(title: Text("66"), content: Text("""
                            **Локализация травмы**:
                            """)).buildGrayInText()
                            HStack {
                                
                                MyViewBuilder(title: Text("66"), content: Text("""
                            **Наружные половые органы**
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
                                            if isTextExpanded9 == true {
                                                isTextExpanded9.toggle()
                                            }
                                            if isTextExpanded10 == false {
                                                isTextExpanded10.toggle()
                                            }
                                            if isTextExpanded11 == true {
                                                isTextExpanded11.toggle()
                                            }
                                            if isTextExpanded12 == true {
                                                isTextExpanded12.toggle()
                                            }
                                            if isTextExpanded1 == false && isTextExpanded2 == false{
                                                isTextExpanded10 = false
                                            }
                                        }
                                    }
                                MyViewBuilder(title: Text("66"), content: Text("""
                            **Внутренние половые органы**
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
                                            if isTextExpanded9 == true {
                                                isTextExpanded9.toggle()
                                            }
                                            if isTextExpanded10 == true {
                                                isTextExpanded10.toggle()
                                            }
                                            if isTextExpanded11 == false {
                                                isTextExpanded11.toggle()
                                            }
                                            if isTextExpanded12 == false {
                                                isTextExpanded12.toggle()
                                            }
                                            if isTextExpanded1 == false && isTextExpanded2 == false{
                                                isTextExpanded11 = false
                                                isTextExpanded12 = false
                                            }
                                        }
                                    }
                                
                            }.padding(5).padding(.top, -10)
                        }
                    }
                    if isTextExpanded1{
                        Image(systemName: "arrow.down")
                         
                                MyViewBuilder(title: Text("**Проявления**:"), content: Text("""
                                - Дефект тканей и кровотечение
                                - Гематома без кровотечения
                                """)).buildGrayInAndHiddenBlock()
                            
                        
                    }
                    if isTextExpanded2{
                        Image(systemName: "arrow.down")
                          
                                MyViewBuilder(title: Text("**Проявления**:"), content: Text("""
                                - Нет признаков кровотечения
                                - Признаки внутреннего кровотечения
                                - Признаки наружного кровотечения
                                
                                При присоединении признаков **гиповолемического шока**
                                """)).buildGrayInAndHiddenBlock()
                            
                    }
                    if isTextExpanded3{
                        
                    }
                    if isTextExpanded4{
                        
                    }
                    if isTextExpanded5{
                        
                    }
                    if isTextExpanded6{
                        
                    }
                    if isTextExpanded7{
                        
                    }
                    if isTextExpanded8{
                        
                    }
                    if isTextExpanded9{
                        
                    }
                    if isTextExpanded10{
                        Image(systemName: "arrow.down")
                          
                                MyViewBuilder(title: Text("**Неотложная помощь**:"), content: Text("""
                                1. **При болевом синдроме**:
                                - в/в **2 мл 50% раствора метамизола** или **1-2 мл 2% раствора тримеперидина**, или **кеторолак 10-30 мг**.
                                2. **Т-образная повязка** на промежность.
                                """)).buildGrayInAndHiddenBlock()
                            
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                
                                MyViewBuilder(title: Text("66"), content: Text("""
                                **Признаки гиповолемического шока**:
                                """)).buildGrayInText()
                                HStack {
                                    
                                    MyViewBuilder(title: Text("66"), content: Text("""
                                **Есть**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded6)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded6.toggle()
                                                
                                                
                                                if isTextExpanded5 == true {
                                                    isTextExpanded5.toggle()
                                                }
                                                
                                                if isTextExpanded7 == true {
                                                    isTextExpanded7.toggle()
                                                }
                                                if isTextExpanded8 == true {
                                                    isTextExpanded8.toggle()
                                                }
                                                if isTextExpanded9 == true {
                                                    isTextExpanded9.toggle()
                                                }
                                                if isTextExpanded10 == false {
                                                    isTextExpanded10.toggle()
                                                }
                                                if isTextExpanded11 == false {
                                                    isTextExpanded11.toggle()
                                                }
                                                if isTextExpanded12 == false {
                                                    isTextExpanded12.toggle()
                                                }
                                                if isTextExpanded5 == false && isTextExpanded6 == false {
                                                    isTextExpanded11 = false
                                                    isTextExpanded12 = false
                                                }
                                            }
                                        }
                                    MyViewBuilder(title: Text("66"), content: Text("""
                                **Нет**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded5)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded5.toggle()
                                                
                                                
                                                if isTextExpanded6 == true {
                                                    isTextExpanded6.toggle()
                                                }
                                                if isTextExpanded7 == true {
                                                    isTextExpanded7.toggle()
                                                }
                                                if isTextExpanded8 == true {
                                                    isTextExpanded8.toggle()
                                                }
                                                if isTextExpanded9 == true {
                                                    isTextExpanded9.toggle()
                                                }
                                                if isTextExpanded10 == false {
                                                    isTextExpanded10.toggle()
                                                }
                                                if isTextExpanded11 == true {
                                                    isTextExpanded11.toggle()
                                                }
                                                if isTextExpanded12 == false {
                                                    isTextExpanded12.toggle()
                                                }
                                                if isTextExpanded5 == false && isTextExpanded6 == false {
                                                    isTextExpanded11 = false
                                                    isTextExpanded12 = false
                                                }
                                            }
                                        }
                                }.padding(5).padding(.top, -10)
                            }
                        }
                    }
                    if isTextExpanded11{
                        Image(systemName: "arrow.down")
                           
                        NavigationLink (destination: Prikaz1030Alg5View()) {
                            MyViewBuilder(title: Text("66"), content: Text("Алгоритм 5 «Гиповолемический шок»")).buildNavigationText()
                        }
                        
                    }
                    if isTextExpanded12{
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("66"), content: Text("""
                        **Доставка в ближайший стационар** по профилю заболевания
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
                    Text("Алгоритм 66")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Травма половых органов (женщины)»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg66"), title: "Алгоритм 66")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}

#Preview {
    Prikaz1030Alg66View()
}
