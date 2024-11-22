//
//  Prikaz1030Alg115View.swift
//  8button
//
//  Created by Artur Vladymcev on 9.01.24.
//

import SwiftUI

struct Prikaz1030Alg15View: View {
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
    
    @State private var isTextExpanded71 = false
    @State private var isTextExpanded72 = false
    @State private var isTextExpanded73 = false
    var body: some View {
            ScrollView {
                Spacer()
                VStack {
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack {
                            MyViewBuilder(title: Text("15"), content: Text("""
                    **Ангинозный приступ**
                    """)).buildGrayInText()
                            
                            HStack {
                                MyViewBuilder(title: Text("15"), content: Text("""
                            **Характер приступа**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded1)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded1.toggle()
                                            if isTextExpanded71 == false {
                                                isTextExpanded71.toggle()
                                            }
                                            if isTextExpanded10 == true {
                                                isTextExpanded10.toggle()
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
                                
                                MyViewBuilder(title: Text("15"), content: Text("""
                            **Прием нитроглицерина**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded2)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded2.toggle()
                                            if isTextExpanded71 == true {
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
                                            if isTextExpanded9 == true {
                                                isTextExpanded9.toggle()
                                            }
                                            if isTextExpanded10 == true {
                                                isTextExpanded10.toggle()
                                            }
                                            if isTextExpanded11 == true {
                                                isTextExpanded11.toggle()
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
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("15"), content: Text("""
                        **Аналогичные приступы возникали ранее**:
                        """)).buildGrayInText()
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded71.toggle()
                                            
                                        }
                                    }
                                if isTextExpanded71{
                                    Spacer(minLength: 1)
                                    MyViewBuilder(title: Text("15"), content: Text("""
                                - **при физической нагрузке** (быстрой ходьбе, подъеме на этаж),
                                - **купировались остановкой и (или) приемом нитроглицерина** (до 2-3 минут),
                                - **нет постоянных болевых ощущений, зависящих от позы, положения тела и дыхания**.
                                - Имеется отрицательная динамика переносимости физических нагрузок.
                                - Изучение медицинской документации.
                                """)).buildGrayInHiddenText()
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded71.toggle()
                                                
                                            }
                                        }
                                }
                                HStack {
                                    MyViewBuilder(title: Text("15"), content: Text("""
                                **Да**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded3)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded3.toggle()
                                                if isTextExpanded71 == true {
                                                    isTextExpanded71.toggle()
                                                }
                                                if isTextExpanded4 == false && isTextExpanded3 == false {
                                                    isTextExpanded71.toggle()
                                                }
                                                if isTextExpanded4 == true {
                                                    isTextExpanded4.toggle()
                                                }
                                                if isTextExpanded9 == true {
                                                    isTextExpanded9.toggle()
                                                }
                                                if isTextExpanded10 == true {
                                                    isTextExpanded10.toggle()
                                                }
                                            }
                                        }
                                    
                                    MyViewBuilder(title: Text("15"), content: Text("""
                                **Нет**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded4)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded4.toggle()
                                                if isTextExpanded71 == true {
                                                    isTextExpanded71.toggle()
                                                }
                                                if isTextExpanded72 == false {
                                                    isTextExpanded72.toggle()
                                                }
                                                if isTextExpanded4 == false && isTextExpanded3 == false {
                                                    isTextExpanded71.toggle()
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
                                                if isTextExpanded8 == true {
                                                    isTextExpanded8.toggle()
                                                }
                                                if isTextExpanded9 == true {
                                                    isTextExpanded9.toggle()
                                                }
                                                if isTextExpanded10 == true {
                                                    isTextExpanded10.toggle()
                                                }
                                            }
                                        }
                                }.padding(5).padding(.top, -10)
                            }
                        }
                    }
                    if isTextExpanded2 {
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("15"), content: Text("""
                        **Нитроглицерин 0,5 мг под язык** (под контролем АД), **ацетилсалицловая кислота 0,25 разжевать** и рассосать во рту
                        """)).buildGrayText()
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("15"), content: Text("""
                                    **Купирован или нет эффекта**
                                    """)).buildGrayTextCenter()
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("15"), content: Text("""
                        **ЭКГ-диагностика** (дистанционная консультация)
                        """)).buildGrayText()
                        Image(systemName: "arrow.down")
                           
                        
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("15"), content: Text("""
                                **Норма или отсутствие отрицательной динамики**:
                                """)).buildGrayInText()
                                
                                HStack {
                                    MyViewBuilder(title: Text("15"), content: Text("""
                                **Да**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded13)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded13.toggle()
                                                if isTextExpanded14 == true {
                                                    isTextExpanded14.toggle()
                                                }
                                                if isTextExpanded15 == true {
                                                    isTextExpanded15.toggle()
                                                }
                                            }
                                        }
                                    
                                    MyViewBuilder(title: Text("15"), content: Text("""
                                **Нет**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded14)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded14.toggle()
                                                if isTextExpanded13 == true {
                                                    isTextExpanded13.toggle()
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
                    if isTextExpanded14 {
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("15"), content: Text("""
                        **Подъем сегмента ST**, остро возникшая **ПБЛНПГ** или **Депрессия ST, отрицательный зубец Т** и (или) **появление патологического зубца Q**
                        """)).buildGrayInText()
                                
                                HStack {
                                    MyViewBuilder(title: Text("15"), content: Text("""
                                        **Да**
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
                                                if isTextExpanded8 == true {
                                                    isTextExpanded8.toggle()
                                                }
                                                if isTextExpanded9 == true {
                                                    isTextExpanded9.toggle()
                                                }
                                                if isTextExpanded10 == true {
                                                    isTextExpanded10.toggle()
                                                }
                                                if isTextExpanded15 == true {
                                                    isTextExpanded15.toggle()
                                                }
                                            }
                                        }
                                    
                                    MyViewBuilder(title: Text("15"), content: Text("""
                                        **Нет**
                                        """)).buildGreen1Text(isTextExpanded: isTextExpanded15)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded15.toggle()
                                                if isTextExpanded3 == true {
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
                                                    if isTextExpanded9 == true {
                                                        isTextExpanded9.toggle()
                                                    }
                                                    if isTextExpanded10 == true {
                                                        isTextExpanded10.toggle()
                                                    }
                                                }
                                            }
                                        }
                                    
                                }.padding(5).padding(.top, -10)
                                
                            }
                        }
                    }
                    
                    
                    
                    if isTextExpanded13 {
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("15"), content: Text("""
                    **Рекомендовать консультацию участкового терапевта или кардиолога** для коррекции антиангинальной терапии
                    """)).buildGrayText()
                    }
                    if isTextExpanded15 {
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("15"), content: Text("""
                    **Рекомендовать консультацию участкового терапевта или кардиолога** для коррекции антиангинальной терапии
                    """)).buildGrayText()
                    }
                    if isTextExpanded3 {
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("15"), content: Text("""
                            **Острый коронарный синдром**
                            """)).buildGrayTextCenter()
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("15"), content: Text("""
                            Обеспечение **оксигенотерапии**, при необходимости – **респираторная поддержка**, ВИВЛ кислородом **50-100%**.
                            **Установка периферического катетера**, при необходимости – **двух**.
                            """)).buildGrayText()
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("15"), content: Text("""
                            1) **Обезболивание (морфин 1 мл 1% раствора в 20 мл 0,9% раствора натрия хлорида внутривенно дробно до достижения эффекта или появления побочных эффектов** – гипотензии, рвоты, угнетения дыхания → налоксон 0,5 мл 0,5% раствора).
                            2) **нитроглицерин** (глицерил тринитрат, изосорбит динитрат) **10 мл 0,1% раствора в 200 мл 0,9% раствора натрия хлорида** в/в капельно **от 5 до 20 капель в минуту** под контролем АД **(при САД ≤ 90 мм рт. ст. инфузия прекращается)**.
                            """)).buildGrayInHiddenText().padding(.top, 5.0)
                                
                                HStack {
                                    MyViewBuilder(title: Text("15"), content: Text("""
                                        Возможный **крупноочаговый инфаркт миокарда**
                                        """)).buildGreen1Text(isTextExpanded: isTextExpanded5)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded5.toggle()
                                                if isTextExpanded73 == false {
                                                    isTextExpanded73.toggle()
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
                                    
                                    MyViewBuilder(title: Text("15"), content: Text("""
                                        Возможный **мелкоочаговый ИМ или НС**
                                        """)).buildGreen1Text(isTextExpanded: isTextExpanded6)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded6.toggle()
                                                if isTextExpanded5 == true {
                                                    isTextExpanded5.toggle()
                                                    if isTextExpanded7 == true {
                                                        isTextExpanded7.toggle()
                                                    }
                                                    if isTextExpanded8 == true {
                                                        isTextExpanded8.toggle()
                                                    }
                                                }
                                            }
                                        }
                                    
                                }.padding(5).padding(.top, -10)
                            }
                        }
                        
                    }
                    if isTextExpanded4 {
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("15"), content: Text("""
                            **Провести дифференциальную диагностику**:
                            """)).buildGrayInText()
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded72.toggle()
                                            
                                        }
                                    }
                                if isTextExpanded72 {
                                    Spacer(minLength: 1)
                                    MyViewBuilder(title: Text("15"), content: Text("""
                                    - расслаивающей аневризмой аорты;
                                    - ТЭЛА;
                                    - миокардитом;
                                    - внебольничной пневмонией;
                                    - плевритом;
                                    - спонтанным пневмотораксом.
                                    """)).buildGrayInHiddenText()
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded72.toggle()
                                                
                                            }
                                        }
                                }
                                HStack {
                                    MyViewBuilder(title: Text("15"), content: Text("""
                                    **Совпадения есть**
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded9)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded9.toggle()
                                                if isTextExpanded72 == true {
                                                    isTextExpanded72.toggle()
                                                }
                                                if isTextExpanded9 == false && isTextExpanded10 == false {
                                                    isTextExpanded72.toggle()
                                                }
                                                if isTextExpanded10 == true {
                                                    isTextExpanded10.toggle()
                                                }
                                            }
                                        }
                                    
                                    MyViewBuilder(title: Text("15"), content: Text("""
                                    **Совпадений нет**
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded10)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded10.toggle()
                                                if isTextExpanded72 == true {
                                                    isTextExpanded72.toggle()
                                                }
                                                if isTextExpanded9 == false && isTextExpanded10 == false {
                                                    isTextExpanded72.toggle()
                                                }
                                                if isTextExpanded9 == true {
                                                    isTextExpanded9.toggle()
                                                }
                                            }
                                        }
                                }.padding(5).padding(.top, -10)
                            }
                        }
                        
                    }
                    if isTextExpanded5 {
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("15"), content: Text("""
                        **Оценить противопоказания к ТЛТ**:
                        """)).buildGrayInText()
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded73.toggle()
                                            
                                        }
                                    }
                                if isTextExpanded73{
                                    Spacer(minLength: 1)
                                    MyViewBuilder(title: Text("15"), content: Text("""
                                - внутренние кровотечения, оперативные вмешательства, травмы **(до 14 дней)**;
                                - ОНМК, травмы, оперативные вмешательства на головном мозге **(в течение года)**;
                                - острая хирургическая патология;
                                - аневризмы сосудов;
                                - патология свертывающей системы крови;
                                - прием антикоагулянтов;
                                - постреанимационный период;
                                - повторное введении стрептокиназы **(до 2 лет)**;
                                - терминальная стадия хронических заболеваний, в том числе онкозаболеваний;
                                - АД больше **180/100 мм рт. ст**.
                                """)).buildGrayInHiddenText()
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded73.toggle()
                                                
                                            }
                                        }
                                }
                                HStack {
                                    MyViewBuilder(title: Text("15"), content: Text("""
                                **Есть**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded7)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded7.toggle()
                                                if isTextExpanded73 == true {
                                                    isTextExpanded73.toggle()
                                                }
                                                if isTextExpanded7 == false && isTextExpanded8 == false {
                                                    isTextExpanded73.toggle()
                                                }
                                                if isTextExpanded8 == true {
                                                    isTextExpanded8.toggle()
                                                }
                                            }
                                        }
                                    
                                    MyViewBuilder(title: Text("15"), content: Text("""
                                **Нет**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded8)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded8.toggle()
                                                if isTextExpanded73 == true {
                                                    isTextExpanded73.toggle()
                                                }
                                                if isTextExpanded7 == false && isTextExpanded8 == false {
                                                    isTextExpanded73.toggle()
                                                }
                                                if isTextExpanded7 == true {
                                                    isTextExpanded7.toggle()
                                                }
                                            }
                                        }
                                    
                                }.padding(5).padding(.top, -10)
                            }
                        }
                    }
                    if isTextExpanded6 {
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("15"), content: Text("""
                        **Гепарин в/в болюсом 4 000-5 000 МЕ на 10 мл 0,9% раствора натрия хлорида** или высокомолекулярные гепарины (надропарин 0,6 мл (5700 МЕ) подкожно)
                        """)).buildGrayText()
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("15"), content: Text("""
                        **При условии купирования болевого синдрома и осложнений доставка в стационар (ОИТАР, минуя приемное отделение)**
                        """)).buildGrayText()
                    }
                    if isTextExpanded7 {
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("15"), content: Text("""
                        **Гепарин в/в болюсом 4 000-5 000 МЕ на 10 мл 0,9% раствора натрия хлорида** или высокомолекулярные гепарины (надропарин 0,6 мл (5700 МЕ) подкожно)
                        """)).buildGrayText()
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("15"), content: Text("""
                        **При условии купирования болевого синдрома и осложнений доставка в стационар (ОИТАР, минуя приемное отделение)**
                        """)).buildGrayText()
                    }
                    if isTextExpanded8 {
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("15"), content: Text("""
                        **Стрептокиназа** (альтеплаза, тенектеплаза) в/в капельно **в течение 30-60 минут 1,5 млн. МЕ**, **после введение 90 мг преднизолона** под контролем АД и **второй вены**
                        """)).buildGrayText()
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("15"), content: Text("""
                        **При условии купирования болевого синдрома и осложнений доставка в стационар (ОИТАР, минуя приемное отделение)**
                        """)).buildGrayText()
                    }
                    
                    if isTextExpanded9 {
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("15"), content: Text("""
                        Тактика в зависимости от выявленной патологии
                        """)).buildGrayText()
                    }
                    if isTextExpanded10 {
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("15"), content: Text("""
                        **Симптоматическое лечение**:
                        обезболивание в/в (**метамизол 2-3 мл 50% раствора с 1 мл 1% раствора
                        дифенгидрамина; кеторол 1 мл**).
                        """)).buildGrayText()
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("15"), content: Text("""
                        **Рекомендовать дообследование** в поликлинике по месту жительства
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
                    Text("Алгоритм 15")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Острый коронарный синдром»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg15"), title: "Алгоритм 15")){
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}

#Preview {
    Prikaz1030Alg15View()
}

struct Prikaz1030Alg15ViewFavorites: View {
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
        return favoritesManager.favorites.contains { $0.viewIdentifier == "Алгоритм 15. «Острый коронарный синдром»" }
    }
    
    func addToFavorites() {
        let newItem = FavoriteItem(name: "Приказ №1030", viewIdentifier: "Алгоритм 15. «Острый коронарный синдром»", isExpanded: false, isNavigationLink: true)
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
        if let item = favoritesManager.favorites.first(where: { $0.viewIdentifier == "Алгоритм 15. «Острый коронарный синдром»" }) {
            favoritesManager.removeItem(item)
        }
    }
    

    var body: some View {
        VStack {
            NavigationLink(destination: Prikaz1030Alg15View()) {
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
