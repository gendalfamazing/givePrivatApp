//
//  Prikaz1030Alg8View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg8View: View {
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
                    MyViewBuilder(title: Text("8"), content: Text("""
                    **Основные реанимационные мероприятия**.
                    
                    **Интубация трахеи** или комбитьюб (ларингиальная маска).
                    **Венозный доступ** (инфузионные растворы).
                    
                    **Попытка найти причину ЭМД**:
                    - гиповолемия;
                    - гипоксия;
                    - тампонада сердца;
                    - напряжённый пневмоторакс;
                    - передозировка лекарственных средств;
                    - механическая обструкция ВДП;
                    - ТЭЛА;
                    - гипотермия;
                    - гипо- или гипергликемия;
                    - ацидоз;
                    - обширный ИМ с кардиогенным шоком.
                    """)).buildGrayText()
                    Image(systemName: "arrow.down")
                        
                    
                    MyViewBuilder(title: Text("8"), content: Text("""
                    **Эпинефрин 1 мг** (1мл 0,18 % раствора) **в/в** струйно **или 3 мг** (3 мл 0,18 % раствора) **эндотрахеально** струйно быстро **каждые 3-5 минут**
                    """)).buildGrayText()
                    Image(systemName: "arrow.down")
                        
                    
                    
                    MyViewBuilder(title: Text("7"), content: Text("""
                    При **ЧСС менее 50** в минуту **атропин 1 мг** (1 мл 0,1 % раствора) **в/в** струйно. Повторять **каждые 3-5 минут**, но **не более 3 раз**.
                    """)).buildGrayText()
                    Image(systemName: "arrow.down")
                        
                    
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack {
                            MyViewBuilder(title: Text("7"), content: Text("""
                            **Электрическая актиность появилась**:
                            """)).buildGrayInText()
                            HStack {
                                MyViewBuilder(title: Text("7"), content: Text("""
                                    **Да**
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded1)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded1.toggle()
                                            if isTextExpanded == true {
                                                isTextExpanded.toggle()
                                            }
                                        }
                                    }
                                MyViewBuilder(title: Text("7"), content: Text("""
                                    **Нет**
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded.toggle()
                                            if isTextExpanded1 == true {
                                                isTextExpanded1.toggle()
                                            }
                                        }
                                    }
                                
                            }
                        }
                        .padding(5.0)
                    }
                    if isTextExpanded {
                        Image(systemName: "arrow.down")
                            
                    
                        NavigationLink (destination: Prikaz1030Alg7View()) {
                            MyViewBuilder(title: Text("8"), content: Text("Алгоритм 7 «Асистолия»")).buildNavigationText()
                        }
                    }
                    if isTextExpanded1 {
                        Image(systemName: "arrow.down")
                            
                    
                        NavigationLink (destination: Prikaz1030Alg6View()) {
                            MyViewBuilder(title: Text("8"), content: Text("Алгоритм 6 «Фибрилляция желудочков, желудочковая тахикардия с острой сердечной недостаточностью»")).buildNavigationText()
                        }
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
                    Text("Алгоритм 8")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("""
                    «Электромеханическая диссоциация (нарушение насосной
                    функции при сохранении электрической активности)»
                    """)
                    .font(.caption2)
                    .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg8"), title: "Алгоритм 8")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
        
    }
}


#Preview {
    Prikaz1030Alg8View()
}
