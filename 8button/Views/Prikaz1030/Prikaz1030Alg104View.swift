//
//  Prikaz1030Alg4View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg4View: View {
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
    
    @State private var isTextExpanded71 = false
    @State private var isTextExpanded72 = false
    @State private var isTextExpanded73 = false
    @State private var isTextExpanded74 = false
    @State private var isTextExpanded75 = false
    @State private var isTextExpanded76 = false
    @State private var isTextExpanded77 = false
    @State private var isTextExpanded78 = false
    
    var body: some View {
        NavigationStack {
            ScrollView {
                Spacer()
                VStack {
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack (spacing: 1){
                            MyViewBuilder(title: Text("4"), content: Text("""
                      **Констатирована клиническая смерть**.
                      **Смерть в присутствии бригады**:
                      """)).buildGrayInText()
                            
                            
                            HStack {
                                MyViewBuilder(title: Text("4"), content: Text("**Да**")).buildGreen1Text(isTextExpanded: isTextExpanded1)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded1.toggle()
                                            if isTextExpanded71 == true {
                                                isTextExpanded71.toggle()
                                            }
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
                                            if isTextExpanded10 == true {
                                                isTextExpanded10.toggle()
                                            }
                                            if isTextExpanded12 == true {
                                                isTextExpanded12.toggle()
                                            }
                                        }
                                    }
                                MyViewBuilder(title: Text("4"), content: Text("**Нет**")).buildGreen1Text(isTextExpanded: isTextExpanded3)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded3.toggle()
                                            if isTextExpanded71 == false {
                                                isTextExpanded71.toggle()
                                            }
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
                                            if isTextExpanded9 == true {
                                                isTextExpanded9.toggle()
                                            }
                                            if isTextExpanded10 == true {
                                                isTextExpanded10.toggle()
                                            }
                                            if isTextExpanded12 == true {
                                                isTextExpanded12.toggle()
                                            }
                                        }
                                    }
                                
                            }
                            
                        }
                        .padding(5.0)
                    }
                    
                    if isTextExpanded1 {
                        Image(systemName: "arrow.down")
                            
                    
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack (spacing: 1){
                                MyViewBuilder(title: Text("4"), content: Text("""
                                            **Нанести прекардиальный удар**
                                            
                                            **Дыхание и сердечная деятельность восстановились**:
                                            """)).buildGrayInText()
                                HStack {
                                    MyViewBuilder(title: Text("4"), content: Text("**Да**")).buildGreen1Text(isTextExpanded: isTextExpanded2)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded2.toggle()
                                                
                                                if isTextExpanded12 == true {
                                                    isTextExpanded12.toggle()
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
                                            }
                                        }
                                    MyViewBuilder(title: Text("4"), content: Text("**Нет**")).buildGreen1Text(isTextExpanded: isTextExpanded12)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded12.toggle()
                                                if isTextExpanded71 == false {
                                                    isTextExpanded71.toggle()
                                                }
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
                                                if isTextExpanded10 == true {
                                                    isTextExpanded10.toggle()
                                                }
                                            }
                                        }
                                }
                                
                            }
                            .padding(5.0)
                        }
                    }
                    if isTextExpanded2 {
                        Image(systemName: "arrow.down")
                            
                    
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack (spacing: 5){
                                MyViewBuilder(title: Text("4"), content: Text("**Венозный доступ с внутривенной (далее – в/в) инфузионной терапией 0,9% раствора натрия хлорида.**")).buildGrayInHiddenText()
                                
                                MyViewBuilder(title: Text("4"), content: Text("**Визуализировать сердечный ритм** через монитор с **электродов дефибриллятора**, или через **ЭКГ-аппарат**, после установки ЭКГ-электродов.")).buildGrayInHiddenText()
                                MyViewBuilder(title: Text("4"), content: Text("**Фибрилляция желудочков или желудочковая тахикардия без пульсации** на крупных артериях.")).buildBlue591Text(isTextExpanded: isTextExpanded7)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded7.toggle()
                                            if isTextExpanded10 == true {
                                                isTextExpanded10.toggle()
                                            }
                                            if isTextExpanded8 == true {
                                                isTextExpanded8.toggle()
                                            }
                                            if isTextExpanded9 == true {
                                                isTextExpanded9.toggle()
                                            }
                                        }
                                    }
                                if isTextExpanded7 {
                                    NavigationLink (destination: Prikaz1030Alg6View()) {
                                        MyViewBuilder(title: Text("4"), content: Text("Алгоритм 6 «Фибрилляция желудочков (ФЖ), желудочковая тахикардия (ЖТ) с острой сердечной недостаточностью»")).buildNavigationText()
                                    }
                                }
                                MyViewBuilder(title: Text("4"), content: Text("**Асистолия**")).buildBlue591Text(isTextExpanded: isTextExpanded8)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded8.toggle()
                                            if isTextExpanded10 == true {
                                                isTextExpanded10.toggle()
                                            }
                                            if isTextExpanded7 == true {
                                                isTextExpanded7.toggle()
                                            }
                                            if isTextExpanded9 == true {
                                                isTextExpanded9.toggle()
                                            }
                                        }
                                    }
                                if isTextExpanded8 {
                                    NavigationLink (destination: Prikaz1030Alg7View()) {
                                        MyViewBuilder(title: Text("4"), content: Text("Алгоритм 7 «Асистолия»")).buildNavigationText()
                                    }
                                }
                                MyViewBuilder(title: Text("4"), content: Text("**Наличие электрической активности на ЭКГ без пульсации** на крупных артериях (**электромеханическая диссоциация**)")).buildBlue591Text(isTextExpanded: isTextExpanded9)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded9.toggle()
                                            if isTextExpanded8 == true {
                                                isTextExpanded8.toggle()
                                            }
                                            if isTextExpanded7 == true {
                                                isTextExpanded7.toggle()
                                            }
                                            if isTextExpanded10 == true {
                                                isTextExpanded10.toggle()
                                            }
                                        }
                                    }
                                if isTextExpanded9 {
                                    NavigationLink (destination: Prikaz1030Alg8View()) {
                                        MyViewBuilder(title: Text("4"), content: Text("Алгоритм 8 «Электромеханическая диссо- циация (нарушение насосной функции при сохранении электрической активности)»")).buildNavigationText()
                                    }
                                }
                                MyViewBuilder(title: Text("4"), content: Text("**Восстановление ритма**")).buildBlue591Text(isTextExpanded: isTextExpanded10)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded10.toggle()
                                            if isTextExpanded9 == true {
                                                isTextExpanded9.toggle()
                                            }
                                            if isTextExpanded8 == true {
                                                isTextExpanded8.toggle()
                                            }
                                            if isTextExpanded7 == true {
                                                isTextExpanded7.toggle()
                                            }
                                        }
                                    }
                                if isTextExpanded10 {
                                    MyViewBuilder(title: Text("4"), content: Text("**ИВЛ**")).buildGrayInHiddenText()
                                    
                                    MyViewBuilder(title: Text("4"), content: Text("**Доставка в стационар** (ОИТАР)")).buildGrayInHiddenText()
                                }
                                
                            }
                            .padding(5.0)
                        }
                    }
                    if isTextExpanded3 {
                        Image(systemName: "arrow.down")
                            
                    
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack (spacing: 1){
                                if isTextExpanded71 {
                                    MyViewBuilder(title: Text("4"), content: Text("**Восстановить проходимость дыхательных путей**: тройной приём Сафара, **установка воздуховода** (интубационная трубка, ларингиальная маска, пищеводно-трахеальный обтуратор), **ИВЛ мешком Амбу.**")).buildGrayInHiddenText()
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded71.toggle()
                                                
                                            }
                                        }
                                }
                                MyViewBuilder(title: Text("4"), content: Text("**Сердечная деятельность восстановлена**:")).buildGrayInText()
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded71.toggle()
                                            
                                        }
                                    }
                                HStack {
                                    MyViewBuilder(title: Text("4"), content: Text("**Да**")).buildGreen1Text(isTextExpanded: isTextExpanded6)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded6.toggle()
                                                if isTextExpanded71 == true {
                                                    isTextExpanded71.toggle()
                                                }
                                                if isTextExpanded6 == false  && isTextExpanded4 == false  {
                                                    isTextExpanded71 = true
                                                }
                                                if isTextExpanded4 == true {
                                                    isTextExpanded4.toggle()
                                                }
                                                
                                            }
                                        }
                                    
                                    MyViewBuilder(title: Text("4"), content: Text("**Нет**")).buildGreen1Text(isTextExpanded: isTextExpanded4)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded4.toggle()
                                                
                                                if isTextExpanded71 == true {
                                                    isTextExpanded71.toggle()
                                                }
                                                if isTextExpanded6 == false  && isTextExpanded4 == false  {
                                                    isTextExpanded71 = true
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
                                            }
                                        }
                                    
                                    
                                }
                                
                            }
                            .padding(5.0)
                        }
                    }
                    if isTextExpanded12 {
                        Image(systemName: "arrow.down")
                            
                    
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                if isTextExpanded71 {
                                    MyViewBuilder(title: Text("4"), content: Text("**Восстановить проходимость дыхательных путей**: тройной приём Сафара, **установка воздуховода** (интубационная трубка, ларингиальная маска, пищеводно-трахеальный обтуратор), **ИВЛ мешком Амбу.**")).buildGrayInHiddenText()
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded71.toggle()
                                                
                                            }
                                        }
                                }
                                MyViewBuilder(title: Text("4"), content: Text("**Сердечная деятельность восстановлена**:")).buildGrayInText()
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded71.toggle()
                                            
                                        }
                                    }
                                HStack {
                                    MyViewBuilder(title: Text("4"), content: Text("**Да**")).buildGreen1Text(isTextExpanded: isTextExpanded6)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded6.toggle()
                                                if isTextExpanded71 == true {
                                                    isTextExpanded71.toggle()
                                                }
                                                if isTextExpanded6 == false  && isTextExpanded4 == false  {
                                                    isTextExpanded71 = true
                                                }
                                                if isTextExpanded4 == true {
                                                    isTextExpanded4.toggle()
                                                }
                                                
                                            }
                                        }
                                    
                                    MyViewBuilder(title: Text("4"), content: Text("**Нет**")).buildGreen1Text(isTextExpanded: isTextExpanded4)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded4.toggle()
                                                
                                                if isTextExpanded71 == true {
                                                    isTextExpanded71.toggle()
                                                }
                                                if isTextExpanded6 == false  && isTextExpanded4 == false  {
                                                    isTextExpanded71 = true
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
                                            }
                                        }
                                    
                                    
                                }
                                
                            }
                            .padding(5.0)
                        }
                    }
                    if isTextExpanded4 {
                        Image(systemName: "arrow.down")
                            
                    
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("4"), content: Text("**Закрытый массаж сердца** по общепринятой схеме.")).buildGrayInHiddenText()
                                MyViewBuilder(title: Text("4"), content: Text("**Визуализировать сердечный ритм** через монитор с **электродов дефибриллятора**, или через **ЭКГ-аппарат**, после установки ЭКГ-электродов.")).buildGrayInHiddenText()
                                MyViewBuilder(title: Text("4"), content: Text("**Фибрилляция желудочков или желудочковая тахикардия без пульсации** на крупных артериях.")).buildBlue591Text(isTextExpanded: isTextExpanded7)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded7.toggle()
                                            if isTextExpanded10 == true {
                                                isTextExpanded10.toggle()
                                            }
                                            if isTextExpanded8 == true {
                                                isTextExpanded8.toggle()
                                            }
                                            if isTextExpanded9 == true {
                                                isTextExpanded9.toggle()
                                            }
                                        }
                                    }
                                if isTextExpanded7 {
                                    NavigationLink (destination: Prikaz1030Alg6View()) {
                                        MyViewBuilder(title: Text("4"), content: Text("Алгоритм 6 «Фибрилляция желудочков (ФЖ), желудочковая тахикардия (ЖТ) с острой сердечной недостаточностью»")).buildNavigationText()
                                    }
                                }
                                MyViewBuilder(title: Text("4"), content: Text("**Асистолия**")).buildBlue591Text(isTextExpanded: isTextExpanded8)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded8.toggle()
                                            if isTextExpanded10 == true {
                                                isTextExpanded10.toggle()
                                            }
                                            if isTextExpanded7 == true {
                                                isTextExpanded7.toggle()
                                            }
                                            if isTextExpanded9 == true {
                                                isTextExpanded9.toggle()
                                            }
                                        }
                                    }
                                if isTextExpanded8 {
                                    NavigationLink (destination: Prikaz1030Alg7View()) {
                                        MyViewBuilder(title: Text("4"), content: Text("Алгоритм 7 «Асистолия»")).buildNavigationText()
                                    }
                                }
                                MyViewBuilder(title: Text("4"), content: Text("**Наличие электрической активности на ЭКГ без пульсации** на крупных артериях (**электромеханическая диссоциация**)")).buildBlue591Text(isTextExpanded: isTextExpanded9)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded9.toggle()
                                            if isTextExpanded8 == true {
                                                isTextExpanded8.toggle()
                                            }
                                            if isTextExpanded7 == true {
                                                isTextExpanded7.toggle()
                                            }
                                            if isTextExpanded10 == true {
                                                isTextExpanded10.toggle()
                                            }
                                        }
                                    }
                                if isTextExpanded9 {
                                    NavigationLink (destination: Prikaz1030Alg8View()) {
                                        MyViewBuilder(title: Text("4"), content: Text("Алгоритм 8 «Электромеханическая диссо- циация (нарушение насосной функции при сохранении электрической активности)»")).buildNavigationText()
                                    }
                                }
                                MyViewBuilder(title: Text("4"), content: Text("**Восстановление ритма**")).buildBlue591Text(isTextExpanded: isTextExpanded10)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded10.toggle()
                                            if isTextExpanded9 == true {
                                                isTextExpanded9.toggle()
                                            }
                                            if isTextExpanded8 == true {
                                                isTextExpanded8.toggle()
                                            }
                                            if isTextExpanded7 == true {
                                                isTextExpanded7.toggle()
                                            }
                                        }
                                    }
                                if isTextExpanded10 {
                                    MyViewBuilder(title: Text("4"), content: Text("**ИВЛ**")).buildGrayInHiddenText()
                                    
                                    MyViewBuilder(title: Text("4"), content: Text("**Доставка в стационар** (ОИТАР)")).buildGrayInHiddenText()
                                }
                                
                            }
                            .padding(5.0)
                        }
                    }
                    
                    
                    
                    if isTextExpanded6 {
                        Image(systemName: "arrow.down")
                            
                    
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("4"), content: Text("**Визуализировать сердечный ритм** через монитор с **электродов дефибриллятора**, или через **ЭКГ-аппарат**, после установки ЭКГ-электродов.")).buildGrayInHiddenText()
                                MyViewBuilder(title: Text("4"), content: Text("**Фибрилляция желудочков или желудочковая тахикардия без пульсации** на крупных артериях.")).buildBlue591Text(isTextExpanded: isTextExpanded7)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded7.toggle()
                                            if isTextExpanded10 == true {
                                                isTextExpanded10.toggle()
                                            }
                                            if isTextExpanded8 == true {
                                                isTextExpanded8.toggle()
                                            }
                                            if isTextExpanded9 == true {
                                                isTextExpanded9.toggle()
                                            }
                                        }
                                    }
                                if isTextExpanded7 {
                                    NavigationLink (destination: Prikaz1030Alg6View()) {
                                        MyViewBuilder(title: Text("4"), content: Text("Алгоритм 6 «Фибрилляция желудочков (ФЖ), желудочковая тахикардия (ЖТ) с острой сердечной недостаточностью»")).buildNavigationText()
                                    }
                                }
                                MyViewBuilder(title: Text("4"), content: Text("**Асистолия**")).buildBlue591Text(isTextExpanded: isTextExpanded8)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded8.toggle()
                                            if isTextExpanded10 == true {
                                                isTextExpanded10.toggle()
                                            }
                                            if isTextExpanded7 == true {
                                                isTextExpanded7.toggle()
                                            }
                                            if isTextExpanded9 == true {
                                                isTextExpanded9.toggle()
                                            }
                                        }
                                    }
                                if isTextExpanded8 {
                                    NavigationLink (destination: Prikaz1030Alg7View()) {
                                        MyViewBuilder(title: Text("4"), content: Text("Алгоритм 7 «Асистолия»")).buildNavigationText()
                                    }
                                }
                                MyViewBuilder(title: Text("4"), content: Text("**Наличие электрической активности на ЭКГ без пульсации** на крупных артериях (**электромеханическая диссоциация**)")).buildBlue591Text(isTextExpanded: isTextExpanded9)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded9.toggle()
                                            if isTextExpanded8 == true {
                                                isTextExpanded8.toggle()
                                            }
                                            if isTextExpanded7 == true {
                                                isTextExpanded7.toggle()
                                            }
                                            if isTextExpanded10 == true {
                                                isTextExpanded10.toggle()
                                            }
                                        }
                                    }
                                if isTextExpanded9 {
                                    NavigationLink (destination: Prikaz1030Alg8View()) {
                                        MyViewBuilder(title: Text("4"), content: Text("Алгоритм 8 «Электромеханическая диссо- циация (нарушение насосной функции при сохранении электрической активности)»")).buildNavigationText()
                                    }
                                }
                                MyViewBuilder(title: Text("4"), content: Text("**Восстановление ритма**")).buildBlue591Text(isTextExpanded: isTextExpanded10)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded10.toggle()
                                            if isTextExpanded9 == true {
                                                isTextExpanded9.toggle()
                                            }
                                            if isTextExpanded8 == true {
                                                isTextExpanded8.toggle()
                                            }
                                            if isTextExpanded7 == true {
                                                isTextExpanded7.toggle()
                                            }
                                        }
                                    }
                                if isTextExpanded10 {
                                    MyViewBuilder(title: Text("4"), content: Text("**ИВЛ**")).buildGrayInHiddenText()
                                    
                                    MyViewBuilder(title: Text("4"), content: Text("**Доставка в стационар** (ОИТАР)")).buildGrayInHiddenText()
                                }
                                
                            }
                            .padding(5.0)
                        }
                    }
                    Spacer()
                    Spacer()
                }
                .padding(.horizontal, 10)
                .padding(.bottom, 65)
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
                    Text("Алгоритм 4")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("""
                    «Внезапная смерть, сердечно-легочная реанимация»
                    """)
                    .font(.caption2)
                    .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg4"), title: "Алгоритм 4")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}



#Preview {
    Prikaz1030Alg4View()
}
