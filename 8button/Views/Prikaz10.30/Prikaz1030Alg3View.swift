//
//  Prikaz1030Alg3View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg103View: View {
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
                    
                        MyViewBuilder(title: Text("3"), content: Text("""
                            **Клинические признаки**:
                            
                            - **цианоз кожных покровов**;
                            - частота дыхания **более 40 или менее 8 в 1 мин**;
                            - **SpО2 менее 90%** при дыхании атмосферным воздухом.
                            """)).buildGrayText()
                        
                        Image(systemName: "arrow.down")
                            .shadow(radius: 2)
                        MyViewBuilder(title: Text("3"), content: Text("**Катетеризация периферической** (при необходимости центральной) **вены. ЭКГ-мониторинг. Оценка АД. Аускультация лёгких.**")).buildGrayText()
                        
                        Image(systemName: "arrow.down")
                            .shadow(radius: 2)
                        NavigationLink (destination: Prikaz1030Alg2View()) {
                            MyViewBuilder(title: Text("3"), content: Text("Алгоритм 77 «Респираторная поддержка»")).buildNavigationText()
                        }
                    Image(systemName: "arrow.down")
                        .shadow(radius: 2)
                    
                    MyViewBuilder(title: Text("3"), content: Text("**При возможности установления причины**")).buildBlue1Text(isTextExpanded: isTextExpanded1)
                        .onTapGesture {
                            withAnimation (.interpolatingSpring) {
                                isTextExpanded1.toggle()
                                if isTextExpanded == true {
                                    isTextExpanded.toggle()
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
                                if isTextExpanded11 == true {
                                    isTextExpanded11.toggle()
                                }
                                if isTextExpanded12 == true {
                                    isTextExpanded12.toggle()
                                }
                            }
                        }
                        
                    
                    if isTextExpanded1 {
                        MyViewBuilder(title: Text("3"), content: Text("Признаки кровотечения")).buildGreen1Text(isTextExpanded: isTextExpanded2)
                            .onTapGesture {
                                withAnimation (.interpolatingSpring) {
                                    isTextExpanded2.toggle()
                                }
                            }
                        
                        if isTextExpanded2 {
                            NavigationLink (destination: Prikaz1030Alg5View()) {
                                MyViewBuilder(title: Text("3"), content: Text("Алгоритм 5 «Гиповолемический шок»")).buildNavigationText()
                            }
                        }
                        MyViewBuilder(title: Text("3"), content: Text("Обструкция дыхательных путей инородным телом")).buildGreen1Text(isTextExpanded: isTextExpanded3)
                            .onTapGesture {
                                withAnimation (.interpolatingSpring) {
                                    isTextExpanded3.toggle()
                                    if isTextExpanded2 == true {
                                        isTextExpanded2.toggle()
                                    }
                                }
                            }
                        
                        if isTextExpanded3 {
                            NavigationLink (destination: Prikaz1030Alg2View()) {
                                MyViewBuilder(title: Text("3"), content: Text("Алгоритм 26 «Обструкция дыхательных путей инородным телом»")).buildNavigationText()
                            }
                        }
                        MyViewBuilder(title: Text("3"), content: Text("Политравма")).buildGreen1Text(isTextExpanded: isTextExpanded4)
                            .onTapGesture {
                                withAnimation (.interpolatingSpring) {
                                    isTextExpanded4.toggle()
                                    if isTextExpanded3 == true {
                                        isTextExpanded3.toggle()
                                    }
                                }
                            }
                        
                        if isTextExpanded4 {
                            NavigationLink (destination: Prikaz1030Alg2View()) {
                                MyViewBuilder(title: Text("3"), content: Text("Алгоритм 44 «Политравма»")).buildNavigationText()
                            }
                        }
                        MyViewBuilder(title: Text("3"), content: Text("Отравление")).buildGreen1Text(isTextExpanded: isTextExpanded5)
                            .onTapGesture {
                                withAnimation (.interpolatingSpring) {
                                    isTextExpanded5.toggle()
                                    if isTextExpanded4 == true {
                                        isTextExpanded4.toggle()
                                    }
                                }
                            }
                        
                        if isTextExpanded5 {
                            NavigationLink (destination: Prikaz1030Alg2View()) {
                                MyViewBuilder(title: Text("3"), content: Text("Алгоритм 49 «Отравление неизвестным ядом»")).buildNavigationText()
                            }
                        }
                        MyViewBuilder(title: Text("3"), content: Text("Напряженный пневмоторакс")).buildGreen1Text(isTextExpanded: isTextExpanded6)
                            .onTapGesture {
                                withAnimation (.interpolatingSpring) {
                                    isTextExpanded6.toggle()
                                    if isTextExpanded5 == true {
                                        isTextExpanded5.toggle()
                                    }
                                }
                            }
                        
                        if isTextExpanded6 {
                            MyViewBuilder(title: Text("3"), content: Text("""
                                **Напряжённый пневмоторакс**:
                                
                                – **отсутствие дыхательных шумов и движений грудной клетки** на стороне поражения;
                                – **внезапное начало**.
                                """)).buildGrayText()
                            NavigationLink (destination: Prikaz1030Alg2View()) {
                                MyViewBuilder(title: Text("3"), content: Text("Алгоритм 42 «Травмы груди»")).buildNavigationText()
                            }
                        }
                        MyViewBuilder(title: Text("3"), content: Text("Признаки отека легких")).buildGreen1Text(isTextExpanded: isTextExpanded7)
                            .onTapGesture {
                                withAnimation (.interpolatingSpring) {
                                    isTextExpanded7.toggle()
                                    if isTextExpanded6 == true {
                                        isTextExpanded6.toggle()
                                    }
                                }
                            }
                        
                        if isTextExpanded7 {
                            MyViewBuilder(title: Text("3"), content: Text("""
                                **Признаки отёка лёгких**:
                                
                                – **мелко- и средне- пузырчатые хрипы** над лёгкими;
                                – вынужденное положение **(ортопное)**;
                                – **пенистая мокрота**.
                                """)).buildGrayText()
                            NavigationLink (destination: Prikaz1030Alg2View()) {
                                MyViewBuilder(title: Text("3"), content: Text("Алгоритм 17 «Отек легких»")).buildNavigationText()
                            }
                        }
                    }
                    MyViewBuilder(title: Text("3"), content: Text("**Углубленный анализ ЭКГ в 12 отведениях**")).buildBlue1Text(isTextExpanded: isTextExpanded8)
                        .onTapGesture {
                            withAnimation (.interpolatingSpring) {
                                isTextExpanded8.toggle()
                                if isTextExpanded9 == true {
                                    isTextExpanded9.toggle()
                                }
                                if isTextExpanded10 == true {
                                    isTextExpanded10.toggle()
                                }
                                if isTextExpanded11 == true {
                                    isTextExpanded11.toggle()
                                }
                                if isTextExpanded12 == true {
                                    isTextExpanded12.toggle()
                                }
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
                            }
                        }
                        
                    
                    if isTextExpanded8 {
                        MyViewBuilder(title: Text("3"), content: Text("Выраженная аритмия")).buildGreen1Text(isTextExpanded: isTextExpanded9)
                            .onTapGesture {
                                withAnimation (.interpolatingSpring) {
                                    isTextExpanded9.toggle()
                                }
                            }
                        
                        if isTextExpanded9 {
                            MyViewBuilder(title: Text("3"), content: Text("**Лечение аритмий** по соответствующим алгоритмам")).buildGrayText()
                        }
                        MyViewBuilder(title: Text("3"), content: Text("Внезапно возникшая перегрузка правых отделов сердца")).buildGreen1Text(isTextExpanded: isTextExpanded10)
                            .onTapGesture {
                                withAnimation (.interpolatingSpring) {
                                    isTextExpanded10.toggle()
                                    if isTextExpanded9 == true {
                                        isTextExpanded9.toggle()
                                    }
                                }
                            }
                        
                        if isTextExpanded10 {
                            NavigationLink (destination: Prikaz1030Alg2View()) {
                                MyViewBuilder(title: Text("3"), content: Text("Алгоритм 18 «Тромбоэмболия легочной артерии»")).buildNavigationText()
                            }
                        }
                        MyViewBuilder(title: Text("3"), content: Text("Признаки ишемии и(или) повреждения миокарда")).buildGreen1Text(isTextExpanded: isTextExpanded11)
                            .onTapGesture {
                                withAnimation (.interpolatingSpring) {
                                    isTextExpanded11.toggle()
                                    if isTextExpanded10 == true {
                                        isTextExpanded10.toggle()
                                    }
                                }
                            }
                        
                        if isTextExpanded11 {
                            NavigationLink (destination: Prikaz1030Alg2View()) {
                                MyViewBuilder(title: Text("3"), content: Text("Алгоритм 15 «Острый коронарный синдром»")).buildNavigationText()
                            }
                        }
                        MyViewBuilder(title: Text("3"), content: Text("Нормальная ЭКГ")).buildGreen1Text(isTextExpanded: isTextExpanded12)
                            .onTapGesture {
                                withAnimation (.interpolatingSpring) {
                                    isTextExpanded12.toggle()
                                    if isTextExpanded11 == true {
                                        isTextExpanded11.toggle()
                                    }
                                }
                            }
                        
                        if isTextExpanded12 {
                            MyViewBuilder(title: Text("3"), content: Text("**Перевод пациента на ИВЛ (ВИВЛ) с 50% О2** и **доставка в стационар** с постоянным контролем витальных функций **(минуя приемное отделение, передача в ОИТАР)**")).buildGrayText()
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
                Text("Алгоритм 3")
                    .font(.headline)
                    .bold()
                Text("""
                    «Острая дыхательная недостаточность»
                    """)
                    .font(.caption2)
            }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg3"), title: "Алгоритм 3")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}


#Preview {
    Prikaz1030Alg103View()
}


