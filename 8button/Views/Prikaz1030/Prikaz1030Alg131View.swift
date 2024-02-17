//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg31View: View {
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
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack {
                            MyViewBuilder(title: Text("31"), content: Text("""
                            **Гипертермия ≥ 38,5°С**:
                            """)).buildGrayInText()
                            VStack {
                                HStack {
                                    MyViewBuilder(title: Text("31"), content: Text("""
                            **Причины ясны**
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
                                                
                                            }
                                        }
                                    MyViewBuilder(title: Text("31"), content: Text("""
                            **Неясной этиологии**
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
                                                
                                            }
                                        }
                                    
                                    
                                }
                                MyViewBuilder(title: Text("31"), content: Text("""
                            **Осложнения**
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
                        .padding(5)
                    }
                    
                    if isTextExpanded1 {
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("31"), content: Text("""
                                Инфекционные и неинфекционные заболевания
                                """)).buildGrayText()
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("31"), content: Text("""
                                **Симптоматическая терапия**:
                                """)).buildGrayInText()
                                MyViewBuilder(title: Text("31"), content: Text("""
                                        **2 мл 50% раствора метамизола с 2 мл дротаверина** или **1 мл 3% раствора кеторолака** в/в;
                                        **диазепам 0,5% 2 мл** при возбуждении и судорогах.
                                        """)).buildGrayInHiddenText()
                            }
                            .padding(5)
                        }
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("31"), content: Text("""
                                Рекомендации, дообследование **в амбулаторно-поликлиническом учреждении** (актив) или **доставка в стационар** (по показаниям)
                                """)).buildGrayText()
                        
                    }
                    if isTextExpanded2 {
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("31"), content: Text("""
                                **«Лихорадка неясной этиологии»**:
                                """)).buildGrayInText()
                                MyViewBuilder(title: Text("31"), content: Text("""
                                        - повышение температуры **до 38,5°С и выше не менее 3-х дней** при отсутствии явной этиологической причины
                                        """)).buildGrayInHiddenText()
                            }
                            .padding(5)
                        }
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("31"), content: Text("""
                                **Провизорная доставка в стационар инфекционного профиля**
                                """)).buildGrayText()
                    }
                    if isTextExpanded3 {
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                VStack {
                                    HStack {
                                        MyViewBuilder(title: Text("31"), content: Text("""
                                **Отек головного мозга**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded4)
                                            .onTapGesture {
                                                withAnimation (.snappy) {
                                                    isTextExpanded4.toggle()
                                                    
                                                    if isTextExpanded2 == true {
                                                        isTextExpanded2.toggle()
                                                    }
                                                    if isTextExpanded1 == true {
                                                        isTextExpanded1.toggle()
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
                                        MyViewBuilder(title: Text("31"), content: Text("""
                                **ОДН**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded5)
                                            .onTapGesture {
                                                withAnimation (.snappy) {
                                                    isTextExpanded5.toggle()
                                                    if isTextExpanded1 == true {
                                                        isTextExpanded1.toggle()
                                                    }
                                                    if isTextExpanded2 == true {
                                                        isTextExpanded2.toggle()
                                                    }
                                                    if isTextExpanded4 == true {
                                                        isTextExpanded4.toggle()
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
                                    MyViewBuilder(title: Text("31"), content: Text("""
                                **Инфекционно-токсический шок**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded6)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded6.toggle()
                                                if isTextExpanded1 == true {
                                                    isTextExpanded1.toggle()
                                                }
                                                if isTextExpanded2 == true {
                                                    isTextExpanded2.toggle()
                                                }
                                                if isTextExpanded4 == true {
                                                    isTextExpanded4.toggle()
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
                            .padding(5)
                        }
                    }
                    if isTextExpanded4 {
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("31"), content: Text("""
                                        **Клинические признаки**:
                                        """)).buildGrayInText()
                        MyViewBuilder(title: Text("31"), content: Text("""
                                - распирающая головная боль;
                                - угнетение сознания;
                                - брадикардия;
                                - судороги.
                                """)).buildGrayInHiddenText()
                            }
                            .padding(5)
                        }
                        Image(systemName: "arrow.down")
                           
                        
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("31"), content: Text("""
                                        **Неотложная помощь**:
                                        """)).buildGrayInText()
                        MyViewBuilder(title: Text("31"), content: Text("""
                                - **Дексаметазон 8-32 мг (преднизолон 90- 120 мг), фуросемид до 4 мл 1% раствора в/в**
                                
                                - положение на боку,
                                - **при необходимости – установка воздуховода**, интубация трахеи;
                                - пульсоксиметрия.
                                - **оксигенотерапия** (под контролем SpО2 – **не менее 90%**).
                                - **инфузионная терапия** под контролем АД (**САД ≥ 90 мм.рт.ст.**).
                                - симптоматическая терапия.
                                """)).buildGrayInHiddenText()
                            }
                            .padding(5)
                        }
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("31"), content: Text("""
                                **Доставка в стационар инфекционного профиля** (ОИТАР, минуя приемное отделение)
                                """)).buildGrayText()
                    }
                    if isTextExpanded5 {
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("31"), content: Text("""
                                        **Клинические признаки**:
                                        """)).buildGrayInText()
                                MyViewBuilder(title: Text("31"), content: Text("""
                                - ЧДД **более 40** или **менее 8** в 1 мин,
                                - **SpО2 ≤ 90%** при дыхании атмосферным воздухом.
                                """)).buildGrayInHiddenText()
                                NavigationLink (destination: Prikaz1030Alg3View()) {
                                    MyViewBuilder(title: Text("31"), content: Text("Алгоритм 3 «Острая дыхательная недостаточность»")).buildNavigationText()
                                }
                            }
                            .padding(5)
                        }
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("31"), content: Text("""
                                        **Неотложная помощь**:
                                        """)).buildGrayInText()
                        MyViewBuilder(title: Text("31"), content: Text("""
                                - положение на боку,
                                - **при необходимости – установка воздуховода**, интубация трахеи;
                                - пульсоксиметрия.
                                - **оксигенотерапия** (под контролем SpО2 – **не менее 90%**).
                                - **инфузионная терапия** под контролем АД (**САД ≥ 90 мм.рт.ст.**).
                                - симптоматическая терапия.
                                """)).buildGrayInHiddenText()
                            }
                            .padding(5)
                        }
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("31"), content: Text("""
                                **Доставка в стационар инфекционного профиля** (ОИТАР, минуя приемное отделение)
                                """)).buildGrayText()
                    }
                    if isTextExpanded6 {
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("31"), content: Text("""
                                        **Клинические признаки**:
                                        """)).buildGrayInText()
                                MyViewBuilder(title: Text("31"), content: Text("""
                                - холодная, бледная, влажная кожа;
                                - САД **менее 90 мм.рт.ст.**,
                                - ЧСС **более 100 в 1 мин**.
                                """)).buildGrayInHiddenText()
                                NavigationLink (destination: Prikaz1030Alg5View()) {
                                    MyViewBuilder(title: Text("31"), content: Text("Алгоритм 5 «Гиповолемический шок»")).buildNavigationText()
                                }
                            }
                            .padding(5)
                        }
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("31"), content: Text("""
                                        **Неотложная помощь**:
                                        """)).buildGrayInText()
                        MyViewBuilder(title: Text("31"), content: Text("""
                                - положение на боку,
                                - **при необходимости – установка воздуховода**, интубация трахеи;
                                - пульсоксиметрия.
                                - **оксигенотерапия** (под контролем SpО2 – **не менее 90%**).
                                - **инфузионная терапия** под контролем АД (**САД ≥ 90 мм.рт.ст.**).
                                - симптоматическая терапия.
                                """)).buildGrayInHiddenText()
                    }
                    .padding(5)
                }
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("31"), content: Text("""
                                **Доставка в стационар инфекционного профиля** (ОИТАР, минуя приемное отделение)
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
                    Text("Алгоритм 31")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Гипертермия»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg31"), title: "Алгоритм 31")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}

#Preview {
    Prikaz1030Alg31View()
}
