//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg27View: View {
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
            ScrollView {
                Spacer()
                VStack {
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack (spacing:1){
                            MyViewBuilder(title: Text("27"), content: Text("""
                        **Состояние пациента в результате травмы?**
                        """)).buildGrayInText()
                            MyViewBuilder(title: Text("27"), content: Text("""
                                **Черепно-мозговая травма**:
                                """)).buildGrayInText()
                            Spacer(minLength: 5)
                            HStack {
                                MyViewBuilder(title: Text("27"), content: Text("""
                            **Да**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded1)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
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
                            **Нет**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded2)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
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
                            }.padding(5).padding(.top, -10)
                        }
                    }
                    if isTextExpanded1 {
                        Image(systemName: "arrow.down")
                           
                        NavigationLink (destination: Prikaz1030Alg39View()) {
                            MyViewBuilder(title: Text("27"), content: Text("Алгоритм 39 «Черепно-мозговая травма»")).buildNavigationText()
                        }
                    }
                    if isTextExpanded2 {
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("27"), content: Text("""
                            **Оценка уровня сознания по шкале Глазго**
                            """)).buildGrayTextCenter()
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("27"), content: Text("""
                                    **Пульс есть**:
                                    """)).buildGrayInText()
                                HStack {
                                    MyViewBuilder(title: Text("27"), content: Text("""
                                **Да**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded4)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
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
                                    MyViewBuilder(title: Text("27"), content: Text("""
                                **Нет**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded3)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
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
                                    
                                }.padding(5).padding(.top, -10)
                            }
                        }
                    }
                    if isTextExpanded3 {
                        Image(systemName: "arrow.down")
                           
                        NavigationLink (destination: Prikaz1030Alg4View()) {
                            MyViewBuilder(title: Text("27"), content: Text("Алгоритм 4 «Внезапная смерть, сердечно-легочная реанимация»")).buildNavigationText()
                        }
                    }
                    if isTextExpanded4 {
                        Image(systemName: "arrow.down")
                        
                                MyViewBuilder(title: Text("**Выполнить следующие мероприятия**."), content: Text("""
                            1. Обеспечить проходимость дыхательных путей.
                            2. Постановка воздуховода.
                            3. Ингаляция кислорода.
                            4. ИВЛ при неадекватном дыхании через ларингиальную маску (интубационную трубку).
                            5. Глюкометрия.
                            6. ЭКГ.
                            7. Контроль вены, 0,9% раствор натрия хлорида в/в.
                            8. АД.
                            """)).buildGrayInAndHiddenBlock()
                            
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("1"), content: Text("""
                            **Уровень глюкозы**:
                            """)).buildGrayInText()
                                HStack {
                                    MyViewBuilder(title: Text("27"), content: Text("""
                                Понижен
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded5)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
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
                                            withAnimation (.snappy) {
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
                                            withAnimation (.snappy) {
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
                                }.padding(5).padding(.top, -10)
                            }
                        }
                    }
                    if isTextExpanded5 {
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("27"), content: Text("""
                            **20-60 мл 40% раствора глюкозы в/в**
                            """)).buildGrayText()
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("27"), content: Text("""
                            **Улучшение**
                            """)).buildGrayText()
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("27"), content: Text("""
                            **Доставка в стационар** (ОИТАР, минуя приемное отделение)
                            """)).buildGrayText()
                    }
                    if isTextExpanded6 {
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("1"), content: Text("""
                            **Аритмия есть**:
                            """)).buildGrayInText()
                                HStack {
                                    MyViewBuilder(title: Text("27"), content: Text("""
                                **Да**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded8)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
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
                                **Нет**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded9)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
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
                                }.padding(5).padding(.top, -10)
                            }
                        }
                    }
                    if isTextExpanded7 {
                        Image(systemName: "arrow.down")
                           
                        NavigationLink (destination: Prikaz1030Alg28View()) {
                            MyViewBuilder(title: Text("27"), content: Text("Алгоритм 28 «Комы при сахарном диабете»")).buildNavigationText()
                        }
                    }
                    
                    if isTextExpanded8 {
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("27"), content: Text("""
                            См. соответствующие алгоритмы лечения аритмий
                            """)).buildGrayText()
                    }
                    if isTextExpanded9 {
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("1"), content: Text("""
                            **Отравление опиатами есть**:
                            """)).buildGrayInText()
                                HStack {
                                    MyViewBuilder(title: Text("27"), content: Text("""
                                **Да**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded10)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
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
                                **Нет**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded11)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
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
                                }.padding(5).padding(.top, -10)
                            }
                        }
                    }
                    if isTextExpanded10{
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("27"), content: Text("""
                            **Налоксон 1-2 мл 0,5% раствора в/в**
                            """)).buildGrayText()
                        Image(systemName: "arrow.down")
                           
                        NavigationLink (destination: Prikaz1030Alg49View()) {
                            MyViewBuilder(title: Text("27"), content: Text("Алгоритм 49 «Отравление неизвестным ядом»")).buildNavigationText()
                        }
                    }
                    if isTextExpanded11{
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("1"), content: Text("""
                            **Очаговые или менингиальные симптомы**:
                            """)).buildGrayInText()
                                HStack {
                                    MyViewBuilder(title: Text("27"), content: Text("""
                                **Есть**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded12)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
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
                                **Нет**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded13)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
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
                                }.padding(5).padding(.top, -10)
                            }
                        }
                    }
                    if isTextExpanded12 {
                        Image(systemName: "arrow.down")
                           
                        NavigationLink (destination: Prikaz1030Alg30View()) {
                            MyViewBuilder(title: Text("27"), content: Text("Алгоритм 30 «Острое нарушение мозгового кровообращения»")).buildNavigationText()
                        }
                    }
                    if isTextExpanded13 {
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("1"), content: Text("""
                            **Возможна гипотермия, гипертермия, гиповолемия**:
                            """)).buildGrayInText()
                                HStack {
                                    MyViewBuilder(title: Text("27"), content: Text("""
                                **Да**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded14)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded14.toggle()
                                                
                                                if isTextExpanded15 == true {
                                                    isTextExpanded15.toggle()
                                                }
                                                
                                            }
                                        }
                                    MyViewBuilder(title: Text("27"), content: Text("""
                                **Нет**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded15)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded15.toggle()
                                                if isTextExpanded14 == true {
                                                    isTextExpanded14.toggle()
                                                }
                                            }
                                        }
                                }.padding(5).padding(.top, -10)
                            }
                        }
                    }
                    if isTextExpanded14 {
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("1"), content: Text("""
                            См. соответствующие алгоритмы
                            """)).buildGrayText()
                    }
                    if isTextExpanded15 {
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("1"), content: Text("""
                            **Доставка в стационар** (ОИТАР, минуя приемное отделение)
                            """)).buildGrayText()
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
                    Text("Алгоритм 27")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Кома неясного генеза»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
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
    Prikaz1030Alg27View()
}

struct Prikaz1030Alg27ViewFavorites: View {
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
        return favoritesManager.favorites.contains { $0.viewIdentifier == "Алгоритм 27. «Кома неясного генеза»" }
    }
    
    func addToFavorites() {
        let newItem = FavoriteItem(name: "Приказ №1030", viewIdentifier: "Алгоритм 27. «Кома неясного генеза»", isExpanded: false, isNavigationLink: true)
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
        if let item = favoritesManager.favorites.first(where: { $0.viewIdentifier == "Алгоритм 27. «Кома неясного генеза»" }) {
            favoritesManager.removeItem(item)
        }
    }
    

    var body: some View {
        VStack {
            NavigationLink(destination: Prikaz1030Alg27View()) {
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
