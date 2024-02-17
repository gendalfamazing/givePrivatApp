//
//  Prikaz1030Alg99View.swift
//  8button
//
//  Created by Artur Vladymcev on 3.12.23.
//

import SwiftUI

struct Prikaz1030Alg102View: View {
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
        
            ScrollView {
                Spacer()
                VStack {
                    
                        HStack {
                        MyViewBuilder(title: Text("Алгоритм 1"), content: Text("Проходимости дыхательных путей **нет**")).buildGreen1Text(isTextExpanded: isTextExpanded2)
                            .onTapGesture {
                                withAnimation (.interpolatingSpring) {
                                    isTextExpanded2.toggle()
                                    if isTextExpanded3 == true {
                                        isTextExpanded3.toggle()
                                    }
                                    if isTextExpanded5 == true {
                                        isTextExpanded5.toggle()
                                    }
                                    if isTextExpanded6 == true {
                                        isTextExpanded6.toggle()
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
                                    if isTextExpanded11 == true {
                                        isTextExpanded11.toggle()
                                    }
                                    if isTextExpanded13 == true {
                                        isTextExpanded13.toggle()
                                    }
                                    if isTextExpanded14 == true {
                                        isTextExpanded14.toggle()
                                    }
                                    if isTextExpanded15 == true {
                                        isTextExpanded15.toggle()
                                    }
                                }
                            }
                        
                        
                        MyViewBuilder(title: Text("Алгоритм 1"), content: Text("Проходимость дыхательных путей **есть**")).buildGreen1Text(isTextExpanded: isTextExpanded3)
                            .onTapGesture {
                                withAnimation (.interpolatingSpring) {
                                        isTextExpanded3.toggle()
                                    if isTextExpanded2 == true {
                                        isTextExpanded2.toggle()
                                    }
                                    if isTextExpanded5 == true {
                                        isTextExpanded5.toggle()
                                    }
                                    if isTextExpanded6 == true {
                                        isTextExpanded6.toggle()
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
                                    if isTextExpanded11 == true {
                                        isTextExpanded11.toggle()
                                    }
                                    if isTextExpanded13 == true {
                                        isTextExpanded13.toggle()
                                    }
                                    if isTextExpanded14 == true {
                                        isTextExpanded14.toggle()
                                    }
                                    if isTextExpanded15 == true {
                                        isTextExpanded15.toggle()
                                    }
                                    
                                }
                            }
                    }
                    
                    if isTextExpanded2 {
                        MyViewBuilder(title: Text("dfdfdf"),content: Text("""
                                        **Провести очистку дыхательных путей**:
                                        
                                        - **удаление инородных тел**, зубных протезов, **отсасывание** рвотных масс, крови, слизи и др.
                                        При подозрении на **травму головы и шеи** осуществить **шинирование шейной шиной** соответствующего размера. **Обязательно!**
                                        """)
                        ).buildGrayText()
                        
                    }
                    
                    
                    
                    if isTextExpanded3 {
                        MyViewBuilder(title: Text("dfdfdf"),content: Text("""
                                        **Нарушения функции дыхания**:
                                        
                                        - выраженная гипоксия **(SpO2 менее 90%)**, **апноэ**, диспноэ с цианозом кожи и слизистых, после аспирации, **сознание по шкале Глазго менее 8 баллов**.
                                        **Исключить пневмоторакс!**
                                        """)
                        ).buildGrayText()
                        
                    
                        HStack {
                        MyViewBuilder(title: Text("Алгоритм 1"), content: Text("Нарушение функции дыхания **есть**")).buildGreen1Text(isTextExpanded: isTextExpanded5)
                            .onTapGesture {
                                withAnimation (.interpolatingSpring) {
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
                                    if isTextExpanded10 == true {
                                        isTextExpanded10.toggle()
                                    }
                                    if isTextExpanded11 == true {
                                        isTextExpanded11.toggle()
                                    }
                                    if isTextExpanded13 == true {
                                        isTextExpanded13.toggle()
                                    }
                                    if isTextExpanded14 == true {
                                        isTextExpanded14.toggle()
                                    }
                                    if isTextExpanded15 == true {
                                        isTextExpanded15.toggle()
                                    }
                                }
                            }
                        
                        MyViewBuilder(title: Text("Алгоритм 1"), content: Text("Нарушения функции дыхания **нет**")).buildGreen1Text(isTextExpanded: isTextExpanded6)
                            .onTapGesture {
                                withAnimation (.interpolatingSpring) {
                                    isTextExpanded6.toggle()
                                    
                                    if isTextExpanded7 == false {
                                        isTextExpanded7.toggle()
                                    }
                                    if isTextExpanded5 == true {
                                        isTextExpanded5.toggle()
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
                                    if isTextExpanded11 == true {
                                        isTextExpanded11.toggle()
                                    }
                                    if isTextExpanded13 == true {
                                        isTextExpanded13.toggle()
                                    }
                                    if isTextExpanded14 == true {
                                        isTextExpanded14.toggle()
                                    }
                                    if isTextExpanded15 == true {
                                        isTextExpanded15.toggle()
                                    }
                                }
                            }
                    }
                    }
                    if isTextExpanded5 {
                        MyViewBuilder(title: Text("dfdfdf"),content: Text("""
                                        **Линейная бригада СМП**:
                                        **установить воздуховод** (при возможности – **интубация трахеи**), **ингаляция** воздушно-кислородной смесью, **положение на боку** при транспортировке **(при отсутствии противопоказаний)**.
                                        
                                        **Специализированная бригада СМП**:
                                        указанное выше + **мониторирование SpO2, аппаратная ИВЛ**.
                                        """)
                        ).buildGrayText()
                        NavigationLink(destination: Prikaz1030Alg2View()) {
                            MyViewBuilder(title: Text("26"), content: Text("Алгоритм 26 «Обструкция дыхательных путей инородным телом»")).buildNavigationText()
                        }
                        
                    }
                    
                    
                    if isTextExpanded6 {
                        MyViewBuilder(title: Text("dfdfdf"),content: Text("""
                                        **Нарушения функции кровообращения**:
                                        
                                        наличие пульса на периферических и центральных артериях
                                        """)
                        ).buildGrayText()
                        
                    
                        HStack {
                        MyViewBuilder(title: Text("Алгоритм 1"), content: Text("Нарушение кровообращения **есть**")).buildGreen1Text(isTextExpanded: isTextExpanded8)
                            .onTapGesture {
                                withAnimation (.interpolatingSpring) {
                                    isTextExpanded8.toggle()
                                    if isTextExpanded9 == true {
                                        isTextExpanded9.toggle()
                                    }
                                    if isTextExpanded11 == true {
                                        isTextExpanded11.toggle()
                                    }
                                    if isTextExpanded13 == true {
                                        isTextExpanded13.toggle()
                                    }
                                    if isTextExpanded14 == true {
                                        isTextExpanded14.toggle()
                                    }
                                    if isTextExpanded15 == true {
                                        isTextExpanded15.toggle()
                                    }
                                }
                            }
                        
                        
                        MyViewBuilder(title: Text("Алгоритм 1"), content: Text("Нарушения кровообращения **нет**")).buildGreen1Text(isTextExpanded: isTextExpanded9)
                            .onTapGesture {
                                withAnimation (.interpolatingSpring) {
                                    isTextExpanded9.toggle()
                                    isTextExpanded10.toggle()
                                    
                                    
                                    if isTextExpanded8 == true {
                                        isTextExpanded8.toggle()
                                    }
                                    if isTextExpanded11 == true {
                                        isTextExpanded11.toggle()
                                    }
                                    if isTextExpanded13 == true {
                                        isTextExpanded13.toggle()
                                    }
                                    if isTextExpanded14 == true {
                                        isTextExpanded14.toggle()
                                    }
                                    if isTextExpanded15 == true {
                                        isTextExpanded15.toggle()
                                    }
                                    
                                }
                            }
                    }
                    }
                    if isTextExpanded8 {
                        MyViewBuilder(title: Text("dfdfdf"), content: Text("""
                                        **Уточнить наличие признаков клинической смерти** (реакция зрачков на свет, отсутствие сознания, самостоятельного дыхания).
                                        """)
                        ).buildGrayText()
                        
                        NavigationLink(destination: Prikaz1030Alg4View()) {
                            MyViewBuilder(title: Text("4"), content: Text("Алгоритм 4 «Внезапная смерть, сердечно-легочная реанимация»")).buildNavigationText()
                        }
                    }
                    
                    
                    
                    if isTextExpanded9 {
                        MyViewBuilder(title: Text("dfdfdf"), content: Text("""
                                        **Признаки гиповолемического шока**:
                                        
                                        1) холодная, бледная, влажная кожа;
                                        2) САД **менее 90 мм.рт.ст.**;
                                        3) ЧСС **более 100** в 1 мин;
                                        4) нарушение сознания **(менее 12 баллов)**.
                                        """)
                        ).buildGrayText()
                        
                    
                   
                        HStack {
                            MyViewBuilder(title: Text("Алгоритм 1"), content: Text("Признаки ГШ **есть**")).buildGreen1Text(isTextExpanded: isTextExpanded11)
                                .onTapGesture {
                                    withAnimation (.interpolatingSpring) {
                                        isTextExpanded11.toggle()
                                        if isTextExpanded13 == true {
                                            isTextExpanded13.toggle()
                                        }
                                        if isTextExpanded14 == true {
                                            isTextExpanded14.toggle()
                                        }
                                        if isTextExpanded15 == true {
                                            isTextExpanded15.toggle()
                                        }
                                        
                                    }
                                }
                            
                            
                            MyViewBuilder(title: Text("Алгоритм 1"), content: Text("Признаков ГШ **нет**")).buildGreen1Text(isTextExpanded: isTextExpanded13)
                                .onTapGesture {
                                    withAnimation (.interpolatingSpring) {
                                        
                                        isTextExpanded13.toggle()
                                        
                                        if isTextExpanded11 == true {
                                            isTextExpanded11.toggle()
                                        }
                                        if isTextExpanded14 == true {
                                            isTextExpanded14.toggle()
                                        }
                                        if isTextExpanded15 == true {
                                            isTextExpanded15.toggle()
                                        }
                                        
                                        
                                    }
                                }
                        }
                    }
                    
                    if isTextExpanded11 {
                        NavigationLink(destination: Prikaz1030Alg5View()) {
                            MyViewBuilder(title: Text("26"), content: Text("Алгоритм 5 «Гиповолемический шок»")).buildNavigationText()
                        }
                        
                    }
                    
                    
                    if isTextExpanded13 {
                        HStack {
                            MyViewBuilder(title: Text("Алгоритм 1"), content: Text("Травмы **есть**")).buildGreen1Text(isTextExpanded: isTextExpanded14)
                                .onTapGesture {
                                    withAnimation (.interpolatingSpring) {
                                        isTextExpanded14.toggle()
                                        if isTextExpanded15 == true {
                                            isTextExpanded15.toggle()
                                        }
                                        
                                    }
                                }
                            
                            
                            MyViewBuilder(title: Text("Алгоритм 1"), content: Text("Травм **нет**")).buildGreen1Text(isTextExpanded: isTextExpanded15)
                                .onTapGesture {
                                    withAnimation (.interpolatingSpring) {
                                        isTextExpanded15.toggle()
                                        if isTextExpanded14 == true {
                                            isTextExpanded14.toggle()
                                        }
                                    }
                                }
                        }
                            if isTextExpanded14 {
                                MyViewBuilder(title: Text("dfdfdf"), content: Text("""
                                                **Обезболивание**.
                                                **Шинирование и транспортировка** в соответствии с локализацией травмы.
                                                
                                                **При ДТП обязательна иммобилизация на жестких носилках или на рентгеннегативном щите!**
                                                """)
                                ).buildGrayText()
                                
                                
                            }
                            if isTextExpanded15 {
                                MyViewBuilder(title: Text("dfdfdf"), content: Text("""
                                                **Углубленное обследование пациента** (ЭКГ, измерение гликемии и другое по показаниям).
                                                """)
                                ).buildGrayText()
                                
                                MyViewBuilder(title: Text("dfdfdf"),  content: Text("""
                                                Установление **предварительного диагноза**, **оказание медицинской помощи** по соответствующему алгоритму.
                                                """)
                                ).buildGrayText()
                                Spacer()
                                
                            }
                    
                    }
                    
                    Spacer()
                    Spacer()
                }
                .padding(.horizontal, 10)
                .padding(.bottom, 85)
            }
//            .padding(.horizontal, 200)
            .edgesIgnoringSafeArea(.bottom)
            .background(Color.back)
        
        
        .navigationBarBackButtonHidden(false)
        .navigationBarTitle("",displayMode: .inline)
        .toolbar {
            ToolbarItem(placement: .principal) {
                VStack {
                Text("Алгоритм 2")
                    .font(.headline)
                    .bold()
                Text("""
                    «Первичный осмотр пациента (ABCD)»
                    """)
                    .font(.caption2)
            }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg2"), title: "Алгоритм 2")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
    
}



#Preview {
    Prikaz1030Alg102View()
}
