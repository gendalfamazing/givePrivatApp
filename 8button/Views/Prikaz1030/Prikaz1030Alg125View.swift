//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg25View: View {
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
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack {
                            VStack {
                                MyViewBuilder(title: Text("25"), content: Text("""
                            **Молниеносные стенозы, обусловленные крупными инородными телами**
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
                                            
                                        }
                                    }
                                HStack {
                                    MyViewBuilder(title: Text("25"), content: Text("""
                                **I степень**
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
                                                
                                            }
                                        }
                                    MyViewBuilder(title: Text("25"), content: Text("""
                                **II степень**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded3)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded3.toggle()
                                                if isTextExpanded2 == true {
                                                    isTextExpanded2.toggle()
                                                }
                                                if isTextExpanded1 == true {
                                                    isTextExpanded1.toggle()
                                                }
                                                if isTextExpanded4 == true {
                                                    isTextExpanded4.toggle()
                                                }
                                                
                                            }
                                        }
                                    MyViewBuilder(title: Text("25"), content: Text("""
                                **III степень**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded4)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded4.toggle()
                                                if isTextExpanded2 == true {
                                                    isTextExpanded2.toggle()
                                                }
                                                if isTextExpanded3 == true {
                                                    isTextExpanded3.toggle()
                                                }
                                                if isTextExpanded1 == true {
                                                    isTextExpanded1.toggle()
                                                }
                                                
                                            }
                                        }
                                }
                            }
                            
                        }
                        .padding(5)
                    }
                    if isTextExpanded1 {
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("25"), content: Text("""
                            **Клиническая картина**:
                            """)).buildGrayInText()
                                MyViewBuilder(title: Text("25"), content: Text("""
                            **Поперхивание и кашель** (при приёме пищи, во время игры), **посинение, остановка дыхания, периодический кашель при перемене положения туловища, шумное дыхание**
                            """)).buildGrayInHiddenText()
                            }
                            .padding(5)
                        }
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("25"), content: Text("""
                            **У взрослых использовать приём Хеймлика (у пациентов без сознания проводится в положении лежа). Немедленная интубация или любой вид горлосечения: коникотомия, крикотомия, трахеотомия**.
                            """)).buildGrayText()
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("25"), content: Text("""
                            **Экстренная доставка в стационар**
                            """)).buildGrayText()
                    }
                    if isTextExpanded2 {
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("25"), content: Text("""
                            **Клиническая картина**:
                            """)).buildGrayInText()
                                MyViewBuilder(title: Text("25"), content: Text("""
                            **Небольшая одышка, незначительный цианоз во время беспокойства, АД – нормальное или повышено**
                            """)).buildGrayInHiddenText()
                            }
                            .padding(5)
                        }
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("25"), content: Text("""
                            **Оксигенотерапия 100-40%** воздушнокислородной смесью.
                            **Гидрокортизон 50 мг** в/м.
                            """)).buildGrayText()
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("25"), content: Text("""
                            **Небулайзерная терапия**:
                            - **фенотерол с ипратропиум бромидом 1-4 мл или 20-80 капель**.
                            """)).buildGrayText()
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("25"), content: Text("""
                            **Экстренная доставка в стационар**
                            """)).buildGrayText()
                    }
                    if isTextExpanded3 {
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("25"), content: Text("""
                            **Клиническая картина**:
                            """)).buildGrayInText()
                                MyViewBuilder(title: Text("25"), content: Text("""
                                    **Одышка в состоянии покоя, в дыхании участвуют вспомогательные мышцы, цианоз слизистых полости рта, ушей, пальцев, кожи носогубного треугольника, пульс учащён, АД повышено**
                                    """)).buildGrayInHiddenText()
                            }
                            .padding(5)
                        }
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("25"), content: Text("""
                            **Оксигенотерапия: 100-40%** воздушно-кислородной смесью.
                            **Преднизолон 30 мг в/в, гидрокортизон 100 мг в/м**.
                            """)).buildGrayText()
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("25"), content: Text("""
                            **Небулайзерная терапия**:
                            - **фенотерол с ипратропиум бромидом 1-4 мл или 20-80 капель**.
                            """)).buildGrayText()
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("25"), content: Text("""
                            **Экстренная доставка в стационар**
                            """)).buildGrayText()
                    }
                    if isTextExpanded4 {
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("25"), content: Text("""
                            **Клиническая картина**:
                            """)).buildGrayInText()
                                MyViewBuilder(title: Text("25"), content: Text("""
                                    **Резкая одышка, иногда патологическое дыхание, в акте дыхания участвуют вспомогательные мышцы, резко учащён пульс, АД снижено, тотальный цианоз, может быть нарушено сознание и судороги**
                                    """)).buildGrayInHiddenText()
                            }
                            .padding(5)
                        }
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("25"), content: Text("""
                            **Оксигенотерапия 100-40%** воздушно-кислородной смесью.
                            **Преднизолон 30 мг в/в, гидрокортизон 100 мг в/м**.
                            **Орошение слизистых носа, полости рта и глотки 0,18% раствором эпинефрина 1 мл**.
                            """)).buildGrayText()
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("25"), content: Text("""
                            **При асфиксии: немедленная интубация или любой вид горлосечения: коникотомия, крикотомия, трахеотомия**
                            """)).buildGrayText()
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("25"), content: Text("""
                            **Небулайзерная терапия**:
                            - **фенотерол с ипратропиум бромидом 1-4 мл или 20-80 капель**.
                            """)).buildGrayText()
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("25"), content: Text("""
                            **Экстренная доставка в стационар**
                            """)).buildGrayText()
                    }
                }
                .textSelection(.enabled)
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
                    Text("Алгоритм 25")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Стеноз гортани»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg25"), title: "Алгоритм 25")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}

#Preview {
    Prikaz1030Alg25View()
}
