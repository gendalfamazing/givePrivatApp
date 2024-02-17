//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg124View: View {
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
                VStack {
                    MyViewBuilder(title: Text("24"), content: Text("""
                    **Симптомы**:
                    
                    - появившийся или усилившийся кашель;
                    - одышка;
                    - боль в грудной клетке, связанная с дыханием;
                    - наличие мокроты (слизисто–гнойной или гнойной);
                    - лихорадка более 38°С.
                    """)).buildGrayText()
                    HStack{
                        MyViewBuilder(title: Text("24"), content: Text("""
                        **Менее 3 симптомов**
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
                                    if isTextExpanded9 == true {
                                        isTextExpanded9.toggle()
                                    }
                                }
                            }
                        MyViewBuilder(title: Text("24"), content: Text("""
                        **3 симптома и более**
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
                                    if isTextExpanded9 == true {
                                        isTextExpanded9.toggle()
                                    }
                                }
                            }
                    }
                    if isTextExpanded1{
                        MyViewBuilder(title: Text("24"), content: Text("""
                        Пневмония **маловероятна**
                        """)).buildGrayText()
                    }
                    if isTextExpanded2{
                        MyViewBuilder(title: Text("24"), content: Text("""
                        **Оценить физикальные симптомы**:
                        
                        - влажные хрипы при аускультации легких;
                        - признаки уплотнения легочной ткани;
                        - бронхиальное дыхание;
                        - укорочение перкуторного звука;
                        - ослабление дыхания на ограниченном участке.
                        """)).buildGrayText()
                        HStack{
                            MyViewBuilder(title: Text("24"), content: Text("""
                            Нет **ни одного симптома**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded3)
                                .onTapGesture {
                                    withAnimation (.interpolatingSpring) {
                                        isTextExpanded3.toggle()
                                        
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
                                    }
                                }
                            MyViewBuilder(title: Text("24"), content: Text("""
                            Наличие **хотя бы одного симптома**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded4)
                                .onTapGesture {
                                    withAnimation (.interpolatingSpring) {
                                        isTextExpanded4.toggle()
                                        if isTextExpanded3 == true {
                                            isTextExpanded3.toggle()
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
                                        
                                    }
                                }
                        }
                    }
                    if isTextExpanded3 {
                        MyViewBuilder(title: Text("24"), content: Text("""
                            Пневмония **маловероятна**
                            """)).buildGrayText()
                    }
                    if isTextExpanded4 {
                        MyViewBuilder(title: Text("24"), content: Text("""
                            **Пневмония**
                            """)).buildGrayText()
                        HStack{
                            MyViewBuilder(title: Text("24"), content: Text("""
                            **Легкая степень**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded5)
                                .onTapGesture {
                                    withAnimation (.interpolatingSpring) {
                                        isTextExpanded5.toggle()
                                        
                                        if isTextExpanded6 == true {
                                            isTextExpanded6.toggle()
                                        }
                                        if isTextExpanded7 == true {
                                            isTextExpanded7.toggle()
                                        }
                                        
                                    }
                                }
                            
                            MyViewBuilder(title: Text("24"), content: Text("""
                            **Средняя степень**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded6)
                                .onTapGesture {
                                    withAnimation (.interpolatingSpring) {
                                        isTextExpanded6.toggle()
                                        
                                        if isTextExpanded5 == true {
                                            isTextExpanded5.toggle()
                                        }
                                        if isTextExpanded7 == true {
                                            isTextExpanded7.toggle()
                                        }
                                        
                                    }
                                }
                            
                            MyViewBuilder(title: Text("24"), content: Text("""
                            **Тяжелая степень**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded7)
                                .onTapGesture {
                                    withAnimation (.interpolatingSpring) {
                                        isTextExpanded7.toggle()
                                        
                                        if isTextExpanded6 == true {
                                            isTextExpanded6.toggle()
                                        }
                                        if isTextExpanded5 == true {
                                            isTextExpanded5.toggle()
                                        }
                                        
                                    }
                                }
                            
                        }
                        //
                        if isTextExpanded5 {
                            MyViewBuilder(title: Text("24"), content: Text("""
                                **Симптомы**:
                                
                                - **t до 38°С**;
                                - **ЧДД до 25** в 1 мин;
                                - **ЧСС до 90** в 1 мин;
                                - АД норма;
                                - нет нарушения сознания;
                                - интоксикация не выражена.
                                """)).buildGrayText()
                            Image(systemName: "arrow.down")
                                .shadow(radius: 2)
                            MyViewBuilder(title: Text("24"), content: Text("""
                                **Оценка факторов неблагоприятного прогноза**:
                                
                                - возраст старше 60 лет;
                                - сопутствующие заболевания;
                                - неэффективное амбулаторное лечение более 3 дней.
                                """)).buildGrayText()
                            HStack{
                                MyViewBuilder(title: Text("24"), content: Text("""
                                    **Нет**
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded8)
                                    .onTapGesture {
                                        withAnimation (.interpolatingSpring) {
                                            isTextExpanded8.toggle()
                                            
                                            if isTextExpanded9 == true {
                                                isTextExpanded9.toggle()
                                            }
                                            
                                        }
                                    }
                                MyViewBuilder(title: Text("24"), content: Text("""
                                    **Есть**
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded9)
                                    .onTapGesture {
                                        withAnimation (.interpolatingSpring) {
                                            isTextExpanded9.toggle()
                                            if isTextExpanded8 == true {
                                                isTextExpanded8.toggle()
                                            }
                                            
                                        }
                                    }
                            }
                            if isTextExpanded8 {
                                MyViewBuilder(title: Text("24"), content: Text("""
                                    **Доставка в стационар** по профилю основного заболевания,
                                    при отказе – **передать актив** в территориальную поликлинику
                                    """)).buildGrayText()
                            }
                            if isTextExpanded9 {
                                MyViewBuilder(title: Text("24"), content: Text("""
                                    **Медицинская помощь**:
                                    
                                    - **оксигенотерапия** (4-6 литров в мин);
                                    - **жаропонижающие и обезболивающие** препараты (по показаниям);
                                    - **бронходилятаторы** (по показаниям);
                                    - при сохраняющейся тенденции к снижению АД – **декстран/натрия хлорида 400,0** в/в капельно;
                                    - лечение сопутствующих заболеваний (по показаниям);
                                    - **цефтриаксон 1,0 в/в или в/м (при отсутствии противопоказаний и стабильной гемодинамике)**.
                                    """)).buildGrayText()
                                Image(systemName: "arrow.down")
                                    .shadow(radius: 2)
                                MyViewBuilder(title: Text("24"), content: Text("""
                                    **Доставка в стационар** по профилю основного заболевания
                                    """)).buildGrayText()
                            }
                        }
                        if isTextExpanded6 {
                            MyViewBuilder(title: Text("24"), content: Text("""
                                **Симптомы**:
                                
                                - **t до 38°С - 39°С**;
                                - **ЧД до 25-30** в 1 мин;
                                - **ЧСС до 90-125** в 1 мин;
                                - **снижение САД до 100 мм.рт.ст.**;
                                - нет нарушения сознания;
                                - **умеренно выражена интоксикация**.
                                """)).buildGrayText()
                            Image(systemName: "arrow.down")
                                .shadow(radius: 2)
                            MyViewBuilder(title: Text("24"), content: Text("""
                                **Медицинская помощь**:
                                
                                - **оксигенотерапия** (4-6 литров в мин);
                                - **жаропонижающие и обезболивающие** препараты (по показаниям);
                                - **бронходилятаторы** (по показаниям);
                                - при сохраняющейся тенденции к снижению АД – **декстран/натрия хлорида 400,0** в/в капельно;
                                - лечение сопутствующих заболеваний (по показаниям);
                                - **цефтриаксон 1,0 в/в или в/м (при отсутствии противопоказаний и стабильной гемодинамике)**.
                                """)).buildGrayText()
                            Image(systemName: "arrow.down")
                                .shadow(radius: 2)
                            MyViewBuilder(title: Text("24"), content: Text("""
                                **Доставка в стационар** по профилю основного заболевания
                                """)).buildGrayText()
                        }
                        if isTextExpanded7 {
                            MyViewBuilder(title: Text("24"), content: Text("""
                                **Симптомы**:
                                
                                - **t более 39°С**;
                                - **ЧД более 30** в 1мин;
                                - **ЧСС более 125** в 1мин;
                                - **САД менее 100 мм.рт.ст.**;
                                - **ДАД менее 60 мм.рт.ст.**;
                                - **нарушения сознания**;
                                - **выраженная интоксикация**.
                                """)).buildGrayText()
                            Image(systemName: "arrow.down")
                                .shadow(radius: 2)
                            MyViewBuilder(title: Text("24"), content: Text("""
                                **Медицинская помощь**:
                                
                                - **инфузионная терапия** – **400 мл 0,9 % раствора натрия хлорида** в/в (быстро), затем **400 мл декстран/натрия хлорид** в/в (быстро);
                                - **вазопрессорные амины до достижения САД 90-100 мм.рт.ст.**– **5мл 4% раствора дофамина в 200,0 мл 0,9% раствора натрия хлорида** (4-10 капель в 1 мин);
                                - лечение сопутствующих заболеваний (по показаниям);
                                - постоянный контроль функции дыхания и гемодинамики;
                                - **транспортировка в стационар бригадой СМП, оснащенной аппаратом ИВЛ**;
                                - **цефтриаксон 1,0 в/в или в/м (при отсутствии противопоказаний и стабильной гемодинамике)**.
                                """)).buildGrayText()
                            Image(systemName: "arrow.down")
                                .shadow(radius: 2)
                            MyViewBuilder(title: Text("24"), content: Text("""
                                **Доставка в стационар** (в ОИТАР, минуя приемное отделение)
                                """)).buildGrayText()
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
                    Text("Алгоритм 24")
                        .font(.headline)
                        .bold()
                    Text("«Пневмония»")
                        .font(.caption2)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg24"), title: "Алгоритм 24")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}

#Preview {
    Prikaz1030Alg124View()
}
