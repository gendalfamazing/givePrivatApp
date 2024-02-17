//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg109View: View {
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
                    MyViewBuilder(title: Text("9"), content: Text("""
                    **Появилась самостоятельная пульсация на крупных артериях**
                    """)).buildGrayText()
                    
                    
                    HStack{
                        MyViewBuilder(title: Text("9"), content: Text("""
                            Самостоятельное дыхание **есть**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded1)
                            .onTapGesture {
                                withAnimation (.interpolatingSpring) {
                                    isTextExpanded1.toggle()
                                    if isTextExpanded2 == true {
                                        isTextExpanded2.toggle()
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
                                    if isTextExpanded9 == true {
                                        isTextExpanded9.toggle()
                                    }
                                    if isTextExpanded10 == true {
                                        isTextExpanded10.toggle()
                                    }
                                }
                            }
                        MyViewBuilder(title: Text("9"), content: Text("""
                            Самостоятельного дыхания **нет**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded2)
                            .onTapGesture {
                                withAnimation (.interpolatingSpring) {
                                    isTextExpanded2.toggle()
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
                                    if isTextExpanded9 == true {
                                        isTextExpanded9.toggle()
                                    }
                                    if isTextExpanded10 == true {
                                        isTextExpanded10.toggle()
                                    }
                                }
                            }
                    }//Breath
                    
                    if isTextExpanded1 {
                        MyViewBuilder(title: Text("9"), content: Text("""
                        **Продолжать респираторную поддержку**: **ВИВЛ** с 50% О2 в режиме **нормовентиляции**.
                        """)).buildGrayText()
                        HStack{
                            MyViewBuilder(title: Text("9"), content: Text("""
                                Нарушение ритма **есть**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded4)
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
                                        if isTextExpanded9 == true {
                                            isTextExpanded9.toggle()
                                        }
                                        if isTextExpanded10 == true {
                                            isTextExpanded10.toggle()
                                        }
                                    }
                                }
                            MyViewBuilder(title: Text("9"), content: Text("""
                                Нарушения ритма **нет**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded5)
                                .onTapGesture {
                                    withAnimation (.interpolatingSpring) {
                                        isTextExpanded5.toggle()
                                        if isTextExpanded4 == true {
                                            isTextExpanded4.toggle()
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
                                    }
                                }
                        }//Ruthm
                        
                        if isTextExpanded4 {
                            MyViewBuilder(title: Text("9"), content: Text("""
                            **Лечение аритмий** по соответсвующим алгоритмам
                            """)).buildGrayText()
                        }
                        if isTextExpanded5 {
                            HStack{
                                MyViewBuilder(title: Text("9"), content: Text("""
                                САД **выше 90 мм.рт.ст**.
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded6)
                                    .onTapGesture {
                                        withAnimation (.interpolatingSpring) {
                                            isTextExpanded6.toggle()
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
                                MyViewBuilder(title: Text("9"), content: Text("""
                                САД **ниже 90 мм.рт.ст**.
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded7)
                                    .onTapGesture {
                                        withAnimation (.interpolatingSpring) {
                                            isTextExpanded7.toggle()
                                            if isTextExpanded6 == true {
                                                isTextExpanded6.toggle()
                                            }
                                            if isTextExpanded9 == true {
                                                isTextExpanded9.toggle()
                                            }
                                            if isTextExpanded10 == true {
                                                isTextExpanded10.toggle()
                                            }
                                        }
                                    }
                            }//SAD
                            
                            if isTextExpanded6 {
                                MyViewBuilder(title: Text("9"), content: Text("""
                            **Продолжить в/в инфузионную терапию 0,9% раствором натрия хлорида** со скоростью **10-12 капель в минуту**.
                            """)).buildGrayText()
                                Image(systemName: "arrow.down")
                                    .shadow(radius: 2)
                                MyViewBuilder(title: Text("9"), content: Text("""
                            **Седативная терапия** в/в: **оксибутират натрия 10 мл 20%** раствора; или **диазепам 2 мл 0,5%** раствора; или **фентанил 2 мл 0,005%** раствора; или **морфин 1 мл 1%** раствора.
                            """)).buildGrayText()
                                HStack{
                                    MyViewBuilder(title: Text("9"), content: Text("""
                                    Гипогликемия **есть**
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded9)
                                        .onTapGesture {
                                            withAnimation (.interpolatingSpring) {
                                                isTextExpanded9.toggle()
                                                if isTextExpanded10 == true {
                                                    isTextExpanded10.toggle()
                                                }
                                            }
                                        }
                                    MyViewBuilder(title: Text("9"), content: Text("""
                                    Гипогликемии **нет**
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded10)
                                        .onTapGesture {
                                            withAnimation (.interpolatingSpring) {
                                                isTextExpanded10.toggle()
                                                if isTextExpanded9 == true {
                                                    isTextExpanded9.toggle()
                                                }
                                            }
                                        }
                                }//glucosae
                                
                                if isTextExpanded9 {
                                    MyViewBuilder(title: Text("9"), content: Text("""
                                **Глюкоза 40 мл 40%** раствора в/в струйно
                                """)).buildGrayText()
                                    Image(systemName: "arrow.down")
                                        .shadow(radius: 2)
                                    MyViewBuilder(title: Text("9"), content: Text("""
                                **Доставка в ближайший стационар, имеющий реанимационное отделение**
                                """)).buildGrayText()
                                }
                                if isTextExpanded10 {
                                    MyViewBuilder(title: Text("9"), content: Text("""
                                **Доставка в ближайший стационар, имеющий реанимационное отделение**
                                """)).buildGrayText()
                                }
                            }
                            if isTextExpanded7 {
                                MyViewBuilder(title: Text("9"), content: Text("""
                            **Продолжить в/в инфузионную терапию допамином (200-400 мг)** в **400 мл 0,9% раствора натрия хлорида**, скорость **контролируется по АД**
                            """)).buildGrayText()
                                Image(systemName: "arrow.down")
                                    .shadow(radius: 2)
                                MyViewBuilder(title: Text("9"), content: Text("""
                            **Седативная терапия** в/в: **оксибутират натрия 10 мл 20%** раствора; или **диазепам 2 мл 0,5%** раствора; или **фентанил 2 мл 0,005%** раствора; или **морфин 1 мл 1%** раствора.
                            """)).buildGrayText()
                                
                                HStack{
                                    MyViewBuilder(title: Text("9"), content: Text("""
                                    Гипогликемия **есть**
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded9)
                                        .onTapGesture {
                                            withAnimation (.interpolatingSpring) {
                                                isTextExpanded9.toggle()
                                                if isTextExpanded10 == true {
                                                    isTextExpanded10.toggle()
                                                }
                                            }
                                        }
                                    MyViewBuilder(title: Text("9"), content: Text("""
                                    Гипогликемии **нет**
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded10)
                                        .onTapGesture {
                                            withAnimation (.interpolatingSpring) {
                                                isTextExpanded10.toggle()
                                                if isTextExpanded9 == true {
                                                    isTextExpanded9.toggle()
                                                }
                                            }
                                        }
                                }//glucosae
                                
                                if isTextExpanded9 {
                                    MyViewBuilder(title: Text("9"), content: Text("""
                                **Глюкоза 40 мл 40%** раствора в/в струйно
                                """)).buildGrayText()
                                    Image(systemName: "arrow.down")
                                        .shadow(radius: 2)
                                    MyViewBuilder(title: Text("9"), content: Text("""
                                **Доставка в ближайший стационар, имеющий реанимационное отделение**
                                """)).buildGrayText()
                                }
                                if isTextExpanded10 {
                                    MyViewBuilder(title: Text("9"), content: Text("""
                                **Доставка в ближайший стационар, имеющий реанимационное отделение**
                                """)).buildGrayText()
                                }
                            }
                        }
                    }
                    if isTextExpanded2 {
                        MyViewBuilder(title: Text("9"), content: Text("""
                        **Продолжать респираторную поддержку**: **ИВЛ** с 50% О2 в режиме **нормовентиляции**.
                        """)).buildGrayText()
                        HStack{
                            MyViewBuilder(title: Text("9"), content: Text("""
                                Нарушение ритма **есть**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded4)
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
                                        if isTextExpanded9 == true {
                                            isTextExpanded9.toggle()
                                        }
                                        if isTextExpanded10 == true {
                                            isTextExpanded10.toggle()
                                        }
                                    }
                                }
                            MyViewBuilder(title: Text("9"), content: Text("""
                                Нарушения ритма **нет**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded5)
                                .onTapGesture {
                                    withAnimation (.interpolatingSpring) {
                                        isTextExpanded5.toggle()
                                        if isTextExpanded4 == true {
                                            isTextExpanded4.toggle()
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
                                    }
                                }
                        }//Ruthm
                        
                        if isTextExpanded4 {
                            MyViewBuilder(title: Text("9"), content: Text("""
                            **Лечение аритмий** по соответсвующим алгоритмам
                            """)).buildGrayText()
                        }
                        if isTextExpanded5 {
                            HStack{
                                MyViewBuilder(title: Text("9"), content: Text("""
                                САД **выше 90 мм.рт.ст**.
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded6)
                                    .onTapGesture {
                                        withAnimation (.interpolatingSpring) {
                                            isTextExpanded6.toggle()
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
                                MyViewBuilder(title: Text("9"), content: Text("""
                                САД **ниже 90 мм.рт.ст**.
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded7)
                                    .onTapGesture {
                                        withAnimation (.interpolatingSpring) {
                                            isTextExpanded7.toggle()
                                            if isTextExpanded6 == true {
                                                isTextExpanded6.toggle()
                                            }
                                            if isTextExpanded9 == true {
                                                isTextExpanded9.toggle()
                                            }
                                            if isTextExpanded10 == true {
                                                isTextExpanded10.toggle()
                                            }
                                        }
                                    }
                            }//SAD
                            
                            if isTextExpanded6 {
                                MyViewBuilder(title: Text("9"), content: Text("""
                            **Продолжить в/в инфузионную терапию 0,9% раствором натрия хлорида** со скоростью **10-12 капель в минуту**.
                            """)).buildGrayText()
                                Image(systemName: "arrow.down")
                                    .shadow(radius: 2)
                                MyViewBuilder(title: Text("9"), content: Text("""
                            **Седативная терапия** в/в: **оксибутират натрия 10 мл 20%** раствора; или **диазепам 2 мл 0,5%** раствора; или **фентанил 2 мл 0,005%** раствора; или **морфин 1 мл 1%** раствора.
                            """)).buildGrayText()
                                HStack{
                                    MyViewBuilder(title: Text("9"), content: Text("""
                                    Гипогликемия **есть**
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded9)
                                        .onTapGesture {
                                            withAnimation (.interpolatingSpring) {
                                                isTextExpanded9.toggle()
                                                if isTextExpanded10 == true {
                                                    isTextExpanded10.toggle()
                                                }
                                            }
                                        }
                                    MyViewBuilder(title: Text("9"), content: Text("""
                                    Гипогликемии **нет**
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded10)
                                        .onTapGesture {
                                            withAnimation (.interpolatingSpring) {
                                                isTextExpanded10.toggle()
                                                if isTextExpanded9 == true {
                                                    isTextExpanded9.toggle()
                                                }
                                            }
                                        }
                                }//glucosae
                                
                                if isTextExpanded9 {
                                    MyViewBuilder(title: Text("9"), content: Text("""
                                **Глюкоза 40 мл 40%** раствора в/в струйно
                                """)).buildGrayText()
                                    Image(systemName: "arrow.down")
                                        .shadow(radius: 2)
                                    MyViewBuilder(title: Text("9"), content: Text("""
                                **Доставка в ближайший стационар, имеющий реанимационное отделение**
                                """)).buildGrayText()
                                }
                                if isTextExpanded10 {
                                    MyViewBuilder(title: Text("9"), content: Text("""
                                **Доставка в ближайший стационар, имеющий реанимационное отделение**
                                """)).buildGrayText()
                                }
                            }
                            if isTextExpanded7 {
                                MyViewBuilder(title: Text("9"), content: Text("""
                            **Продолжить в/в инфузионную терапию допамином (200-400 мг)** в **400 мл 0,9% раствора натрия хлорида**, скорость **контролируется по АД**
                            """)).buildGrayText()
                                Image(systemName: "arrow.down")
                                    .shadow(radius: 2)
                                MyViewBuilder(title: Text("9"), content: Text("""
                            **Седативная терапия** в/в: **оксибутират натрия 10 мл 20%** раствора; или **диазепам 2 мл 0,5%** раствора; или **фентанил 2 мл 0,005%** раствора; или **морфин 1 мл 1%** раствора.
                            """)).buildGrayText()
                                
                                HStack{
                                    MyViewBuilder(title: Text("9"), content: Text("""
                                    Гипогликемия **есть**
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded9)
                                        .onTapGesture {
                                            withAnimation (.interpolatingSpring) {
                                                isTextExpanded9.toggle()
                                                if isTextExpanded10 == true {
                                                    isTextExpanded10.toggle()
                                                }
                                            }
                                        }
                                    MyViewBuilder(title: Text("9"), content: Text("""
                                    Гипогликемии **нет**
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded10)
                                        .onTapGesture {
                                            withAnimation (.interpolatingSpring) {
                                                isTextExpanded10.toggle()
                                                if isTextExpanded9 == true {
                                                    isTextExpanded9.toggle()
                                                }
                                            }
                                        }
                                }//glucosae
                                
                                if isTextExpanded9 {
                                    MyViewBuilder(title: Text("9"), content: Text("""
                                **Глюкоза 40 мл 40%** раствора в/в струйно
                                """)).buildGrayText()
                                    Image(systemName: "arrow.down")
                                        .shadow(radius: 2)
                                    MyViewBuilder(title: Text("9"), content: Text("""
                                **Доставка в ближайший стационар, имеющий реанимационное отделение**
                                """)).buildGrayText()
                                }
                                if isTextExpanded10 {
                                    MyViewBuilder(title: Text("9"), content: Text("""
                                **Доставка в ближайший стационар, имеющий реанимационное отделение**
                                """)).buildGrayText()
                                }
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
                Text("Алгоритм 9")
                    .font(.headline)
                    .bold()
                Text("«Постреанимационная поддержка»")
                    .font(.caption2)
            }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg9"), title: "Алгоритм 9")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}


#Preview {
    Prikaz1030Alg109View()
}
