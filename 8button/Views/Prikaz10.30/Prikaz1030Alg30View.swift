//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg130View: View {
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
                    HStack {
                        MyViewBuilder(title: Text("30"), content: Text("""
                            Сознание **есть**
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
                                    if isTextExpanded10 == true {
                                        isTextExpanded10.toggle()
                                    }
                                    if isTextExpanded11 == true {
                                        isTextExpanded11.toggle()
                                    }
                                    if isTextExpanded12 == true {
                                        isTextExpanded12.toggle()
                                    }
                                    if isTextExpanded13 == true {
                                        isTextExpanded13.toggle()
                                    }
                                    if isTextExpanded14 == true {
                                        isTextExpanded14.toggle()
                                    }
                                    
                                }
                            }
                        MyViewBuilder(title: Text("30"), content: Text("""
                            Сознания **нет**
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
                                    if isTextExpanded10 == true {
                                        isTextExpanded10.toggle()
                                    }
                                    if isTextExpanded11 == true {
                                        isTextExpanded11.toggle()
                                    }
                                    if isTextExpanded12 == true {
                                        isTextExpanded12.toggle()
                                    }
                                    if isTextExpanded13 == true {
                                        isTextExpanded13.toggle()
                                    }
                                    if isTextExpanded14 == true {
                                        isTextExpanded14.toggle()
                                    }
                                    
                                }
                            }
                    }
                    if isTextExpanded1 {
                        MyViewBuilder(title: Text("30"), content: Text("""
                                1. Оценка уровня сознания по шкале Глазго.
                                2. Признаки травмы.
                                3. Асимметрия лица, движения конечностей.
                                4. Размер и реакция зрачков.
                                5. АД.
                                6. ЭКГ.
                                """)).buildGrayText()
                        Image(systemName: "arrow.down")
                            .shadow(radius: 2)
                        MyViewBuilder(title: Text("30"), content: Text("""
                                АД **более 200 мм.рт.ст.**
                                """)).buildGrayText()
                        HStack {
                            MyViewBuilder(title: Text("30"), content: Text("""
                                Да
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
                                        if isTextExpanded10 == true {
                                            isTextExpanded10.toggle()
                                        }
                                        
                                    }
                                }
                            MyViewBuilder(title: Text("30"), content: Text("""
                                Нет
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
                                        if isTextExpanded10 == true {
                                            isTextExpanded10.toggle()
                                        }
                                        
                                    }
                                }
                        }
                    }
                    if isTextExpanded2 {
                        MyViewBuilder(title: Text("30"), content: Text("""
                                1. Оценка уровня сознания по шкале Глазго.
                                2. Обеспечение проходимости дыхательных путей.
                                3. ЭКГ.
                                """)).buildGrayText()
                        HStack {
                            MyViewBuilder(title: Text("30"), content: Text("""
                                Самостоятельное дыхание **есть**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded11)
                                .onTapGesture {
                                    withAnimation (.interpolatingSpring) {
                                        isTextExpanded11.toggle()
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
                                        if isTextExpanded13 == true {
                                            isTextExpanded13.toggle()
                                        }
                                        if isTextExpanded14 == true {
                                            isTextExpanded14.toggle()
                                        }
                                        
                                    }
                                }
                            MyViewBuilder(title: Text("30"), content: Text("""
                                Самотстоятельного дыхания **нет**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded12)
                                .onTapGesture {
                                    withAnimation (.interpolatingSpring) {
                                        isTextExpanded12.toggle()
                                        
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
                                        if isTextExpanded13 == true {
                                            isTextExpanded13.toggle()
                                        }
                                        if isTextExpanded14 == true {
                                            isTextExpanded14.toggle()
                                        }
                                        
                                    }
                                }
                        }
                    }
                    if isTextExpanded11 {
                        MyViewBuilder(title: Text("30"), content: Text("""
                                1. Оценка уровня сознания по шкале Глазго.
                                2. Признаки травмы.
                                3. Асимметрия лица, движения конечностей.
                                4. Размер и реакция зрачков.
                                5. АД.
                                6. ЭКГ.
                                """)).buildGrayText()
                        Image(systemName: "arrow.down")
                            .shadow(radius: 2)
                        MyViewBuilder(title: Text("30"), content: Text("""
                                АД **более 200 мм.рт.ст.**
                                """)).buildGrayText()
                        HStack {
                            MyViewBuilder(title: Text("30"), content: Text("""
                                Да
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
                                        if isTextExpanded10 == true {
                                            isTextExpanded10.toggle()
                                        }
                                        
                                    }
                                }
                            MyViewBuilder(title: Text("30"), content: Text("""
                                Нет
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
                                        if isTextExpanded10 == true {
                                            isTextExpanded10.toggle()
                                        }
                                        
                                    }
                                }
                        }
                    }
                    if isTextExpanded12 {
                        MyViewBuilder(title: Text("30"), content: Text("""
                                1. Постановка ларингиальной маски (интубация трахеи).
                                2. ИВЛ.
                                3. Оценка кровообращения.
                                """)).buildGrayText()
                        HStack {
                            MyViewBuilder(title: Text("30"), content: Text("""
                                Пульс **есть**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded13)
                                .onTapGesture {
                                    withAnimation (.interpolatingSpring) {
                                        isTextExpanded13.toggle()
                                        
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
                                        if isTextExpanded14 == true {
                                            isTextExpanded14.toggle()
                                        }
                                        
                                    }
                                }
                            MyViewBuilder(title: Text("30"), content: Text("""
                                Пульса **нет**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded14)
                                .onTapGesture {
                                    withAnimation (.interpolatingSpring) {
                                        isTextExpanded14.toggle()
                                        
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
                                        if isTextExpanded13 == true {
                                            isTextExpanded13.toggle()
                                        }
                                    }
                                }
                        }
                    }
                    if isTextExpanded13 {
                        MyViewBuilder(title: Text("30"), content: Text("""
                                **Продолжить ИВЛ**.
                                ЭКГ контроль.
                                АД контроль.
                                """)).buildGrayText()
                        Image(systemName: "arrow.down")
                            .shadow(radius: 2)
                        MyViewBuilder(title: Text("30"), content: Text("""
                                **Доставка в стационар** по профилю основного заболевания
                                """)).buildGrayText()
                    }
                    if isTextExpanded14 {
                        NavigationLink (destination: Prikaz1030Alg4View()) {
                            MyViewBuilder(title: Text("30"), content: Text("Алгоритм 4 «Внезапная смерть, сердечно-легочная реанимация»")).buildNavigationText()
                        }
                        Image(systemName: "arrow.down")
                            .shadow(radius: 2)
                        MyViewBuilder(title: Text("30"), content: Text("""
                                **Эффективная реанимация**
                                """)).buildGrayText()
                        Image(systemName: "arrow.down")
                            .shadow(radius: 2)
                        MyViewBuilder(title: Text("30"), content: Text("""
                                **Доставка в стационар** по профилю основного заболевания
                                """)).buildGrayText()
                    }
                    
                    if isTextExpanded3 {
                        MyViewBuilder(title: Text("30"), content: Text("""
                                **Гипотензивные** с учетом АД;
                                **эмоксипин 3% - 5 мл в/в**
                                """)).buildGrayText()
                        Image(systemName: "arrow.down")
                            .shadow(radius: 2)
                        HStack {
                            MyViewBuilder(title: Text("30"), content: Text("""
                                Нарушения ритма **есть**
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
                            MyViewBuilder(title: Text("30"), content: Text("""
                                Нарушений ритма **нет**
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
                    if isTextExpanded4 {
                        MyViewBuilder(title: Text("30"), content: Text("""
                                **Эмоксипин 3% - 5 мл в/в**
                                """)).buildGrayText()
                        Image(systemName: "arrow.down")
                            .shadow(radius: 2)
                        HStack {
                            MyViewBuilder(title: Text("30"), content: Text("""
                                Нарушения ритма **есть**
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
                            MyViewBuilder(title: Text("30"), content: Text("""
                                Нарушений ритма **нет**
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
                    if isTextExpanded5 {
                        MyViewBuilder(title: Text("30"), content: Text("""
                                Алгоритмы в зависимости от вида нарушения ритма
                                """)).buildGrayText()
                    }
                    if isTextExpanded6 {
                        HStack {
                            MyViewBuilder(title: Text("30"), content: Text("""
                                Судороги **есть**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded7)
                                .onTapGesture {
                                    withAnimation (.interpolatingSpring) {
                                        isTextExpanded7.toggle()
                                        
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
                            MyViewBuilder(title: Text("30"), content: Text("""
                                Судорог **нет**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded8)
                                .onTapGesture {
                                    withAnimation (.interpolatingSpring) {
                                        isTextExpanded8.toggle()
                                        
                                        if isTextExpanded7 == true {
                                            isTextExpanded7.toggle()
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
                    if isTextExpanded7 {
                        MyViewBuilder(title: Text("30"), content: Text("""
                                **Диазепам 0,5% - 2 мл в/в**,
                                **магния сульфат 25% - 10 мл** в/в при АД **не менее 180/120 мм.рт.ст.**
                                """)).buildGrayText()
                        Image(systemName: "arrow.down")
                            .shadow(radius: 2)
                        MyViewBuilder(title: Text("30"), content: Text("""
                                **Доставка в стационар** по профилю основного заболевания
                                """)).buildGrayText()
                    }
                    if isTextExpanded8 {
                        HStack {
                            MyViewBuilder(title: Text("30"), content: Text("""
                                Рвота **есть**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded9)
                                .onTapGesture {
                                    withAnimation (.interpolatingSpring) {
                                        isTextExpanded9.toggle()
                                        
                                        if isTextExpanded10 == true {
                                            isTextExpanded10.toggle()
                                        }
                                        
                                    }
                                }
                            MyViewBuilder(title: Text("30"), content: Text("""
                                Рвоты **нет**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded10)
                                .onTapGesture {
                                    withAnimation (.interpolatingSpring) {
                                        isTextExpanded10.toggle()
                                        
                                        if isTextExpanded9 == true {
                                            isTextExpanded9.toggle()
                                        }
                                        
                                    }
                                }
                        }
                    }
                    if isTextExpanded9 {
                        MyViewBuilder(title: Text("30"), content: Text("""
                                **Метоклопрамид 0,5% - 2 мл в/в**
                                """)).buildGrayText()
                        Image(systemName: "arrow.down")
                            .shadow(radius: 2)
                        MyViewBuilder(title: Text("30"), content: Text("""
                                **Доставка в стационар** по профилю основного заболевания
                                """)).buildGrayText()
                    }
                    if isTextExpanded10 {
                        MyViewBuilder(title: Text("30"), content: Text("""
                                **Доставка в стационар** по профилю основного заболевания
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
                    Text("Алгоритм 30")
                        .font(.headline)
                        .bold()
                    Text("«Острое нарушение мозгового кровообращения»")
                        .font(.caption2)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg30"), title: "Алгоритм 30")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}

#Preview {
    Prikaz1030Alg130View()
}
