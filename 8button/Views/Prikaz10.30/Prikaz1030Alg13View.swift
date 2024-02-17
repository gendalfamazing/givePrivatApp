//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg113View: View {
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
                    MyViewBuilder(title: Text("13"), content: Text("""
                    **Обеспечить проходимость дыхательных путей.
                    Контроль за дыханием, гемодинамикой. Анамнез, осмотр, венозный доступ, ингаляция кислорода, контроль АД, ЧСС, ритма, мониторирование ЭКГ.**
                    
                    **Горизонтальное положение пациента** с приподнятым ножным концом.
                    """)).buildGrayText()
                    Image(systemName: "arrow.down")
                        .shadow(radius: 2)
                        MyViewBuilder(title: Text("13"), content: Text("""
                        **Состояние нестабильное**:
                        
                        - гипотензия,
                        - острая сердечная недостаточность,
                        - ОКС,
                        - острое расстройство психики.
                        """)).buildGrayText()
                        HStack {
                            MyViewBuilder(title: Text("13"), content: Text("""
                            Состояние пациента **стабильное**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded1)
                                .onTapGesture {
                                    withAnimation (.interpolatingSpring) {
                                        isTextExpanded1.toggle()
                                        if isTextExpanded2 == true {
                                            isTextExpanded2.toggle()
                                        }
                                    }
                                }
                            
                            MyViewBuilder(title: Text("13"), content: Text("""
                            Состояние пациента **стабильное**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded2)
                                .onTapGesture {
                                    withAnimation (.interpolatingSpring) {
                                        isTextExpanded2.toggle()
                                        if isTextExpanded1 == true {
                                            isTextExpanded1.toggle()
                                        }
                                    }
                                }
                        }
                        if isTextExpanded1 {
                            MyViewBuilder(title: Text("13"), content: Text("""
                            **Доставка в стационар** по профилю основного заболевания
                            """)).buildGrayText()
                        }
                        if isTextExpanded2 {
                            MyViewBuilder(title: Text("13"), content: Text("""
                            **Атропин 1 мг (0,1% - 1 мл)** в/в, при необходимости **через 5 минут повторное введение**, но **не более 3 раз**
                            """)).buildGrayText()
                            Image(systemName: "arrow.down")
                                .shadow(radius: 2)
                            MyViewBuilder(title: Text("13"), content: Text("""
                            **Временная электрокардиостимуляция** (при наличии соответствующего оборудования)
                            """)).buildGrayText()
                            Image(systemName: "arrow.down")
                                .shadow(radius: 2)
                            MyViewBuilder(title: Text("13"), content: Text("""
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
                Text("Алгоритм 13")
                    .font(.headline)
                    .bold()
                Text("«Брадиаритмии (синусовая брадикардия, AV-блокада II степени, полная AV-блокада, синдром слабости синусового узла)»")
                    .font(.caption2)
            }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg13"), title: "Алгоритм 13")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}



#Preview {
    Prikaz1030Alg113View()
}
