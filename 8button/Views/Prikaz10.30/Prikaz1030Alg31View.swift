//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg131View: View {
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
                    MyViewBuilder(title: Text("31"), content: Text("""
                            **Гипертермия ≥ 38,5°С**
                            """)).buildGrayText()
                    HStack {
                        MyViewBuilder(title: Text("31"), content: Text("""
                            Причины ясны
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
                                    if isTextExpanded7 == true {
                                        isTextExpanded7.toggle()
                                    }
                                    if isTextExpanded8 == true {
                                        isTextExpanded8.toggle()
                                    }
                                    
                                }
                            }
                        MyViewBuilder(title: Text("31"), content: Text("""
                            Неясной этиологии
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
                        MyViewBuilder(title: Text("31"), content: Text("""
                            **Осложнения**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded3)
                            .onTapGesture {
                                withAnimation (.interpolatingSpring) {
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
                    if isTextExpanded1 {
                        MyViewBuilder(title: Text("31"), content: Text("""
                                Инфекционные и неинфекционные заболевания
                                """)).buildGrayText()
                        Image(systemName: "arrow.down")
                            .shadow(radius: 2)
                        MyViewBuilder(title: Text("31"), content: Text("""
                                **Симптоматическая терапия**:
                                
                                **2 мл 50% раствора метамизола с 2 мл дротаверина** или **1 мл 3% раствора кеторолака** в/в;
                                **диазепам 0,5% 2 мл** при возбуждении и судорогах.
                                """)).buildGrayText()
                        Image(systemName: "arrow.down")
                            .shadow(radius: 2)
                        MyViewBuilder(title: Text("31"), content: Text("""
                                Рекомендации, дообследование **в амбулаторно-поликлиническом учреждении** (актив) или **доставка в стационар** (по показаниям)
                                """)).buildGrayText()

                    }
                    if isTextExpanded2 {
                        MyViewBuilder(title: Text("31"), content: Text("""
                                **«Лихорадка неясной этиологии»**:
                                
                                повышение температуры **до 38,5°С и выше не менее 3-х дней** при отсутствии явной этиологической причины
                                """)).buildGrayText()
                        Image(systemName: "arrow.down")
                            .shadow(radius: 2)
                        MyViewBuilder(title: Text("31"), content: Text("""
                                **Провизорная доставка в стационар инфекционного профиля**
                                """)).buildGrayText()
                    }
                    if isTextExpanded3 {
                        HStack {
                            MyViewBuilder(title: Text("31"), content: Text("""
                                **Отек головного мозга**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded4)
                                .onTapGesture {
                                    withAnimation (.interpolatingSpring) {
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
                                    withAnimation (.interpolatingSpring) {
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
                            MyViewBuilder(title: Text("31"), content: Text("""
                                **Инф.-токсический шок**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded6)
                                .onTapGesture {
                                    withAnimation (.interpolatingSpring) {
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
                    if isTextExpanded4 {
                        MyViewBuilder(title: Text("31"), content: Text("""
                                **Отек головного мозга**:
                                
                                - распирающая головная боль;
                                - угнетение сознания;
                                - брадикардия; 
                                - судороги.
                                """)).buildGrayText()
                        Image(systemName: "arrow.down")
                            .shadow(radius: 2)
                        MyViewBuilder(title: Text("31"), content: Text("""
                                **Дексаметазон 8-32 мг (преднизолон 90- 120 мг), фуросемид до 4 мл 1% раствора в/в**
                                """)).buildGrayText()
                        Image(systemName: "arrow.down")
                            .shadow(radius: 2)
                        MyViewBuilder(title: Text("31"), content: Text("""
                                - положение на боку,
                                - **при необходимости – установка воздуховода**, интубация трахеи;
                                - пульсоксиметрия.
                                - **оксигенотерапия** (под контролем SpО2 – **не менее 90%**).
                                - **инфузионная терапия** под контролем АД (**САД ≥ 90 мм.рт.ст.**).
                                - симптоматическая терапия.
                                """)).buildGrayText()
                        Image(systemName: "arrow.down")
                            .shadow(radius: 2)
                        MyViewBuilder(title: Text("31"), content: Text("""
                                **Доставка в стационар инфекционного профиля** (ОИТАР, минуя приемное отделение)
                                """)).buildGrayText()
                    }
                    if isTextExpanded5 {
                        MyViewBuilder(title: Text("31"), content: Text("""
                                **ОДН**:
                                
                                - ЧДД **более 40** или **менее 8** в 1 мин,
                                - **SpО2 ≤ 90%** при дыхании атмосферным воздухом.
                                """)).buildGrayText()
                        Image(systemName: "arrow.down")
                            .shadow(radius: 2)
                        NavigationLink (destination: Prikaz1030Alg3View()) {
                            MyViewBuilder(title: Text("31"), content: Text("Алгоритм 3 «Острая дыхательная недостаточность»")).buildNavigationText()
                        }
                        Image(systemName: "arrow.down")
                            .shadow(radius: 2)
                        MyViewBuilder(title: Text("31"), content: Text("""
                                - положение на боку,
                                - **при необходимости – установка воздуховода**, интубация трахеи;
                                - пульсоксиметрия.
                                - **оксигенотерапия** (под контролем SpО2 – **не менее 90%**).
                                - **инфузионная терапия** под контролем АД (**САД ≥ 90 мм.рт.ст.**).
                                - симптоматическая терапия.
                                """)).buildGrayText()
                        Image(systemName: "arrow.down")
                            .shadow(radius: 2)
                        MyViewBuilder(title: Text("31"), content: Text("""
                                **Доставка в стационар инфекционного профиля** (ОИТАР, минуя приемное отделение)
                                """)).buildGrayText()
                    }
                    if isTextExpanded6 {
                        MyViewBuilder(title: Text("31"), content: Text("""
                                **Инфекционно-токсический шок**:
                                
                                - холодная, бледная, влажная кожа;
                                - САД **менее 90 мм.рт.ст.**,
                                - ЧСС **более 100 в 1 мин**.
                                """)).buildGrayText()
                        Image(systemName: "arrow.down")
                            .shadow(radius: 2)
                        NavigationLink (destination: Prikaz1030Alg5View()) {
                            MyViewBuilder(title: Text("31"), content: Text("Алгоритм 5 «Гиповолемический шок»")).buildNavigationText()
                        }
                        Image(systemName: "arrow.down")
                            .shadow(radius: 2)
                        MyViewBuilder(title: Text("31"), content: Text("""
                                - положение на боку,
                                - **при необходимости – установка воздуховода**, интубация трахеи;
                                - пульсоксиметрия.
                                - **оксигенотерапия** (под контролем SpО2 – **не менее 90%**).
                                - **инфузионная терапия** под контролем АД (**САД ≥ 90 мм.рт.ст.**).
                                - симптоматическая терапия.
                                """)).buildGrayText()
                        Image(systemName: "arrow.down")
                            .shadow(radius: 2)
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
                        .bold()
                    Text("«Гипертермия»")
                        .font(.caption2)
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
    Prikaz1030Alg131View()
}
