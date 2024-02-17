//
//  Prikaz1030Alg4View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg104View: View {
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
                    MyViewBuilder(title: Text("4"), content: Text("**Констатирована клиническая смерть**")).buildBlue1Text(isTextExpanded: isTextExpanded)
                        .onTapGesture {
                            withAnimation (.interpolatingSpring) {
                                isTextExpanded.toggle()
                                if isTextExpanded1 == true {
                                    isTextExpanded1.toggle()
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
                    if isTextExpanded {
                        HStack {
                            MyViewBuilder(title: Text("4"), content: Text("Смерть **не в присутствии** бригады")).buildGreen1Text(isTextExpanded: isTextExpanded3)
                                .onTapGesture {
                                    withAnimation (.interpolatingSpring) {
                                        isTextExpanded3.toggle()
                                        if isTextExpanded1 == true {
                                            isTextExpanded1.toggle()
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
                            MyViewBuilder(title: Text("4"), content: Text("Смерть **в присутствии** бригады")).buildGreen1Text(isTextExpanded: isTextExpanded1)
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
                                        if isTextExpanded10 == true {
                                            isTextExpanded10.toggle()
                                        }
                                        if isTextExpanded12 == true {
                                            isTextExpanded12.toggle()
                                        }
                                    }
                                }
                        }
                        if isTextExpanded1 {
                            MyViewBuilder(title: Text("4"), content: Text("Нанести прекардиальный удар")).buildGrayText()
                            HStack {
                                MyViewBuilder(title: Text("4"), content: Text("Дыхание и сердечная деятельность **восстановились**")).buildGreen1Text(isTextExpanded: isTextExpanded2)
                                    .onTapGesture {
                                        withAnimation (.interpolatingSpring) {
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
                                MyViewBuilder(title: Text("4"), content: Text("Дыхание и сердечная деятельность **не восстановились**")).buildGreen1Text(isTextExpanded: isTextExpanded12)
                                    .onTapGesture {
                                        withAnimation (.interpolatingSpring) {
                                            isTextExpanded12.toggle()
                                            
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
                            if isTextExpanded2 {
                                MyViewBuilder(title: Text("4"), content: Text("**Венозный доступ с внутривенной (далее – в/в) инфузионной терапией 0,9% раствора натрия хлорида.**")).buildGrayText()
                                Image(systemName: "arrow.down")
                                    .shadow(radius: 2)
                                MyViewBuilder(title: Text("4"), content: Text("**Визуализировать сердечный ритм** через монитор с **электродов дефибриллятора**, или через **ЭКГ-аппарат**, после установки ЭКГ-электродов.")).buildGrayText()
                                MyViewBuilder(title: Text("4"), content: Text("**Фибрилляция желудочков или желудочковая тахикардия без пульсации** на крупных артериях.")).buildGreen1Text(isTextExpanded: isTextExpanded7)
                                    .onTapGesture {
                                        withAnimation (.interpolatingSpring) {
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
                                MyViewBuilder(title: Text("4"), content: Text("**Асистолия**")).buildGreen1Text(isTextExpanded: isTextExpanded8)
                                    .onTapGesture {
                                        withAnimation (.interpolatingSpring) {
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
                                MyViewBuilder(title: Text("4"), content: Text("**Наличие электрической активности на ЭКГ без пульсации** на крупных артериях (**электромеханическая диссоциация**)")).buildGreen1Text(isTextExpanded: isTextExpanded9)
                                    .onTapGesture {
                                        withAnimation (.interpolatingSpring) {
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
                                MyViewBuilder(title: Text("4"), content: Text("**Восстановление ритма**")).buildGreen1Text(isTextExpanded: isTextExpanded10)
                                    .onTapGesture {
                                        withAnimation (.interpolatingSpring) {
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
                                    MyViewBuilder(title: Text("4"), content: Text("**ИВЛ**")).buildGrayText()
                                    Image(systemName: "arrow.down")
                                        .shadow(radius: 2)
                                    MyViewBuilder(title: Text("4"), content: Text("**Доставка в стационар** (ОИТАР)")).buildGrayText()
                                }
                            }
                        }
                        if isTextExpanded3 {
                            MyViewBuilder(title: Text("4"), content: Text("**Восстановить проходимость дыхательных путей**: тройной приём Сафара, **установка воздуховода** (интубационная трубка, ларингиальная маска, пищеводно-трахеальный обтуратор), **ИВЛ мешком Амбу.**")).buildGrayText()
                            HStack {
                                MyViewBuilder(title: Text("4"), content: Text("Cердечная деятельность **не восстановилась**")).buildGreen1Text(isTextExpanded: isTextExpanded4)
                                    .onTapGesture {
                                        withAnimation (.interpolatingSpring) {
                                            isTextExpanded4.toggle()
                                            
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
                                
                                MyViewBuilder(title: Text("4"), content: Text("Cердечная деятельность **восстановилась**")).buildGreen1Text(isTextExpanded: isTextExpanded6)
                                    .onTapGesture {
                                        withAnimation (.interpolatingSpring) {
                                            isTextExpanded6.toggle()
                                            if isTextExpanded4 == true {
                                                isTextExpanded4.toggle()
                                            }
                                            
                                        }
                                    }
                            }
                            if isTextExpanded4 {
                                MyViewBuilder(title: Text("4"), content: Text("**Закрытый массаж сердца** по общепринятой схеме.")).buildGrayText()
                                Image(systemName: "arrow.down")
                                    .shadow(radius: 2)
                                MyViewBuilder(title: Text("4"), content: Text("**Визуализировать сердечный ритм** через монитор с **электродов дефибриллятора**, или через **ЭКГ-аппарат**, после установки ЭКГ-электродов.")).buildGrayText()
                                MyViewBuilder(title: Text("4"), content: Text("**Фибрилляция желудочков или желудочковая тахикардия без пульсации** на крупных артериях.")).buildGreen1Text(isTextExpanded: isTextExpanded7)
                                    .onTapGesture {
                                        withAnimation (.interpolatingSpring) {
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
                                MyViewBuilder(title: Text("4"), content: Text("**Асистолия**")).buildGreen1Text(isTextExpanded: isTextExpanded8)
                                    .onTapGesture {
                                        withAnimation (.interpolatingSpring) {
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
                                MyViewBuilder(title: Text("4"), content: Text("**Наличие электрической активности на ЭКГ без пульсации** на крупных артериях (**электромеханическая диссоциация**)")).buildGreen1Text(isTextExpanded: isTextExpanded9)
                                    .onTapGesture {
                                        withAnimation (.interpolatingSpring) {
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
                                MyViewBuilder(title: Text("4"), content: Text("**Восстановление ритма**")).buildGreen1Text(isTextExpanded: isTextExpanded10)
                                    .onTapGesture {
                                        withAnimation (.interpolatingSpring) {
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
                                    MyViewBuilder(title: Text("4"), content: Text("ИВЛ")).buildGrayText()
                                    Image(systemName: "arrow.down")
                                        .shadow(radius: 2)
                                    MyViewBuilder(title: Text("4"), content: Text("Доставка в стационар (ОИТАР)")).buildGrayText()
                                }
                                
                            }
                        }
                    }
                    if isTextExpanded12 {
                        MyViewBuilder(title: Text("4"), content: Text("**Восстановить проходимость дыхательных путей**: тройной приём Сафара, **установка воздуховода** (интубационная трубка, ларингиальная маска, пищеводно-трахеальный обтуратор), **ИВЛ мешком Амбу.**")).buildGrayText()
                        HStack {
                            MyViewBuilder(title: Text("4"), content: Text("Cердечная деятельность **не восстановилась**")).buildGreen1Text(isTextExpanded: isTextExpanded4)
                                .onTapGesture {
                                    withAnimation (.interpolatingSpring) {
                                        isTextExpanded4.toggle()
                                        
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
                            
                            MyViewBuilder(title: Text("4"), content: Text("Cердечная деятельность **восстановилась**")).buildGreen1Text(isTextExpanded: isTextExpanded6)
                                .onTapGesture {
                                    withAnimation (.interpolatingSpring) {
                                        isTextExpanded6.toggle()
                                        if isTextExpanded4 == true {
                                            isTextExpanded4.toggle()
                                        }
                                        
                                    }
                                }
                        }
                        if isTextExpanded4 {
                            MyViewBuilder(title: Text("4"), content: Text("**Закрытый массаж сердца** по общепринятой схеме.")).buildGrayText()
                            Image(systemName: "arrow.down")
                                .shadow(radius: 2)
                            MyViewBuilder(title: Text("4"), content: Text("**Визуализировать сердечный ритм** через монитор с **электродов дефибриллятора**, или через **ЭКГ-аппарат**, после установки ЭКГ-электродов.")).buildGrayText()
                            MyViewBuilder(title: Text("4"), content: Text("**Фибрилляция желудочков или желудочковая тахикардия без пульсации** на крупных артериях.")).buildGreen1Text(isTextExpanded: isTextExpanded7)
                                .onTapGesture {
                                    withAnimation (.interpolatingSpring) {
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
                            MyViewBuilder(title: Text("4"), content: Text("**Асистолия**")).buildGreen1Text(isTextExpanded: isTextExpanded8)
                                .onTapGesture {
                                    withAnimation (.interpolatingSpring) {
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
                            MyViewBuilder(title: Text("4"), content: Text("**Наличие электрической активности на ЭКГ без пульсации** на крупных артериях (**электромеханическая диссоциация**)")).buildGreen1Text(isTextExpanded: isTextExpanded9)
                                .onTapGesture {
                                    withAnimation (.interpolatingSpring) {
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
                            MyViewBuilder(title: Text("4"), content: Text("**Восстановление ритма**")).buildGreen1Text(isTextExpanded: isTextExpanded10)
                                .onTapGesture {
                                    withAnimation (.interpolatingSpring) {
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
                                MyViewBuilder(title: Text("4"), content: Text("ИВЛ")).buildGrayText()
                                Image(systemName: "arrow.down")
                                    .shadow(radius: 2)
                                MyViewBuilder(title: Text("4"), content: Text("Доставка в стационар (ОИТАР)")).buildGrayText()
                            }
                            
                        }
                    }
                    
                    if isTextExpanded6 {
                        MyViewBuilder(title: Text("4"), content: Text("**Визуализировать сердечный ритм** через монитор с **электродов дефибриллятора**, или через **ЭКГ-аппарат**, после установки ЭКГ-электродов.")).buildGrayText()
                        MyViewBuilder(title: Text("4"), content: Text("**Фибрилляция желудочков или желудочковая тахикардия без пульсации** на крупных артериях.")).buildGreen1Text(isTextExpanded: isTextExpanded7)
                            .onTapGesture {
                                withAnimation (.interpolatingSpring) {
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
                        MyViewBuilder(title: Text("4"), content: Text("**Асистолия**")).buildGreen1Text(isTextExpanded: isTextExpanded8)
                            .onTapGesture {
                                withAnimation (.interpolatingSpring) {
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
                        MyViewBuilder(title: Text("4"), content: Text("**Наличие электрической активности на ЭКГ без пульсации** на крупных артериях (**электромеханическая диссоциация**)")).buildGreen1Text(isTextExpanded: isTextExpanded9)
                            .onTapGesture {
                                withAnimation (.interpolatingSpring) {
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
                        MyViewBuilder(title: Text("4"), content: Text("**Восстановление ритма**")).buildGreen1Text(isTextExpanded: isTextExpanded10)
                            .onTapGesture {
                                withAnimation (.interpolatingSpring) {
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
                            MyViewBuilder(title: Text("4"), content: Text("**ИВЛ**")).buildGrayText()
                            Image(systemName: "arrow.down")
                                .shadow(radius: 2)
                            MyViewBuilder(title: Text("4"), content: Text("**Доставка в стационар** (ОИТАР)")).buildGrayText()
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
        }
        .navigationBarBackButtonHidden(false)
        .navigationBarTitle("",displayMode: .automatic)
        .toolbar {
            ToolbarItem(placement: .principal) {
                VStack {
                    Text("Алгоритм 4")
                        .font(.headline)
                        .bold()
                    Text("""
                    «Внезапная смерть, сердечно-легочная реанимация»
                    """)
                    .font(.caption2)
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
    Prikaz1030Alg104View()
}
