//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg127View: View {
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
                    MyViewBuilder(title: Text("27"), content: Text("""
                        **Состояние пациента в результате травмы**
                        """)).buildGrayText()
                    HStack {
                        MyViewBuilder(title: Text("27"), content: Text("""
                            ЧМТ **есть**
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
                                    if isTextExpanded15 == true {
                                        isTextExpanded15.toggle()
                                    }
                                }
                            }
                        MyViewBuilder(title: Text("27"), content: Text("""
                            ЧМТ **нет**
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
                                    if isTextExpanded15 == true {
                                        isTextExpanded15.toggle()
                                    }
                                }
                            }
                    }
                    if isTextExpanded1 {
                        NavigationLink (destination: Prikaz1030Alg2View()) {
                            MyViewBuilder(title: Text("27"), content: Text("Алгоритм 39 «Черепно-мозговая травма»")).buildNavigationText()
                        }
                    }
                    if isTextExpanded2 {
                        MyViewBuilder(title: Text("27"), content: Text("""
                            **Оценка уровня сознания по шкале Глазго**
                            """)).buildGrayText()
                        HStack {
                            MyViewBuilder(title: Text("27"), content: Text("""
                                Пульса **нет**
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
                                        if isTextExpanded15 == true {
                                            isTextExpanded15.toggle()
                                        }
                                    }
                                }
                            MyViewBuilder(title: Text("27"), content: Text("""
                                Пульс **есть**
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
                                        if isTextExpanded15 == true {
                                            isTextExpanded15.toggle()
                                        }
                                    }
                                }
                        }
                    }
                    if isTextExpanded3 {
                        NavigationLink (destination: Prikaz1030Alg4View()) {
                            MyViewBuilder(title: Text("27"), content: Text("Алгоритм 4 «Внезапная смерть, сердечно-легочная реанимация»")).buildNavigationText()
                        }
                    }
                    if isTextExpanded4 {
                        MyViewBuilder(title: Text("27"), content: Text("""
                            **Выполнить следующие мероприятия**.
                            
                            1. Обеспечить проходимость дыхательных путей.
                            2. Постановка воздуховода.
                            3. Ингаляция кислорода.
                            4. ИВЛ при неадекватном дыхании через ларингиальную маску (интубационную трубку).
                            5. Глюкометрия.
                            6. ЭКГ.
                            7. Контроль вены, 0,9% раствор натрия хлорида в/в.
                            8. АД.
                            """)).buildGrayText()
                        Image(systemName: "arrow.down")
                            .shadow(radius: 2)
                        MyViewBuilder(title: Text("1"), content: Text("""
                            **Уровень глюкозы**
                            """)).buildGrayText()
                        HStack {
                            MyViewBuilder(title: Text("27"), content: Text("""
                                Понижен
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
                                        if isTextExpanded15 == true {
                                            isTextExpanded15.toggle()
                                        }
                                    }
                                }
                            MyViewBuilder(title: Text("27"), content: Text("""
                                Нормальный
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
                                        if isTextExpanded15 == true {
                                            isTextExpanded15.toggle()
                                        }
                                    }
                                }
                            MyViewBuilder(title: Text("27"), content: Text("""
                                Повышен
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded7)
                                .onTapGesture {
                                    withAnimation (.interpolatingSpring) {
                                        isTextExpanded7.toggle()
                                        
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
                                        if isTextExpanded12 == true {
                                            isTextExpanded12.toggle()
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
                        MyViewBuilder(title: Text("27"), content: Text("""
                            **20-60 мл 40% раствора глюкозы в/в**
                            """)).buildGrayText()
                        Image(systemName: "arrow.down")
                            .shadow(radius: 2)
                        MyViewBuilder(title: Text("27"), content: Text("""
                            **Улучшение**
                            """)).buildGrayText()
                        Image(systemName: "arrow.down")
                            .shadow(radius: 2)
                        MyViewBuilder(title: Text("27"), content: Text("""
                            **Доставка в стационар** (ОИТАР, минуя приемное отделение)
                            """)).buildGrayText()
                    }
                    if isTextExpanded6 {
                        HStack {
                            MyViewBuilder(title: Text("27"), content: Text("""
                                Аритмия **есть**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded8)
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
                            MyViewBuilder(title: Text("27"), content: Text("""
                                Аритмии **нет**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded9)
                                .onTapGesture {
                                    withAnimation (.interpolatingSpring) {
                                        isTextExpanded9.toggle()
                                        if isTextExpanded8 == true {
                                            isTextExpanded8.toggle()
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
                                        if isTextExpanded15 == true {
                                            isTextExpanded15.toggle()
                                        }
                                    }
                                }
                        }
                    }
                    if isTextExpanded7 {
                        NavigationLink (destination: Prikaz1030Alg28View()) {
                            MyViewBuilder(title: Text("27"), content: Text("Алгоритм 28 «Комы при сахарном диабете»")).buildNavigationText()
                        }
                    }
                    
                    if isTextExpanded8 {
                        MyViewBuilder(title: Text("27"), content: Text("""
                            См. соответствующие алгоритмы лечения аритмий
                            """)).buildGrayText()
                    }
                    if isTextExpanded9 {
                        HStack {
                            MyViewBuilder(title: Text("27"), content: Text("""
                                Отравление опиатами **есть**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded10)
                                .onTapGesture {
                                    withAnimation (.interpolatingSpring) {
                                        isTextExpanded10.toggle()
                                        
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
                                        if isTextExpanded15 == true {
                                            isTextExpanded15.toggle()
                                        }
                                    }
                                }
                            MyViewBuilder(title: Text("27"), content: Text("""
                                Отравления опиатами **нет**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded11)
                                .onTapGesture {
                                    withAnimation (.interpolatingSpring) {
                                        isTextExpanded11.toggle()
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
                                        if isTextExpanded15 == true {
                                            isTextExpanded15.toggle()
                                        }
                                    }
                                }
                        }
                    }
                    if isTextExpanded10{
                        MyViewBuilder(title: Text("27"), content: Text("""
                            **Налоксон 1-2 мл 0,5% раствора в/в**
                            """)).buildGrayText()
                        Image(systemName: "arrow.down")
                            .shadow(radius: 2)
                        NavigationLink (destination: Prikaz1030Alg2View()) {
                            MyViewBuilder(title: Text("27"), content: Text("Алгоритм 49 «Отравление неизвестным ядом»")).buildNavigationText()
                        }
                    }
                    if isTextExpanded11{
                        HStack {
                            MyViewBuilder(title: Text("27"), content: Text("""
                                **Есть** очаговые или менингиальные симптомы
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded12)
                                .onTapGesture {
                                    withAnimation (.interpolatingSpring) {
                                        isTextExpanded12.toggle()
                                        
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
                            MyViewBuilder(title: Text("27"), content: Text("""
                                **Нет** очаговых или менингиальных симптомов
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded13)
                                .onTapGesture {
                                    withAnimation (.interpolatingSpring) {
                                        isTextExpanded13.toggle()
                                        if isTextExpanded12 == true {
                                            isTextExpanded12.toggle()
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
                    if isTextExpanded12 {
                        NavigationLink (destination: Prikaz1030Alg2View()) {
                            MyViewBuilder(title: Text("27"), content: Text("Алгоритм 30 «Острое нарушение мозгового кровообращения»")).buildNavigationText()
                        }
                    }
                    if isTextExpanded13 {
                        HStack {
                            MyViewBuilder(title: Text("27"), content: Text("""
                                **Возможна** гипотермия, гипертермия, гиповолемия
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded14)
                                .onTapGesture {
                                    withAnimation (.interpolatingSpring) {
                                        isTextExpanded14.toggle()
                                        
                                        if isTextExpanded15 == true {
                                            isTextExpanded15.toggle()
                                        }
                                        
                                    }
                                }
                            MyViewBuilder(title: Text("27"), content: Text("""
                                **Невозможна** гипотермия, гипертермия, гиповолемия
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded15)
                                .onTapGesture {
                                    withAnimation (.interpolatingSpring) {
                                        isTextExpanded15.toggle()
                                        if isTextExpanded14 == true {
                                            isTextExpanded14.toggle()
                                        }
                                    }
                                }
                        }
                    }
                    if isTextExpanded14 {
                        MyViewBuilder(title: Text("1"), content: Text("""
                            См. соответствующие алгоритмы
                            """)).buildGrayText()
                    }
                    if isTextExpanded15 {
                        MyViewBuilder(title: Text("1"), content: Text("""
                            **Доставка в стационар** (ОИТАР, минуя приемное отделение)
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
                    Text("Алгоритм 27")
                        .font(.headline)
                        .bold()
                    Text("«Кома неясного генеза»")
                        .font(.caption2)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg27"), title: "Алгоритм 27")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}

#Preview {
    Prikaz1030Alg127View()
}
