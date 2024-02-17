//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg111View: View {
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
                    MyViewBuilder(title: Text("11"), content: Text("""
                    **Анамнез, осмотр, установка периферического катера (контроль вены), контроль АД, ритма, ЭКГ, пульсоксиметрия**
                    """)).buildGrayText()
                    
                        HStack{
                            MyViewBuilder(title: Text("11"), content: Text("""
                            Состояние пациента **стабильное**
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
                                    }
                                }
                            MyViewBuilder(title: Text("11"), content: Text("""
                            Состояние пациента **нестабильное**
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
                                    }
                                }
                        }
                    
                    if isTextExpanded1 {
                        MyViewBuilder(title: Text("10"), content: Text("""
                        **Врачебная общепрофильная, педиатрическая, фельдшерская бригада скорой помощи**
                        """)).buildGrayText()
                        Image(systemName: "arrow.down")
                            .shadow(radius: 2)
                        MyViewBuilder(title: Text("10"), content: Text("""
                        **Прокаинамид 10 % – 5-10 мл** в **0,9%** растворе **натрия хлорида медленно** под контролем **АД** (возможно **в одном шприце** с **1% раствором фенилэфрина 0,1-0,3-0,5мл**) в/в
                        """)).buildGrayText()
                        HStack{
                            MyViewBuilder(title: Text("10"), content: Text("""
                            Эффект **есть**
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
                            MyViewBuilder(title: Text("10"), content: Text("""
                            Эффекта **нету**
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
                    }
                    if isTextExpanded3 {
                        MyViewBuilder(title: Text("11"), content: Text("""
                        **Доставка в стационар** по профилю основного заболевания
                        """)).buildGrayText()
                    }
                    if isTextExpanded4 {
                        MyViewBuilder(title: Text("10"), content: Text("""
                        **При отсутствии эффекта экстренная доставка в стационар** по профилю основного заболевания
                        """)).buildGrayText()
//
                    }
                    
                    if isTextExpanded2 {
                        MyViewBuilder(title: Text("10"), content: Text("""
                        **Реанимационная, бригада интенсивной терапии**
                        """)).buildGrayText()
                        Image(systemName: "arrow.down")
                            .shadow(radius: 2)
                        MyViewBuilder(title: Text("10"), content: Text("""
                        **Состояние нестабильное: 
                        гипотензия, сердечная недостаточность, ОКС, диспноэ, острое расстройство психики**
                        """)).buildGrayText()
                        HStack {
                            MyViewBuilder(title: Text("10"), content: Text("""
                            Состояние **стабильное**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded5)
                                .onTapGesture {
                                    withAnimation (.interpolatingSpring) {
                                        isTextExpanded5.toggle()
                                        if isTextExpanded3 == true {
                                            isTextExpanded3.toggle()
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
                            MyViewBuilder(title: Text("11"), content: Text("""
                            Состояние **нестабильное**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded6)
                                .onTapGesture {
                                    withAnimation (.interpolatingSpring) {
                                        isTextExpanded6.toggle()
                                        if isTextExpanded3 == true {
                                            isTextExpanded3.toggle()
                                        }
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
                        if isTextExpanded5 {
                            MyViewBuilder(title: Text("10"), content: Text("""
                            **Амиодарон 5 % – 6 мл в/в болюсно**, можно **повторно 3 мл через 15 минут** при отсутствии эффекта
                            """)).buildGrayText()
                            HStack {
                                MyViewBuilder(title: Text("10"), content: Text("""
                                Ритм **восстановлен**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded7)
                                    .onTapGesture {
                                        withAnimation (.interpolatingSpring) {
                                            isTextExpanded7.toggle()
                                            if isTextExpanded3 == true {
                                                isTextExpanded3.toggle()
                                            }
                                            if isTextExpanded8 == true {
                                                isTextExpanded8.toggle()
                                            }
                                        }
                                    }
                                MyViewBuilder(title: Text("11"), content: Text("""
                                Нет эффекта
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded8)
                                    .onTapGesture {
                                        withAnimation (.interpolatingSpring) {
                                            isTextExpanded8.toggle()
                                            if isTextExpanded3 == true {
                                                isTextExpanded3.toggle()
                                            }
                                            if isTextExpanded7 == true {
                                                isTextExpanded7.toggle()
                                            }
                                        }
                                    }
                            }
                            
                            if isTextExpanded7 {
                                MyViewBuilder(title: Text("10"), content: Text("""
                                **При отсутствии эффекта экстренная доставка в стационар** по профилю основного заболевания
                                """)).buildGrayText()
                            }
                            if isTextExpanded8 {
                                MyViewBuilder(title: Text("10"), content: Text("""
                                **При отсутствии эффекта экстренная доставка в стационар** по профилю основного заболевания
                                """)).buildGrayText()
                            }
                        }
                        if isTextExpanded6 {
                            MyViewBuilder(title: Text("10"), content: Text("""
                            **Экстренная кардиоверсия,
                            в/в седация (диазепам 0,5 % - 4-6 мл), 50-100-200-300-360 Дж**
                            """)).buildGrayText()
                            Image(systemName: "arrow.down")
                                .shadow(radius: 2)
                            MyViewBuilder(title: Text("10"), content: Text("""
                            Нет эффекта
                            """)).buildGrayText()
                            Image(systemName: "arrow.down")
                                .shadow(radius: 2)
                            MyViewBuilder(title: Text("10"), content: Text("""
                            **При отсутствии эффекта экстренная доставка в стационар** по профилю основного заболевания
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
                Text("Алгоритм 11")
                    .font(.headline)
                    .bold()
                Text("«Пароксизмальная тахикардия с широким комплексом QRS»")
                    .font(.caption2)
            }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg11"), title: "Алгоритм 11")){
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}


#Preview {
    Prikaz1030Alg111View()
}
