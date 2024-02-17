//
//  Prikaz1030Alg6View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg106View: View {
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
                    MyViewBuilder(title: Text("6"), content: Text("**Осуществлять основные реанимационные мероприятия**: алгоритм 4 «Внезапная смерть, сердечно-легочная реанимация». **До регистрации ЭКГ** (в том числе с электродов дефибриллятора) **продолжать основные реанимационные мероприятия**.")).buildGrayText()
                    NavigationLink (destination: Prikaz1030Alg4View()) {
                        MyViewBuilder(title: Text("6"), content: Text("Алгоритм 4 «Внезапная смерть, сердечно-легочная реанимация»")).buildNavigationText()
                    }
                    Image(systemName: "arrow.down")
                        .shadow(radius: 2)
                    MyViewBuilder(title: Text("6"), content: Text("При **ФЖ/ЖТ** - дефибриляция **200 Дж**, затем **300**, **360 Дж** или **120 Дж**, затем **150**, **200 Дж бифазным дефибриллятором**")).buildGrayText()
                    HStack {
                        MyViewBuilder(title: Text("6"), content: Text("**Достигнут определенный эффект**")).buildGreen1Text(isTextExpanded: isTextExpanded)
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
                                }
                            }
                        MyViewBuilder(title: Text("6"), content: Text("**Рефрактерная или рецидивирующая ФЖ/ЖТ**")).buildGreen1Text(isTextExpanded: isTextExpanded4)
                            .onTapGesture {
                                withAnimation (.interpolatingSpring) {
                                    isTextExpanded4.toggle()
                                    if isTextExpanded == true {
                                        isTextExpanded.toggle()
                                    }
                                    if isTextExpanded1 == true {
                                        isTextExpanded1.toggle()
                                    }
                                    if isTextExpanded2 == true {
                                        isTextExpanded2.toggle()
                                    }
                                    if isTextExpanded3 == true {
                                        isTextExpanded3.toggle()
                                    }
                                }
                            }
                    }
                    if isTextExpanded {
                        MyViewBuilder(title: Text("6"), content: Text("Электро-механическая диссоциация")).buildGreen1Text(isTextExpanded: isTextExpanded1)
                            .onTapGesture {
                                withAnimation (.interpolatingSpring) {
                                    isTextExpanded1.toggle()
                                }
                            }
                        if isTextExpanded1 {
                            NavigationLink (destination: Prikaz1030Alg8View()) {
                                MyViewBuilder(title: Text("6"), content: Text("Алгоритм 8 «Электро-механическая диссоциация»")).buildNavigationText()
                            }
                        }
                        MyViewBuilder(title: Text("6"), content: Text("Появился пульс")).buildGreen1Text(isTextExpanded: isTextExpanded2)
                            .onTapGesture {
                                withAnimation (.interpolatingSpring) {
                                    isTextExpanded2.toggle()
                                    if isTextExpanded1 == true {
                                        isTextExpanded1.toggle()
                                    }
                                }
                            }
                        if isTextExpanded2 {
                            NavigationLink (destination: Prikaz1030Alg9View()) {
                                MyViewBuilder(title: Text("6"), content: Text("Алгоритм 9 «Постреанимационная поддержка»")).buildNavigationText()
                            }
                        }
                        MyViewBuilder(title: Text("6"), content: Text("Асистолия")).buildGreen1Text(isTextExpanded: isTextExpanded3)
                            .onTapGesture {
                                withAnimation (.interpolatingSpring) {
                                    isTextExpanded3.toggle()
                                    if isTextExpanded1 == true {
                                        isTextExpanded1.toggle()
                                    }
                                    if isTextExpanded2 == true {
                                        isTextExpanded2.toggle()
                                    }
                                }
                            }
                        if isTextExpanded3 {
                            NavigationLink (destination: Prikaz1030Alg7View()) {
                                MyViewBuilder(title: Text("6"), content: Text("Алгоритм 7 «Асистолия»")).buildNavigationText()
                            }
                        }
                    }
                    if isTextExpanded4 {
                        MyViewBuilder(title: Text("6"), content: Text("""
                        **Основные реанимационные мероприятия** – см. алгоритм 4 «Внезапная смерть, сердечно-легочная реанимация».
                        **Интубация трахеи** или комбитьюб (ларингиальная маска).
                        **Венозный доступ** (0,9 % раствор натрия хлорида, ацесоль).
                        """)).buildGrayText()
                        NavigationLink (destination: Prikaz1030Alg4View()) {
                            MyViewBuilder(title: Text("6"), content: Text("Алгоритм 4 «Внезапная смерть, сердечно-легочная реанимация»")).buildNavigationText()
                        }
                        Image(systemName: "arrow.down")
                            .shadow(radius: 2)
                        MyViewBuilder(title: Text("6"), content: Text("""
                        **Дефибрилляция разрядом 360 Дж** (иногда **несколько раз подряд**, особенно **если не начато введение лекарственных средств**) или **200 Дж бифазным дефибриллятором**.
                        """)).buildGrayText()
                        Image(systemName: "arrow.down")
                            .shadow(radius: 2)
                        MyViewBuilder(title: Text("6"), content: Text("""
                        При **рефрактерной ФЖ/ЖТ** – антиаритмические средства в/в: **амиодарон 5 %** раствор **6 мл** (**затем 3 мл (150 мг)** в/в медленно), или **лидокаин 2 %** раствор **4-6 мл**, или **прокаинамид 10 %** раствор **10 мл**.
                        """)).buildGrayText()
                        Image(systemName: "arrow.down")
                            .shadow(radius: 2)
                        MyViewBuilder(title: Text("6"), content: Text("""
                        **Дефибрилляция разрядом 360 Дж после каждого введения лекарственных средств или 200 Дж бифазным дефибриллятором**.
                        Соблюдать последовательность **«разряд – лекарство – разряд - лекарство»**.
                        """)).buildGrayText()
                        HStack {
                            Spacer()
                            Image(systemName: "arrow.down")
                                .shadow(radius: 2)
                            Spacer()
                            Spacer()
                            Image(systemName: "arrow.down")
                                .shadow(radius: 2)
                            Spacer()
                        }
                        HStack {
                            MyViewBuilder(title: Text("6"), content: Text("""
                            **При отсутствии электрической активности** – алгоритм 7 «Асистолия»
                            """)).buildGrayText()
                            MyViewBuilder(title: Text("6"), content: Text("""
                            **При стабилизации ритма** – алгоритм 9 «Постреанимационная поддержка»
                            """)).buildGrayText()
                        }
                        HStack {
                            NavigationLink (destination: Prikaz1030Alg7View()) {
                                MyViewBuilder(title: Text("6"), content: Text("Алгоритм 7 «Асистолия»")).buildNavigationText()
                            }
                            NavigationLink (destination: Prikaz1030Alg9View()) {
                                MyViewBuilder(title: Text("6"), content: Text("Алгоритм 9 «Постреанимационная поддержка»")).buildNavigationText()
                            }
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
                Text("Алгоритм 6")
                    .font(.headline)
                    .bold()
                Text("""
                    «Фибрилляция желудочков (ФЖ), желудочковая тахикардия (ЖТ) с острой сердечной недостаточностью»
                    """)
                    .font(.caption2)
            }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg6"), title: "Алгоритм 6")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}



#Preview {
    Prikaz1030Alg106View()
}
