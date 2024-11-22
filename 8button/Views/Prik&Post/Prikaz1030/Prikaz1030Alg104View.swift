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
            ScrollView {
                Spacer()
                VStack {
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack {
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
                                
                            }.padding(5).padding(.top, -10)
                            
                        }
                        
                    }
                    
                    if isTextExpanded1 {
                        Image(systemName: "arrow.down")
                            
                    
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
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
                                }.padding(5).padding(.top, -10)
                                
                            }
                        }
                    }
                    if isTextExpanded2 {
                        Image(systemName: "arrow.down")
                            
                    
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack (spacing: 5){
                                MyViewBuilder(title: Text("4"), content: Text("**Венозный доступ с внутривенной (далее – в/в) инфузионной терапией 0,9% раствора натрия хлорида.**")).buildGrayInHiddenText().padding(.horizontal, -5)
                                
                                MyViewBuilder(title: Text("4"), content: Text("**Визуализировать сердечный ритм** через монитор с **электродов дефибриллятора**, или через **ЭКГ-аппарат**, после установки ЭКГ-электродов.")).buildGrayInHiddenText().padding(.horizontal, -5)
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
                                    MyViewBuilder(title: Text("4"), content: Text("**ИВЛ**")).buildGrayInHiddenText().padding(.horizontal, -5)
                                    
                                    MyViewBuilder(title: Text("4"), content: Text("**Доставка в стационар** (ОИТАР)")).buildGrayInHiddenText().padding(.horizontal, -5)
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
                                Spacer(minLength: 5)
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
                                    
                                    
                                }.padding(5).padding(.top, -10)
                                
                            }
                            
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
                                Spacer(minLength: 5)
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
                                    
                                    
                                }.padding(5).padding(.top, -10)
                                
                            }
                        }
                    }
                    if isTextExpanded4 {
                        Image(systemName: "arrow.down")
                            
                    
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("4"), content: Text("**Закрытый массаж сердца** по общепринятой схеме.")).buildGrayInHiddenText().padding(.horizontal, -5.0)
                                MyViewBuilder(title: Text("4"), content: Text("**Визуализировать сердечный ритм** через монитор с **электродов дефибриллятора**, или через **ЭКГ-аппарат**, после установки ЭКГ-электродов.")).buildGrayInHiddenText().padding(.horizontal, -5.0)
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
                                    MyViewBuilder(title: Text("4"), content: Text("**ИВЛ**")).buildGrayInHiddenText().padding(.horizontal, -5.0)
                                    
                                    MyViewBuilder(title: Text("4"), content: Text("**Доставка в стационар** (ОИТАР)")).buildGrayInHiddenText().padding(.horizontal, -5.0)
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
                                MyViewBuilder(title: Text("4"), content: Text("**Визуализировать сердечный ритм** через монитор с **электродов дефибриллятора**, или через **ЭКГ-аппарат**, после установки ЭКГ-электродов.")).buildGrayInHiddenText().padding(.horizontal, -5.0)
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
                                    MyViewBuilder(title: Text("4"), content: Text("**ИВЛ**")).buildGrayInHiddenText().padding(.horizontal, -5.0)
                                    
                                    MyViewBuilder(title: Text("4"), content: Text("**Доставка в стационар** (ОИТАР)")).buildGrayInHiddenText().padding(.horizontal, -5.0)
                                }
                                
                            }
                            .padding(5.0)
                        }
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

struct Prikaz1030Alg4ViewFavorites: View {
    @AppStorage("fontSize") var fontSize: Double = 14.0
    @EnvironmentObject var themeManager: ThemeManager
    @Environment(\.sizeCategory) var sizeCategory
    
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    
    @EnvironmentObject var favoritesManager: FavoritesManager
    @Environment(\.viewContext) var context: ViewContext
    @State private var showAlert = false
    @State private var alertMessage = ""
    
    var shouldShowOverlay: Bool {
            switch context {
            case .favorites:
                // В избранном не показываем оверлей
                return false
            case .nonFavorites, .other:
                // В других контекстах показываем оверлей
                return true
            }
        }
    var isInFavorites: Bool {
        return favoritesManager.favorites.contains { $0.viewIdentifier == "Алгоритм 4. «Внезапная смерть, сердечно-легочная реанимация»" }
    }
    
    func addToFavorites() {
        let newItem = FavoriteItem(name: "Приказ №1030", viewIdentifier: "Алгоритм 4. «Внезапная смерть, сердечно-легочная реанимация»", isExpanded: false, isNavigationLink: true)
        let success = favoritesManager.addItem(newItem)
        if success {
            // Элемент успешно добавлен
        } else {
            // Элемент уже существует
            alertMessage = "Этот элемент уже добавлен в избранное"
            showAlert = true
        }
    }
    
    func removeFromFavorites() {
        if let item = favoritesManager.favorites.first(where: { $0.viewIdentifier == "Алгоритм 4. «Внезапная смерть, сердечно-легочная реанимация»" }) {
            favoritesManager.removeItem(item)
        }
    }
    

    var body: some View {
        VStack {
            NavigationLink(destination: Prikaz1030Alg4View()) {
                HStack {
                    Image(systemName: "doc.text.magnifyingglass")
                        .resizable()
                        .frame(width: 18, height: 24)
                    //                                .padding(.horizontal)
                        .font(.caption2)
                        .padding(.horizontal, 11.0)
                        .padding(.vertical, 8.0)
                        .background(Color.titleNumber)
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5) // Устанавливаем цвет и ширину границы
                        )
                        .foregroundColor(Color.titleNumberForeground)
                    Spacer()
                    Spacer()
                    Text("Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030")
                        .padding(.horizontal, 3.0)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    Spacer()
                    Spacer()
                    Image(systemName: ("chevron.right"))
                        .opacity(0.3)
                        .padding(.trailing, 15)
                        .padding(.leading, 10)
                }
                .padding(5.0)
                //        .lineLimit(2)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .fixedSize(horizontal: false, vertical: true)
                .frame(minHeight: 50)
                .modifier(ThemeTitleBlueColorModifier())
                .cornerRadius(10)
                .overlay(
                    HStack {
                        Spacer()
                        VStack {
                            if shouldShowOverlay {
                                Image(systemName: "star.fill")
                                    .resizable()
                                    .frame(width: 14, height: 14)
                                    .foregroundColor(isInFavorites ? .favoriteStar : Color.clear)
                                    .rotationEffect(.degrees(isInFavorites ? -360 : 0))
                                    .animation(.snappy, value: isInFavorites)
                                    .padding(.vertical, 3)
                                    .padding(.horizontal, 3)
                            }
                            Spacer()
                        }
                    }
                )
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5) // Устанавливаем цвет и ширину границы
                )
            }
        }
        .padding(2)
        .contextMenu {
            switch context {
            case .favorites:
                EmptyView()
            case .nonFavorites:
                if isInFavorites {
                    Button(action: {
                        removeFromFavorites()
                    }) {
                        Text("Удалить из избранного")
                        Image(systemName: "star.slash")
                    }
                } else {
                    Button(action: {
                        addToFavorites()
                    }) {
                        Text("Добавить в избранное")
                        Image(systemName: "star.fill")
                    }
                }
            default:
                EmptyView()
            }
        }
        .alert(isPresented: $showAlert) {
            Alert(title: Text(alertMessage))
        }
        
    }
    
}
