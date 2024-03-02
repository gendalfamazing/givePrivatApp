//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg35View: View {
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
    var body: some View {
        NavigationStack {
            ScrollView {
                Spacer()
                VStack {
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack {
                            MyViewBuilder(title: Text("35"), content: Text("""
                            **Эпидемиологический анамнез**:
                            """)).buildGrayInText()
                            MyViewBuilder(title: Text("35"), content: Text("""
                            - проведение оперативных вмешательств, парентеральное введение препаратов и
                            др. вмешательства за последние **180 дней**;
                            - контакт с больным.
                            """)).buildGrayInHiddenText()
                            HStack {
                                MyViewBuilder(title: Text("35"), content: Text("""
                                **Совпадения есть**
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
                                            
                                            
                                        }
                                    }
                                MyViewBuilder(title: Text("35"), content: Text("""
                                **Совпадений нет**
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
                                            
                                            
                                        }
                                    }
                            }
                        }
                        .padding(5)
                    }
                    if isTextExpanded1 {
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("35"), content: Text("""
                                **Дифференциальные признаки острого инфекционного гепатита**:
                                """)).buildGrayInText()
                                MyViewBuilder(title: Text("35"), content: Text("""
                                - желтуха имеет **красноватый оттенок**;
                                - может быть **кожный зуд** и следы расчесов на коже;
                                - **увеличение печени и селезенки**;
                                - **темная** моча, **обесцвеченный** кал;
                                - болевой синдром **слабо** выражен.
                                """)).buildGrayInHiddenText()
                                
                            }
                            .padding(5)
                        }
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("35"), content: Text("""
                        При выраженном болевом синдроме
                        **2-4 мл 2% раствора дротаверина** гидрохлорида в/в
                        """)).buildGrayText()
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("35"), content: Text("""
                        **Доставка в стационар** по профилю заболевания
                        """)).buildGrayText()
                    }
                    
                    if isTextExpanded2 {
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                
                                HStack {
                                    MyViewBuilder(title: Text("35"), content: Text("""
                                **Обструкция желчных путей**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded3)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded3.toggle()
                                                
                                                if isTextExpanded1 == true {
                                                    isTextExpanded1.toggle()
                                                }
                                                
                                                if isTextExpanded4 == true {
                                                    isTextExpanded4.toggle()
                                                }
                                                
                                                
                                            }
                                        }
                                    MyViewBuilder(title: Text("35"), content: Text("""
                                **Гемолитическая желтуха (кроме малярии)**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded4)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded4.toggle()
                                                
                                                if isTextExpanded1 == true {
                                                    isTextExpanded1.toggle()
                                                }
                                                if isTextExpanded3 == true {
                                                    isTextExpanded3.toggle()
                                                }
                                                
                                                
                                                
                                            }
                                        }
                                }
                            }
                            .padding(5)
                        }
                    }
                    if isTextExpanded3 {
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("35"), content: Text("""
                                **Дифференциальные признаки обструкции желчных путей**:
                                """)).buildGrayInText()
                                MyViewBuilder(title: Text("35"), content: Text("""
                                - желтуха имеет **зеленоватый оттенок**;
                                - чаще встречается у лиц **старше 40 лет**;
                                - **в анамнезе** может быть **желчнокаменная болезнь**;
                                - развитию желтухи предшествует **приступообразная, острая боль в правом подреберье**;
                                - при опухолях может быть менее интенсивной, но имеет **постоянный характер**;
                                - **диспепсические расстройства** (тошнота, рвота);
                                - **повышение температуры**;
                                - кожный зуд.
                                """)).buildGrayInHiddenText()
                                
                            }
                            .padding(5)
                        }
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("35"), content: Text("""
                        При выраженном болевом синдроме
                        **2-4 мл 2% раствора дротаверина** гидрохлорида в/в
                        """)).buildGrayText()
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("35"), content: Text("""
                        **Доставка в стационар** по профилю заболевания
                        """)).buildGrayText()
                    }
                    if isTextExpanded4 {
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("35"), content: Text("""
                                **Дифференциальные признаки гемолитической желтухи (кроме малярии)**:
                                """)).buildGrayInText()
                                MyViewBuilder(title: Text("35"), content: Text("""
                                - желтушность склер и кожи умеренная, имеет **лимонно-желтый оттенок**;
                                - одновременно имеется **бледность кожи** (из-за анемии);
                                - кожный зуд и расчесы тела **отсутствуют**;
                                - боли в области печени возникают **редко**;
                                - увеличение печени **незначительное**;
                                - **значительное увеличение селезенки**;
                                - **резкое окрашивание в темный цвет кала**.
                                """)).buildGrayInHiddenText()
                                
                            }
                            .padding(5)
                        }
                        
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("35"), content: Text("""
                        **Доставка в стационар** по профилю заболевания
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
                    Text("Алгоритм 35")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Острый инфекционный гепатит»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg35"), title: "Алгоритм 35")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}

#Preview {
    Prikaz1030Alg35View()
}
