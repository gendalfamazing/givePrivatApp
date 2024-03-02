//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg47View: View {
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
    
    @State private var isTextExpanded71 = true
    @State private var isTextExpanded72 = true
    
    var body: some View {
        NavigationStack {
            ScrollView {
                Spacer()
                VStack {
                    ZStack{
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack{
                            
                            MyViewBuilder(title: Text("47"), content: Text("""
                                    **Первичный осмотр (ABCD)**, оценка уровня сознания.
                                    """)).buildGrayInHiddenText()
                            NavigationLink (destination: Prikaz1030Alg2View()) {
                                MyViewBuilder(title: Text("1"), content: Text("Алгоритм 2 «Первичный осмотр пациента (ABCD)».")).buildNavigationText()
                            }
                            MyViewBuilder(title: Text("47"), content: Text("""
                                    **Пациент в сознании**:
                                    """)).buildGrayInText()
                            HStack {
                                MyViewBuilder(title: Text("47"), content: Text("""
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
                                            if isTextExpanded2 == false && isTextExpanded1 == false{
                                                isTextExpanded5 = false
                                            }
                                        }
                                    }
                                MyViewBuilder(title: Text("47"), content: Text("""
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
                                            if isTextExpanded2 == false && isTextExpanded1 == false{
                                                isTextExpanded5 = false
                                            }
                                        }
                                    }
                                
                            }
                        }
                        .padding(5.0)
                    }
                    if isTextExpanded1 {
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("47"), content: Text("""
                                **Медицинская помощь**:
                                """)).buildGrayInText()
                                MyViewBuilder(title: Text("47"), content: Text("""
                                - ингаляция **кислорода**;
                                - **снять мокрую одежду**;
                                - **укутать в одеяло**;
                                - в/в **подогретый 0,9% раствор натрия хлорида**, растворы электролитов;
                                - **ЭКГ контроль**.
                                """)).buildGrayInHiddenText()
                                
                            }
                            .padding(5)
                        }
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("47"), content: Text("""
                        **Вторичный осмотр (ABCD)**
                        """)).buildGrayText()
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("47"), content: Text("""
                        **Экстренная доставка** в ОИТАР стационара
                        """)).buildGrayText()
                    }
                    if isTextExpanded2 {
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("47"), content: Text("""
                                **Есть пульс, самостоятельное дыхание**:
                                """)).buildGrayInText()
                                
                                HStack {
                                    MyViewBuilder(title: Text("47"), content: Text("""
                                    **Да**
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded3)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded3.toggle()
                                                if isTextExpanded4 == true {
                                                    isTextExpanded4.toggle()
                                                }
                                                if isTextExpanded5 == false {
                                                    isTextExpanded5.toggle()
                                                }
                                                if isTextExpanded3 == false && isTextExpanded4 == false{
                                                    isTextExpanded5 = false
                                                }
                                            }
                                        }
                                    MyViewBuilder(title: Text("47"), content: Text("""
                                    **Нет**
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded4)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded4.toggle()
                                                
                                                if isTextExpanded3 == true {
                                                    isTextExpanded3.toggle()
                                                }
                                                if isTextExpanded5 == false {
                                                    isTextExpanded5.toggle()
                                                }
                                                if isTextExpanded3 == false && isTextExpanded4 == false{
                                                    isTextExpanded5 = false
                                                }
                                            }
                                        }
                                    
                                }
                                
                            }
                            .padding(5)
                        }
                    }
                    if isTextExpanded3 {
                        //
                    }
                    if isTextExpanded4 {
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("47"), content: Text("""
                        - **СЛР по алгоритмам** оказания помощи при асистолии, фибрилляции желудочков;
                        - **ЭКГ контроль**.
                        """)).buildGrayText()
                    }
                    if isTextExpanded5 {
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("47"), content: Text("""
                                **Неотложная помощь**:
                                """)).buildGrayInText()
                                MyViewBuilder(title: Text("47"), content: Text("""
                                - поддержание **проходимости дыхательных путей**;
                                - ингаляция **кислорода**;
                                - **интубация трахеи** или комбитюб (ларингиальная маска);
                                - **снять мокрую одежду**;
                                - **укутать в одеяло**;
                                - в/в **подогретый 0,9% раствор натрия хлорида**, растворы электролитов;
                                - **ЭКГ** контроль;
                                - **готовность к СЛР**.
                                """)).buildGrayInHiddenText()
                                
                            }
                            .padding(5)
                        }
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("47"), content: Text("""
                        **Экстренная доставка** в ОИТАР стационара
                        """)).buildGrayText()
                    }
                    Spacer(minLength: 30)
                    HStack {
                        ForEach(0..<13) { _ in
                            Image(systemName: "minus")
                        }
                    }
                    
                    Image(systemName: "minus")
                    ZStack{
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack{
                            MyViewBuilder(title: Text("47"), content: Text("""
                            **Примечание.**
                            """)).buildGrayInText()
                            MyViewBuilder(title: Text("47"), content: Text("""
                                    1. Применять **пассивное согревание**.
                                    2. **Резкие движения, любая стимуляция (гипервентиляция, интубация) могут быть причиной фибрилляции**.
                                    """)).buildGrayInHiddenText()
                        }
                        .padding(5.0)
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
                    Text("Алгоритм 47")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Гипотермия»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg47"), title: "Алгоритм 47")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}

#Preview {
    Prikaz1030Alg47View()
}
