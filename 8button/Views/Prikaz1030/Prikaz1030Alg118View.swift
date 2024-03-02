//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg18View: View {
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
                VStack{
                    
                            MyViewBuilder(title: Text("""
                                                      **Факторы риска**:
                                                      """),
                                          content: Text("""
                                                        - тромбофлебит;
                                                        - длительная иммобилизация;
                                                        - послеоперационный период;
                                                        - онкозаболевания;
                                                        - беременность и роды.
                                                        - БСК (сердечная недостаточность, мерцательная аритмия, пороки сердца);
                                                        - пожилой возраст;
                                                        - «лежачие» больные.
                                                        """)).buildGrayInAndHiddenBlock()
                           
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack (spacing: 1){
                            MyViewBuilder(title: Text("""
                                                      **Клинические признаки**:
                                                      """),
                                          content: Text("""
                                                        - **внезапная «тихая» одышка**;
                                                        - **цианоз кожных покровов**;
                                                        - **тахикардия**;
                                                        - **артериальная гипотензия**;
                                                        - может быть боль в грудной клетке, повышение температуры тела, рвота, судороги, потеря сознания.
                                                        """)).buildGrayInAndHiddenBlockWithBlueButtons()
                            
                            HStack {
                                MyViewBuilder(title: Text("18"), content: Text("""
                            **Признаки ОДН**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded1)
                                    .onTapGesture {
                                        withAnimation (.interpolatingSpring) {
                                            isTextExpanded1.toggle()
                                            
                                            if isTextExpanded2 == true {
                                                isTextExpanded2.toggle()
                                            }
                                        }
                                    }
                                
                                MyViewBuilder(title: Text("17"), content: Text("""
                            **Признаки кардиогенного шока**
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
                            
                        }
                        .padding(5)
                    }
                    if isTextExpanded1 {
                        Image(systemName: "arrow.down")
                           
                        NavigationLink (destination: Prikaz1030Alg3View()) {
                            MyViewBuilder(title: Text("18"), content: Text("Алгоритм 3 «Острая дыхательная недостаточность»")).buildNavigationText()
                        }
                    }
                    if isTextExpanded2 {
                        Image(systemName: "arrow.down")
                           
                        NavigationLink (destination: Prikaz1030Alg16View()) {
                            MyViewBuilder(title: Text("18"), content: Text("Алгоритм 16 «Кардиогенный шок»")).buildNavigationText()
                        }
                    }
                    Image(systemName: "arrow.down")
                       
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack (spacing: 1){
                            MyViewBuilder(title: Text("18"), content: Text("""
                        1) **Установка катетера** в периферическую и (или) центральную вену.
                        
                        2) **ЭКГ мониторинг**:
                        - возможно появление **только блокады правой ножки пучка Гиса**;
                        - патологический **зубец S в I и Q в III** отведениях;
                        - поворот **ЭОС вправо**: глубокий S в I, V1-
                        V6 или по типу **S I – S II – S III**.
                        """)).buildGrayInHiddenText()
                            
                            HStack {
                                
                                MyViewBuilder(title: Text("18"), content: Text("""
                            **Массивная ТЭЛА**
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
                                            if isTextExpanded8 == true {
                                                isTextExpanded8.toggle()
                                            }
                                        }
                                    }
                                MyViewBuilder(title: Text("18"), content: Text("""
                            **Среднетяж. форма – инфаркт легкого**
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
                                            if isTextExpanded8 == true {
                                                isTextExpanded8.toggle()
                                            }
                                        }
                                    }
                            }
                            HStack {
                                MyViewBuilder(title: Text("18"), content: Text("""
                            **Умеренная и малая эмболия**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded5)
                                    .onTapGesture {
                                        withAnimation (.interpolatingSpring) {
                                            isTextExpanded5.toggle()
                                            if isTextExpanded4 == true {
                                                isTextExpanded4.toggle()
                                            }
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
                                MyViewBuilder(title: Text("18"), content: Text("""
                            **Рецидивирующая ТЭЛА мелких ветвей**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded6)
                                    .onTapGesture {
                                        withAnimation (.interpolatingSpring) {
                                            isTextExpanded6.toggle()
                                            if isTextExpanded4 == true {
                                                isTextExpanded4.toggle()
                                            }
                                            if isTextExpanded5 == true {
                                                isTextExpanded5.toggle()
                                            }
                                            if isTextExpanded3 == true {
                                                isTextExpanded3.toggle()
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
                    
                    if isTextExpanded3 {
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("18"), content: Text("""
                            **Быстро прогрессирующий цианоз верхней половины тела с выраженной гипотензией**, часто – синкопе, набухание шейных вен
                            """)).buildGrayText()
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack (spacing: 1){
                                MyViewBuilder(title: Text("18"), content: Text("""
                            **При стойкой артериальной гипотензии** (САД **менее 90 мм.рт.ст.**) или **прогрессирующем падении САД** и быстром **прогрессировании симптомов ТЭЛА** при отсутствии противопоказаний **показано проведение тромболизиса** (в условиях реанимобиля)
                            """)).buildGrayInHiddenText()
                                MyViewBuilder(title: Text("18"), content: Text("""
                                    **САД менее 90 мм.рт.ст.**:
                                    """)).buildGrayInText()
                                HStack {
                                    MyViewBuilder(title: Text("18"), content: Text("""
                                **Да**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded7)
                                        .onTapGesture {
                                            withAnimation (.interpolatingSpring) {
                                                isTextExpanded7.toggle()
                                                if isTextExpanded8 == true {
                                                    isTextExpanded8.toggle()
                                                }
                                            }
                                        }
                                    MyViewBuilder(title: Text("18"), content: Text("""
                                **Нет**
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
                            }
                            .padding(5)
                        }
                    }
                    if isTextExpanded4 {
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("18"), content: Text("""
                            **Характерны боли плеврального характера, кашель с кровохарканьем,
                            аускультативно – хрипы, шум трения плевры**
                            """)).buildGrayText()
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack (spacing: 1){
                                MyViewBuilder(title: Text("18"), content: Text("""
                                    **При стойкой артериальной гипотензии** (САД **менее 90 мм.рт.ст.**) или **прогрессирующем падении САД** и быстром **прогрессировании симптомов ТЭЛА** при отсутствии противопоказаний **показано проведение тромболизиса** (в условиях реанимобиля)
                                    """)).buildGrayInHiddenText()
                                MyViewBuilder(title: Text("18"), content: Text("""
                                            **САД менее 90 мм.рт.ст.**:
                                            """)).buildGrayInText()
                                HStack {
                                    MyViewBuilder(title: Text("18"), content: Text("""
                                        **Да**
                                        """)).buildGreen1Text(isTextExpanded: isTextExpanded7)
                                        .onTapGesture {
                                            withAnimation (.interpolatingSpring) {
                                                isTextExpanded7.toggle()
                                                if isTextExpanded8 == true {
                                                    isTextExpanded8.toggle()
                                                }
                                            }
                                        }
                                    MyViewBuilder(title: Text("18"), content: Text("""
                                        **Нет**
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
                            }
                            .padding(5)
                        }
                    }
                    if isTextExpanded5 {
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("18"), content: Text("""
                            **Тахикардия в покое, может быть стабильная гемодинамика**
                            """)).buildGrayText()
                        Image(systemName: "arrow.down")
                        MyViewBuilder(title: Text("""
                                                  **Неотложная помощь**:
                                                  """),
                                      content: Text("""
                                                    1) **оксигенотерапия**, при необходимости **ВИВЛ 50-100% O2**;
                                                    2) **обезболивание наркотическими анальгетиками (морфин 1% - 1 мл, фентанил 0,005% - 1 мл) в/в**;
                                                    3) при **бронхоспазме** – раствор **аминофиллина 2,4% – 10 мл в 10 мл 0,9% раствора хлорида натрия** в/в (допустимо);
                                                    4) **гепарин 5 000-10 000 ЕД в/в в 20 мл 0,9% раствора хлорида натрия**.
                                                    """)).buildGrayInAndHiddenBlock()
                        
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("18"), content: Text("""
                            **Доставка в стационар** по профилю основного заболевания
                            """)).buildGrayText()
                        //like a 8
                    }
                    if isTextExpanded6 {
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("18"), content: Text("""
                            **Повторные внезапные приступы удушья, синкопе, «атипичная» стенокардия**
                            """)).buildGrayText()
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("""
                                                  **Неотложная помощь**:
                                                  """),
                                      content: Text("""
                                                    1) **оксигенотерапия**, при необходимости **ВИВЛ 50-100% O2**;
                                                    2) **обезболивание наркотическими анальгетиками (морфин 1% - 1 мл, фентанил 0,005% - 1 мл) в/в**;
                                                    3) при **бронхоспазме** – раствор **аминофиллина 2,4% – 10 мл в 10 мл 0,9% раствора хлорида натрия** в/в (допустимо);
                                                    4) **гепарин 5 000-10 000 ЕД в/в в 20 мл 0,9% раствора хлорида натрия**.
                                                    """)).buildGrayInAndHiddenBlock()
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("18"), content: Text("""
                            **Доставка в стационар** по профилю основного заболевания
                            """)).buildGrayText()
                        //like a 8
                    }
                    if isTextExpanded7 {
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("18"), content: Text("""
                            **250 000 ЕД стрептокиназы на 200 мл 0,9% раствора натрия хлорида** в/в капельно **за 30 минут** под контролем АД (**параллельно проводить коррекцию гемодинамики допамином**)
                            """)).buildGrayText()
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("18"), content: Text("""
                            **Доставка в стационар** по профилю основного заболевания
                            (в ОИТАР, минуя приемное отделение)
                            """)).buildGrayText()
                    }
                    if isTextExpanded8 {
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("""
                                                  **Неотложная помощь**:
                                                  """),
                                      content: Text("""
                                                    1) **оксигенотерапия**, при необходимости **ВИВЛ 50-100% O2**;
                                                    2) **обезболивание наркотическими анальгетиками (морфин 1% - 1 мл, фентанил 0,005% - 1 мл) в/в**;
                                                    3) при **бронхоспазме** – раствор **аминофиллина 2,4% – 10 мл в 10 мл 0,9% раствора хлорида натрия** в/в (допустимо);
                                                    4) **гепарин 5 000-10 000 ЕД в/в в 20 мл 0,9% раствора хлорида натрия**.
                                                    """)).buildGrayInAndHiddenBlock()
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("18"), content: Text("""
                            **Доставка в стационар** по профилю основного заболевания
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
                    Text("Алгоритм 18")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Тромбоэмболия легочной артерии»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg18"), title: "Алгоритм 18")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}

#Preview {
    Prikaz1030Alg18View()
}
