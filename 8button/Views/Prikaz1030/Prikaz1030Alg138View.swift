//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg38View: View {
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
                    
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack {
                            MyViewBuilder(title: Text("38"), content: Text("""
                            **Дифференциальный диагноз**:
                            """)).buildGrayInText()
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded71.toggle()
                                    }
                                }
                            if isTextExpanded71{
                                MyViewBuilder(title: Text("38"), content: Text("""
                            - инфаркт миокарда,
                            - пневмония,
                            - кетоацидоз,
                            - неврологические боли,
                            - у женщин учитывать гинекологический анамнез
                            """)).buildGrayInHiddenText()
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded71.toggle()
                                        }
                                    }
                                
                            }
                            HStack {
                                MyViewBuilder(title: Text("38"), content: Text("""
                                **Совпадения есть**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded1)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded1.toggle()
                                            if isTextExpanded71 == true {
                                                isTextExpanded71.toggle()
                                            }
                                            if isTextExpanded1 == false && isTextExpanded2 == false {
                                                isTextExpanded71.toggle()
                                            }
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
                                MyViewBuilder(title: Text("38"), content: Text("""
                                **Совпадений нет**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded2)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded2.toggle()
                                            if isTextExpanded71 == true {
                                                isTextExpanded71.toggle()
                                            }
                                            if isTextExpanded1 == false && isTextExpanded2 == false {
                                                isTextExpanded71.toggle()
                                            }
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
                            
                        }
                        .padding(5)
                    }
                    
                    if isTextExpanded1{
                        Image(systemName: "arrow.down")
                           
                        
                        MyViewBuilder(title: Text("38"), content: Text("""
                                Неотложная помощь **в соответствии с выявленной патологией** (см. соответствующие алгоритмы)
                                """)).buildGrayText()
                    }
                    if isTextExpanded2{
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("38"), content: Text("""
                                **Возможные причины боли в животе**:
                                """)).buildGrayInText()
                                VStack {
                                    MyViewBuilder(title: Text("38"), content: Text("""
                                    **Воспалительные заболевания: аппендицит, холецистит, панкреатит, дивертикулит**
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded3)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded3.toggle()
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
                                                if isTextExpanded8 == false {
                                                    isTextExpanded8.toggle()
                                                }
                                                if isTextExpanded3 == false && isTextExpanded4 == false && isTextExpanded5 == false && isTextExpanded6 == false && isTextExpanded7 == false {
                                                    isTextExpanded8.toggle()
                                                }
                                                
                                                
                                            }
                                        }
                                    MyViewBuilder(title: Text("38"), content: Text("""
                                    **Перфорация язвы, перфорация кишеника**
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded4)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded4.toggle()
                                                if isTextExpanded1 == true {
                                                    isTextExpanded1.toggle()
                                                }
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
                                                if isTextExpanded8 == false {
                                                    isTextExpanded8.toggle()
                                                }
                                                if isTextExpanded3 == false && isTextExpanded4 == false && isTextExpanded5 == false && isTextExpanded6 == false && isTextExpanded7 == false {
                                                    isTextExpanded8.toggle()
                                                }
                                                
                                            }
                                        }
                                    MyViewBuilder(title: Text("38"), content: Text("""
                                    **Мезотромбозы, острая кишечная непроходимость**
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded5)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded5.toggle()
                                                if isTextExpanded1 == true {
                                                    isTextExpanded1.toggle()
                                                }
                                                if isTextExpanded3 == true {
                                                    isTextExpanded3.toggle()
                                                }
                                                if isTextExpanded4 == true {
                                                    isTextExpanded4.toggle()
                                                }
                                                if isTextExpanded6 == true {
                                                    isTextExpanded6.toggle()
                                                }
                                                if isTextExpanded7 == true {
                                                    isTextExpanded7.toggle()
                                                }
                                                if isTextExpanded8 == false {
                                                    isTextExpanded8.toggle()
                                                }
                                                if isTextExpanded3 == false && isTextExpanded4 == false && isTextExpanded5 == false && isTextExpanded6 == false && isTextExpanded7 == false {
                                                    isTextExpanded8.toggle()
                                                }
                                                
                                                
                                            }
                                        }
                                    MyViewBuilder(title: Text("38"), content: Text("""
                                    **Разрывы паренхиматозных органов**
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded6)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded6.toggle()
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
                                                if isTextExpanded7 == true {
                                                    isTextExpanded7.toggle()
                                                }
                                                if isTextExpanded8 == false {
                                                    isTextExpanded8.toggle()
                                                }
                                                if isTextExpanded3 == false && isTextExpanded4 == false && isTextExpanded5 == false && isTextExpanded6 == false && isTextExpanded7 == false {
                                                    isTextExpanded8.toggle()
                                                }
                                                
                                                
                                            }
                                        }
                                    MyViewBuilder(title: Text("38"), content: Text("""
                                    **Колика почечная, печеночная, кишечная**
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded7)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded7.toggle()
                                                
                                                if isTextExpanded1 == true {
                                                    isTextExpanded1.toggle()
                                                }
                                                if isTextExpanded3 == true {
                                                    isTextExpanded3.toggle()
                                                }
                                                if isTextExpanded4 == true {
                                                    isTextExpanded4.toggle()
                                                }
                                                if isTextExpanded6 == true {
                                                    isTextExpanded6.toggle()
                                                }
                                                if isTextExpanded5 == true {
                                                    isTextExpanded5.toggle()
                                                }
                                                if isTextExpanded8 == false {
                                                    isTextExpanded8.toggle()
                                                }
                                                if isTextExpanded3 == false && isTextExpanded4 == false && isTextExpanded5 == false && isTextExpanded6 == false && isTextExpanded7 == false {
                                                    isTextExpanded8.toggle()
                                                }
                                            }
                                        }
                                    
                                }
                            }
                            .padding(5)
                        }
                    }
                    if isTextExpanded3{
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("38"), content: Text("""
                                **Анамнез**:
                                """)).buildGrayInText()
                                MyViewBuilder(title: Text("38"), content: Text("""
                                - нарастание боли, связь с приемом пищи,
                                - изменение характера боли, постепенное нарастание,
                                - рвота,
                                - понос
                                """)).buildGrayInHiddenText()
                                
                            }
                            .padding(5)
                        }
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("38"), content: Text("""
                                **Объективный статус**:
                                """)).buildGrayInText()
                                MyViewBuilder(title: Text("38"), content: Text("""
                                - повышение температуры тела,
                                - симптомы раздражения брюшины,
                                - специфические симптомы
                                """)).buildGrayInHiddenText()
                                
                            }
                            .padding(5)
                        }
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("38"), content: Text("""
                                **Тактика**:
                                """)).buildGrayInText()
                                MyViewBuilder(title: Text("38"), content: Text("""
                                **Доставка в стационар** по профилю заболевания,
                                **при перитоните – контроль вены**
                                """)).buildGrayInHiddenText()
                                
                            }
                            .padding(5)
                        }
                        
                    }
                    if isTextExpanded4{
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("38"), content: Text("""
                                **Анамнез**:
                                """)).buildGrayInText()
                                MyViewBuilder(title: Text("38"), content: Text("""
                                - внезапная боль,
                                - **язвенная болезнь в анамнезе**
                                """)).buildGrayInHiddenText()
                                
                            }
                            .padding(5)
                        }
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("38"), content: Text("""
                                **Объективный статус**:
                                """)).buildGrayInText()
                                MyViewBuilder(title: Text("38"), content: Text("""
                                 - ↑ЧСС, ↓АД,
                                - дефанс,
                                - исчезновение печеночной тупости,
                                - бледность
                                """)).buildGrayInHiddenText()
                                
                            }
                            .padding(5)
                        }
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("38"), content: Text("""
                                **Тактика**:
                                """)).buildGrayInText()
                                MyViewBuilder(title: Text("38"), content: Text("""
                                **Доставка в стационар** по профилю основного заболевания, **контроль вены**
                                """)).buildGrayInHiddenText()
                                
                            }
                            .padding(5)
                        }
                        
                    }
                    if isTextExpanded5{
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("38"), content: Text("""
                                **Анамнез**:
                                """)).buildGrayInText()
                                MyViewBuilder(title: Text("38"), content: Text("""
                                - диффузная блуждающая боль, эпизоды сильной кратковременной,
                                - эпизоды потери сознания.
                                - в анамнезе **ИБС, ХРБС, МА, АГ**
                                """)).buildGrayInHiddenText()
                                
                            }
                            .padding(5)
                        }
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("38"), content: Text("""
                                **Объективный статус**:
                                """)).buildGrayInText()
                                MyViewBuilder(title: Text("38"), content: Text("""
                                - **исчезновение перистальтики**
                                """)).buildGrayInHiddenText()
                                
                            }
                            .padding(5)
                        }
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("38"), content: Text("""
                                **Тактика**:
                                """)).buildGrayInText()
                                MyViewBuilder(title: Text("38"), content: Text("""
                                **Доставка в стационар** по профилю основного заболевания
                                """)).buildGrayInHiddenText()
                                
                            }
                            .padding(5)
                        }
                        
                    }
                    if isTextExpanded6{
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("38"), content: Text("""
                                **Анамнез**:
                                """)).buildGrayInText()
                                MyViewBuilder(title: Text("38"), content: Text("""
                                - травма
                                """)).buildGrayInHiddenText()
                                
                            }
                            .padding(5)
                        }
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("38"), content: Text("""
                                **Объективный статус**:
                                """)).buildGrayInText()
                                MyViewBuilder(title: Text("38"), content: Text("""
                                - ↑ЧСС, ↓АД,
                                - бледность, пот,
                                - симптом **«Ваньки-встаньки»**
                                """)).buildGrayInHiddenText()
                                
                            }
                            .padding(5)
                        }
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("38"), content: Text("""
                                **Тактика**:
                                """)).buildGrayInText()
                                MyViewBuilder(title: Text("38"), content: Text("""
                                **Оксигенотерапия, в/в инфузия**.
                                **Доставка в стационар** по профилю заболевания
                                """)).buildGrayInHiddenText()
                                
                            }
                            .padding(5)
                        }
                        
                    }
                    if isTextExpanded7{
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("38"), content: Text("""
                                **Анамнез**:
                                """)).buildGrayInText()
                                MyViewBuilder(title: Text("38"), content: Text("""
                                - приступообразная внезапная боль.
                                - в анамнезе **ЖКБ, МКБ, колит**.
                                """)).buildGrayInHiddenText()
                                
                            }
                            .padding(5)
                        }
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("38"), content: Text("""
                                **Объективный статус**:
                                """)).buildGrayInText()
                                MyViewBuilder(title: Text("38"), content: Text("""
                                - **нет симптомов раздражения брюшины**
                                """)).buildGrayInHiddenText()
                                
                            }
                            .padding(5)
                        }
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("38"), content: Text("""
                                **Тактика**:
                                """)).buildGrayInText()
                                MyViewBuilder(title: Text("38"), content: Text("""
                                **Дротаверин 2-4 мл** в/в.
                                **Доставка в стационар** для исключения острой хирургической патологии.
                                """)).buildGrayInHiddenText()
                                
                            }
                            .padding(5)
                        }
                        
                    }
                    if isTextExpanded8{
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("38"), content: Text("""
                        **При тяжелом состоянии, нестабильной гемодинамике** см. алгоритм 5 «Гиповолемический шок»,
                        **симптоматическое лечение**
                        **(при выраженном болевом синдроме обезболивание вплоть до наркотических анальгетиков)**
                        """)).buildGrayInHiddenText()
                                NavigationLink (destination: Prikaz1030Alg5View()) {
                                    MyViewBuilder(title: Text("38"), content: Text("Алгоритм 5 «Гиповолемический шок»")).buildNavigationText()
                                }
                            }
                            .padding(5)
                        }
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
                            MyViewBuilder(title: Text("14"), content: Text("""
                            **Примечание**.
                            """)).buildGrayInText()
                            MyViewBuilder(title: Text("14"), content: Text("""
                                    ЭКГ-диагностика обязательна.
                                    """)).buildGrayInHiddenText()
                        }
                        .padding(5.0)
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
                    Text("Алгоритм 38")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Острая хирургическая патология органов брюшной полости»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg38"), title: "Алгоритм 38")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}

#Preview {
    Prikaz1030Alg38View()
}
