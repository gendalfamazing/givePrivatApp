//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg126View: View {
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
                    HStack {
                        MyViewBuilder(title: Text("26"), content: Text("""
                            Пациент **без сознания**
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
                                    
                                }
                            }
                        MyViewBuilder(title: Text("26"), content: Text("""
                            Пациент **в сознании**
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
                                    
                                }
                            }
                    }
                    if isTextExpanded1 {
                        MyViewBuilder(title: Text("26"), content: Text("""
                            **Попытка ИВЛ мешком Амбу. Визуализация инородного тела. Удаление инородного тела зажимом. ИВЛ кислородом под повышенным давлением.**
                            """)).buildGrayText()
                        HStack {
                            MyViewBuilder(title: Text("26"), content: Text("""
                                Обструкция **устранена, пациент без сознания**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded7)
                                .onTapGesture {
                                    withAnimation (.interpolatingSpring) {
                                        isTextExpanded7.toggle()
                                        
                                        if isTextExpanded8 == true {
                                            isTextExpanded8.toggle()
                                        }
                                        
                                        
                                    }
                                }
                            MyViewBuilder(title: Text("26"), content: Text("""
                                Обструкция **не устранена**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded8)
                                .onTapGesture {
                                    withAnimation (.interpolatingSpring) {
                                        isTextExpanded8.toggle()
                                        if isTextExpanded7 == true {
                                            isTextExpanded7.toggle()
                                        }
                                    }
                                }
                        }
                        if isTextExpanded7 {
                            MyViewBuilder(title: Text("26"), content: Text("""
                                **Установка воздуховода (интубационная трубка, ларингиальная маска, пищеводно-трахеальный обтуратор)**
                                """)).buildGrayText()
                            Image(systemName: "arrow.down")
                                .shadow(radius: 2)
                            MyViewBuilder(title: Text("26"), content: Text("""
                                **При нарушении сердечного ритма** См. соответствующие алгоритмы лечения аритмий
                                """)).buildGrayText()
                            Image(systemName: "arrow.down")
                                .shadow(radius: 2)
                            MyViewBuilder(title: Text("26"), content: Text("""
                                **Доставка под контролем жизненно важных функций в ближайший стационар** (ОИТАР, минуя приемное отделение)
                                """)).buildGrayText()
                        }
                        if isTextExpanded8 {
                            MyViewBuilder(title: Text("26"), content: Text("""
                                **Коникотомия**
                                """)).buildGrayText()
                            Image(systemName: "arrow.down")
                                .shadow(radius: 2)
                            MyViewBuilder(title: Text("26"), content: Text("""
                                **ИВЛ 50-100% кислородом под контролем SpO2**
                                """)).buildGrayText()
                            Image(systemName: "arrow.down")
                                .shadow(radius: 2)
                            MyViewBuilder(title: Text("26"), content: Text("""
                                **Доставка под контролем жизненно важных функций в ближайший стационар** (ОИТАР, минуя приемное отделение)
                                """)).buildGrayText()
                        }
                    }
                    
                    
                    
                    
                    
                    if isTextExpanded2 {
                        MyViewBuilder(title: Text("26"), content: Text("""
                            Заставить пациента **кашлять**. Провести **приём Хеймлика**.
                            """)).buildGrayText()
                        HStack {
                            MyViewBuilder(title: Text("26"), content: Text("""
                                Обструкция **не устранена**
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
                                        
                                    }
                                }
                            MyViewBuilder(title: Text("26"), content: Text("""
                                Обструкция **устранена**
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
                                    }
                                }
                        }
                        if isTextExpanded3 {
                            MyViewBuilder(title: Text("26"), content: Text("""
                                **Повторно провести приём Хеймлика**
                                """)).buildGrayText()
                            HStack {
                                MyViewBuilder(title: Text("26"), content: Text("""
                                    Обструкция **не устранена**, пациент теряет сознание
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
                                        }
                                    }
                                MyViewBuilder(title: Text("26"), content: Text("""
                                    Обструкция **устранена**
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
                                            
                                        }
                                    }
                            }
                        }
                        if isTextExpanded4 {
                            MyViewBuilder(title: Text("26"), content: Text("""
                                **Оксигенотерапия**
                                """)).buildGrayText()
                            Image(systemName: "arrow.down")
                                .shadow(radius: 2)
                            MyViewBuilder(title: Text("26"), content: Text("""
                                **Доставка в стационар** по профилю основного заболевания
                                """)).buildGrayText()
                        }
                        if isTextExpanded5 {
                            MyViewBuilder(title: Text("26"), content: Text("""
                                **Попытка ИВЛ мешком Амбу. Визуализация инородного тела. Удаление инородного тела зажимом. ИВЛ кислородом под повышенным давлением.**
                                """)).buildGrayText()
                            HStack {
                                MyViewBuilder(title: Text("26"), content: Text("""
                                    Обструкция **устранена, пациент без сознания**
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded7)
                                    .onTapGesture {
                                        withAnimation (.interpolatingSpring) {
                                            isTextExpanded7.toggle()
                                            
                                            if isTextExpanded8 == true {
                                                isTextExpanded8.toggle()
                                            }
                                            
                                            
                                        }
                                    }
                                MyViewBuilder(title: Text("26"), content: Text("""
                                    Обструкция **не устранена**
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded8)
                                    .onTapGesture {
                                        withAnimation (.interpolatingSpring) {
                                            isTextExpanded8.toggle()
                                            if isTextExpanded7 == true {
                                                isTextExpanded7.toggle()
                                            }
                                        }
                                    }
                            }
                            if isTextExpanded7 {
                                MyViewBuilder(title: Text("26"), content: Text("""
                                    **Установка воздуховода (интубационная трубка, ларингиальная маска, пищеводно-трахеальный обтуратор)**
                                    """)).buildGrayText()
                                Image(systemName: "arrow.down")
                                    .shadow(radius: 2)
                                MyViewBuilder(title: Text("26"), content: Text("""
                                    **При нарушении сердечного ритма** См. соответствующие алгоритмы лечения аритмий
                                    """)).buildGrayText()
                                Image(systemName: "arrow.down")
                                    .shadow(radius: 2)
                                MyViewBuilder(title: Text("26"), content: Text("""
                                    **Доставка под контролем жизненно важных функций в ближайший стационар** (ОИТАР, минуя приемное отделение)
                                    """)).buildGrayText()
                            }
                            if isTextExpanded8 {
                                MyViewBuilder(title: Text("26"), content: Text("""
                                    **Коникотомия**
                                    """)).buildGrayText()
                                Image(systemName: "arrow.down")
                                    .shadow(radius: 2)
                                MyViewBuilder(title: Text("26"), content: Text("""
                                    **ИВЛ 50-100% кислородом под контролем SpO2**
                                    """)).buildGrayText()
                                Image(systemName: "arrow.down")
                                    .shadow(radius: 2)
                                MyViewBuilder(title: Text("26"), content: Text("""
                                    **Доставка под контролем жизненно важных функций в ближайший стационар** (ОИТАР, минуя приемное отделение)
                                    """)).buildGrayText()
                            }
                        }
                        if isTextExpanded6 {
                            MyViewBuilder(title: Text("26"), content: Text("""
                                **Оксигенотерапия**
                                """)).buildGrayText()
                            Image(systemName: "arrow.down")
                                .shadow(radius: 2)
                            MyViewBuilder(title: Text("26"), content: Text("""
                                **Доставка в стационар** по профилю основного заболевания
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
                    Text("Алгоритм 26")
                        .font(.headline)
                        .bold()
                    Text("«Обструкция дыхательных путей инородным телом»")
                        .font(.caption2)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg26"), title: "Алгоритм 26")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}

#Preview {
    Prikaz1030Alg126View()
}
