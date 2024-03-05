//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg14View: View {
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
    @State private var isTextExpanded91 = false
    @State private var isTextExpanded92 = false
    var body: some View {
        NavigationStack {
            ScrollView {
                Spacer()
                VStack {
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack {
                            MyViewBuilder(title: Text("14"), content: Text("""
                    **Мерцательная аритмия – ЭКГ**
                    """)).buildGrayInText()
                        }
                        
                    }
                    MyViewBuilder(title: Text("14"), content: Text("""
                **Постоянная форма и повторный пароксизм длительностью более 48 часов**
                """)).buildBlue591Text(isTextExpanded: isTextExpanded91)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded91.toggle()
                                if isTextExpanded91 == false {
                                    isTextExpanded1 = false
                                    isTextExpanded2 = false
                                }
                                if isTextExpanded92 == true {
                                    isTextExpanded92.toggle()
                                }
                            }
                        }
                    if isTextExpanded91 {
                        Image(systemName: "arrow.down")
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack (spacing: 5){
                                HStack {
                                    MyViewBuilder(title: Text("14"), content: Text("""
                            Гемодинамика **стабильная**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded1)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded1.toggle()
                                                if isTextExpanded2 == true {
                                                    isTextExpanded2.toggle()
                                                }
                                            }
                                        }
                                    
                                    MyViewBuilder(title: Text("14"), content: Text("""
                            ЧСС **более 120 уд/мин**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded2)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded2.toggle()
                                                if isTextExpanded1 == true {
                                                    isTextExpanded1.toggle()
                                                }
                                            }
                                        }
                                }
                                
                            }
                            .padding(5)
                        }
                        
                        
                        if isTextExpanded1 {
                            Image(systemName: "arrow.down")
                            
                            MyViewBuilder(title: Text("14"), content: Text("""
                        **Рекомендовать дообследование** и лечение в поликлинике по месту жительства
                        """)).buildGrayText()
                            
                        }
                        if isTextExpanded2 {
                            Image(systemName: "arrow.down")
                            
                            MyViewBuilder(title: Text("14"), content: Text("""
                        **1 мл – 0,025% раствора дигоксина в 20 мл 0,9% раствора натрия хлорида в/в струйно**
                        """)).buildGrayText()
                            Image(systemName: "arrow.down")
                            
                            MyViewBuilder(title: Text("14"), content: Text("""
                        **Доставка в стационар** по профилю заболевания
                        """)).buildGrayText()
                        }
                    }
                    
                    MyViewBuilder(title: Text("14"), content: Text("""
                **Иной пароксизм**
                """)).buildBlue591Text(isTextExpanded: isTextExpanded92)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded92.toggle()
                                if isTextExpanded91 == true {
                                    isTextExpanded91.toggle()
                                }
                                if isTextExpanded92 == false {
                                    isTextExpanded3 = false
                                    isTextExpanded4 = false
                                    isTextExpanded5 = false
                                    isTextExpanded6 = false
                                    isTextExpanded7 = false
                                    isTextExpanded8 = false
                                    isTextExpanded9 = false
                                    isTextExpanded10 = false
                                    isTextExpanded11 = false
                                    isTextExpanded12 = false
                                }
                            }
                        }
                    if isTextExpanded92 {
                        Image(systemName: "arrow.down")
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack (spacing: 1) {
                            
                            
                            MyViewBuilder(title: Text("14"), content: Text("""
                            **Гемодинамика стабильная**:
                            """)).buildGrayInText()
                            
                            HStack {
                                MyViewBuilder(title: Text("14"), content: Text("""
                            **Да**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded4)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded4.toggle()
                                            if isTextExpanded5 == true {
                                                isTextExpanded5.toggle()
                                            }
                                            if isTextExpanded10 == true {
                                                isTextExpanded11.toggle()
                                            }
                                            if isTextExpanded10 == true {
                                                isTextExpanded11.toggle()
                                            }
                                        }
                                    }
                                
                                MyViewBuilder(title: Text("14"), content: Text("""
                            **Нет**
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
                                            if isTextExpanded4 == true {
                                                isTextExpanded4.toggle()
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
                                        }
                                    }
                            }.padding(5.0)
                        }
                    }
                    
                    if isTextExpanded4 {
                        Image(systemName: "arrow.down")
                        
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack (spacing: 1){
                                MyViewBuilder(title: Text("14"), content: Text("""
                            **Впервые выявленный пароксизм**:
                            """)).buildGrayInText()
                                HStack {
                                    MyViewBuilder(title: Text("14"), content: Text("""
                                **Да**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded6)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded6.toggle()
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
                                            }
                                        }
                                    
                                    
                                    MyViewBuilder(title: Text("14"), content: Text("""
                                **Нет**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded10)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded10.toggle()
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
                                            }
                                        }
                                    
                                }.padding(5.0)
                                
                            }
                        }
                    }
                    if isTextExpanded5 {
                        Image(systemName: "arrow.down")
                        
                        MyViewBuilder(title: Text("14"), content: Text("""
                            **Электроимпульсная терапия дефибриллятором с функцией кардиоверсии** (синхронизация) с предварительной в/в **премедикацией диазепамом 0,5% – 2–4 мл, морфином 1% – 1 мл** (тримеперидин 2%-1 мл) с **оксигенотерапией 100% кислородом**
                            """)).buildGrayText()
                        Image(systemName: "arrow.down")
                        
                        MyViewBuilder(title: Text("14"), content: Text("""
                            **Доставка в стационар (ОИТАР, минуя приемное отделение)**
                            """)).buildGrayText()
                    }
                    if isTextExpanded10 {
                        Image(systemName: "arrow.down")
                        
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack (spacing: 1){
                                MyViewBuilder(title: Text("14"), content: Text("""
                            **Повторный пароксизм**:
                            """)).buildGrayInText()
                                MyViewBuilder(title: Text("14"), content: Text("""
                                    **Длительность более 24 часов**:
                                    """)).buildGrayInText()
                                HStack {
                                    MyViewBuilder(title: Text("14"), content: Text("""
                                **Да**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded11)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded11.toggle()
                                                if isTextExpanded7 == true {
                                                    isTextExpanded7.toggle()
                                                }
                                            }
                                        }
                                    
                                    
                                    MyViewBuilder(title: Text("14"), content: Text("""
                                **Нет**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded7)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded7.toggle()
                                                if isTextExpanded11 == true {
                                                    isTextExpanded11.toggle()
                                                }
                                                if isTextExpanded8 == true {
                                                    isTextExpanded8.toggle()
                                                }
                                                if isTextExpanded9 == true {
                                                    isTextExpanded9.toggle()
                                                }
                                            }
                                        }
                                    
                                }.padding(5.0)
                                
                            }
                        }
                    }
                    if isTextExpanded11 {
                        Image(systemName: "arrow.down")
                        
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack (spacing: 1){
                                MyViewBuilder(title: Text("14"), content: Text("""
                        **ЧСС более 120 уд/мин**
                        """)).buildGrayInText()
                                HStack {
                                    MyViewBuilder(title: Text("14"), content: Text("""
                        **Да**
                        """)).buildGreen1Text(isTextExpanded: isTextExpanded9)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded9.toggle()
                                                if isTextExpanded8 == true {
                                                    isTextExpanded8.toggle()
                                                }
                                            }
                                        }
                                    MyViewBuilder(title: Text("14"), content: Text("""
                        **Нет**
                        """)).buildGreen1Text(isTextExpanded: isTextExpanded8)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded8.toggle()
                                                if isTextExpanded9 == true {
                                                    isTextExpanded9.toggle()
                                                }
                                            }
                                        }
                                    
                                }
                                .padding(5)
                            }
                        }
                        
                    }
                    if isTextExpanded6 {
                        Image(systemName: "arrow.down")
                        
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack (spacing: 1){
                                MyViewBuilder(title: Text("14"), content: Text("""
                        **ЧСС более 120 уд/мин**
                        """)).buildGrayInText()
                                HStack {
                                    MyViewBuilder(title: Text("14"), content: Text("""
                        **Да**
                        """)).buildGreen1Text(isTextExpanded: isTextExpanded9)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded9.toggle()
                                                if isTextExpanded8 == true {
                                                    isTextExpanded8.toggle()
                                                }
                                            }
                                        }
                                    MyViewBuilder(title: Text("14"), content: Text("""
                        **Нет**
                        """)).buildGreen1Text(isTextExpanded: isTextExpanded8)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded8.toggle()
                                                if isTextExpanded9 == true {
                                                    isTextExpanded9.toggle()
                                                }
                                            }
                                        }
                                    
                                }
                                .padding(5)
                            }
                        }
                        
                    }
                    if isTextExpanded7 {
                        Image(systemName: "arrow.down")
                        
                        MyViewBuilder(title: Text("14"), content: Text("""
                    **Прокаинамид 10 % – 5-10 мл в 0,9% растворе натрия хлорида в/в медленно под контролем АД** (возможно **в одном шприце с 1% раствором фенилэфрина 0,1-0,3-0,5мл**) или в/в **верапамил 2-4 мл 0,25%** раствора **при наличии медицинского документа об эффективности** последнего препарата
                    """)).buildGrayText()
                        Image(systemName: "arrow.down")
                        
                        MyViewBuilder(title: Text("14"), content: Text("""
                    **Доставка в стационар** по профилю заболевания
                    """)).buildGrayText()
                    }
                    if isTextExpanded8 {
                        Image(systemName: "arrow.down")
                        
                        MyViewBuilder(title: Text("14"), content: Text("""
                    **Доставка в стационар** по профилю заболевания
                    """)).buildGrayText()
                    }
                    if isTextExpanded9 {
                        Image(systemName: "arrow.down")
                        
                        MyViewBuilder(title: Text("14"), content: Text("""
                    **1 мл – 0,025% раствора дигоксина в 20 мл 0,9% раствора натрия хлорида в/в струйно**
                    """)).buildGrayText()
                        Image(systemName: "arrow.down")
                        
                        MyViewBuilder(title: Text("14"), content: Text("""
                    **Доставка в стационар** по профилю заболевания
                    """)).buildGrayText()
                    }
                    
                    
                }
                    Spacer(minLength: 30)
                    HStack {
                        ForEach(0..<14) { _ in
                            Image(systemName: "minus")
                        }
                    }
                    
                    Image(systemName: "minus")
                    MyViewBuilder(title: Text("""
                                              **Примечание**.
                                              """),
                                  content: Text("""
                                                **Противопоказания к восстановлению синусового ритма на догоспитальном этапе**:.
                                                
                                                - **впервые выявленный пароксизм** мерцательной аритмии;
                                                - **длительность пароксизма** мерцания предсердий **более суток**;
                                                - **доказанная дилатация левого предсердия** (передне-задний размер 4,5 см по данным эхокардиографии);
                                                - **наличие тромбов в предсердиях** и **тромбоэмболические осложнения в анамнезе**;
                                                - **развитие пароксизма на фоне выраженных электролитных нарушений**;
                                                - **декомпенсация тиреотоксикоза**.
                                                """)).buildGrayInAndHiddenBlock()
                    
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
                    Text("Алгоритм 14")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Пароксизмальная мерцательная аритмия»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg14"), title: "Алгоритм 14")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}


#Preview {
    Prikaz1030Alg14View()
}
