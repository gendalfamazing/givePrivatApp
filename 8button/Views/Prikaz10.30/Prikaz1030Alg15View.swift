//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg115View: View {
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
                    MyViewBuilder(title: Text("15"), content: Text("""
                    Ангинозный приступ
                    """)).buildBlue1Text(isTextExpanded: isTextExpanded)
                        .onTapGesture {
                            withAnimation (.interpolatingSpring) {
                                isTextExpanded.toggle()
                                if isTextExpanded1 == true {
                                    isTextExpanded1.toggle()
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
                            }
                        }
                    if isTextExpanded {
                        HStack {
                            MyViewBuilder(title: Text("15"), content: Text("""
                            Характер ангинозного приступа
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded1)
                                .onTapGesture {
                                    withAnimation (.interpolatingSpring) {
                                        isTextExpanded1.toggle()
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
                                    }
                                }
                            
                            MyViewBuilder(title: Text("15"), content: Text("""
                            Прием **нитроглицерина**
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
                                    }
                                }
                        }
                        
                        if isTextExpanded1 {
                            MyViewBuilder(title: Text("15"), content: Text("""
                        **Аналогичные приступы возникали ранее при физической нагрузке** (быстрой ходьбе, подъеме на этаж), **купировались остановкой и (или) приемом нитроглицерина** (до 2-3 минут), **нет постоянных болевых ощущений, зависящих от позы, положения тела и дыхания**. Имеется отрицательная динамика переносимости физических нагрузок. Изучение медицинской документации.
                        """)).buildGrayText()
                            HStack {
                                MyViewBuilder(title: Text("15"), content: Text("""
                                **Да**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded3)
                                    .onTapGesture {
                                        withAnimation (.interpolatingSpring) {
                                            isTextExpanded3.toggle()
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
                        }
                        if isTextExpanded2 {
                            MyViewBuilder(title: Text("15"), content: Text("""
                        **Нитроглицерин 0,5 мг под язык** (под контролем АД), **ацетилсалицловая кислота 0,25 разжевать** и рассосать во рту
                        """)).buildGrayText()
                            
                            MyViewBuilder(title: Text("15"), content: Text("""
                                    **Купирован или нет эффекта**
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded11)
                                .onTapGesture {
                                    withAnimation (.interpolatingSpring) {
                                        isTextExpanded11.toggle()
                                        if isTextExpanded12 == true {
                                            isTextExpanded12.toggle()
                                        }
                                    }
                                }
                            
                        }
                        if isTextExpanded3 {
                            MyViewBuilder(title: Text("15"), content: Text("""
                            **Острый коронарный синдром**
                            """)).buildGrayText()
                            Image(systemName: "arrow.down")
                                .shadow(radius: 2)
                            MyViewBuilder(title: Text("15"), content: Text("""
                            Обеспечение **оксигенотерапии**, при необходимости – **респираторная поддержка**, ВИВЛ кислородом **50-100%**.
                            **Установка периферического катетера**, при необходимости – **двух**.
                            """)).buildGrayText()
                            Image(systemName: "arrow.down")
                                .shadow(radius: 2)
                            MyViewBuilder(title: Text("15"), content: Text("""
                            1) **Обезболивание (морфин 1 мл 1% раствора в 20 мл 0,9% раствора натрия хлорида внутривенно дробно до достижения эффекта или появления побочных эффектов** – гипотензии, рвоты, угнетения дыхания → налоксон 0,5 мл 0,5% раствора).
                            2) **нитроглицерин** (глицерил тринитрат, изосорбит динитрат) **10 мл 0,1% раствора в 200 мл 0,9% раствора натрия хлорида** в/в капельно **от 5 до 20 капель в минуту** под контролем АД **(при САД ≤ 90 мм рт. ст. инфузия прекращается)**.
                            """)).buildGrayText()
                            
                            HStack {
                                MyViewBuilder(title: Text("15"), content: Text("""
                                        Возможный **крупноочаговый инфаркт миокарда**
                                        """)).buildGreen1Text(isTextExpanded: isTextExpanded5)
                                    .onTapGesture {
                                        withAnimation (.interpolatingSpring) {
                                            isTextExpanded5.toggle()
                                            if isTextExpanded6 == true {
                                                isTextExpanded6.toggle()
                                            }
                                        }
                                    }
                                
                                MyViewBuilder(title: Text("15"), content: Text("""
                                        Возможный **мелкоочаговый ИМ или НС**
                                        """)).buildGreen1Text(isTextExpanded: isTextExpanded6)
                                    .onTapGesture {
                                        withAnimation (.interpolatingSpring) {
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
                                
                            }
                            if isTextExpanded5 {
                                MyViewBuilder(title: Text("15"), content: Text("""
                                **Оценить противопоказания к ТЛТ**:
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
                                """)).buildGrayText()
                                HStack {
                                    MyViewBuilder(title: Text("15"), content: Text("""
                                        Противопоказания **есть**
                                        """)).buildGreen1Text(isTextExpanded: isTextExpanded7)
                                        .onTapGesture {
                                            withAnimation (.interpolatingSpring) {
                                                isTextExpanded7.toggle()
                                                if isTextExpanded8 == true {
                                                    isTextExpanded8.toggle()
                                                }
                                            }
                                        }
                                    
                                    MyViewBuilder(title: Text("15"), content: Text("""
                                        Противопоказаний **нет**
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
                                    MyViewBuilder(title: Text("15"), content: Text("""
                                    **Гепарин в/в болюсом 4 000-5 000 МЕ на 10 мл 0,9% раствора натрия хлорида** или высокомолекулярные гепарины (надропарин 0,6 мл (5700 МЕ) подкожно)
                                    """)).buildGrayText()
                                    Image(systemName: "arrow.down")
                                        .shadow(radius: 2)
                                    MyViewBuilder(title: Text("15"), content: Text("""
                                    **При условии купирования болевого синдрома и осложнений доставка в стационар (ОИТАР, минуя приемное отделение)**
                                    """)).buildGrayText()
                                }
                                if isTextExpanded8 {
                                    MyViewBuilder(title: Text("15"), content: Text("""
                                    **Стрептокиназа** (альтеплаза, тенектеплаза) в/в капельно **в течение 30-60 минут 1,5 млн. МЕ**, **после введение 90 мг преднизолона** под контролем АД и **второй вены**
                                    """)).buildGrayText()
                                    Image(systemName: "arrow.down")
                                        .shadow(radius: 2)
                                    MyViewBuilder(title: Text("15"), content: Text("""
                                    **При условии купирования болевого синдрома и осложнений доставка в стационар (ОИТАР, минуя приемное отделение)**
                                    """)).buildGrayText()
                                }
                            }
                            if isTextExpanded6 {
                                MyViewBuilder(title: Text("15"), content: Text("""
                                **Гепарин в/в болюсом 4 000-5 000 МЕ на 10 мл 0,9% раствора натрия хлорида** или высокомолекулярные гепарины (надропарин 0,6 мл (5700 МЕ) подкожно)
                                """)).buildGrayText()
                                Image(systemName: "arrow.down")
                                    .shadow(radius: 2)
                                MyViewBuilder(title: Text("15"), content: Text("""
                                **При условии купирования болевого синдрома и осложнений доставка в стационар (ОИТАР, минуя приемное отделение)**
                                """)).buildGrayText()
                            }
                        }
                        if isTextExpanded4 {
                            MyViewBuilder(title: Text("15"), content: Text("""
                            **Провести дифференциальную диагностику с**:
                            - расслаивающей аневризмой аорты; - ТЭЛА;
                            - миокардитом;
                            - внебольничной пневмонией;
                            - плевритом;
                            - спонтанным пневмотораксом.
                            """)).buildGrayText()
                            HStack {
                                MyViewBuilder(title: Text("15"), content: Text("""
                                    Совпадения **есть**
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded9)
                                    .onTapGesture {
                                        withAnimation (.interpolatingSpring) {
                                            isTextExpanded9.toggle()
                                            if isTextExpanded10 == true {
                                                isTextExpanded10.toggle()
                                            }
                                        }
                                    }
                                
                                MyViewBuilder(title: Text("15"), content: Text("""
                                    Совпадений **нет**
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded10)
                                    .onTapGesture {
                                        withAnimation (.interpolatingSpring) {
                                            isTextExpanded10.toggle()
                                            if isTextExpanded9 == true {
                                                isTextExpanded9.toggle()
                                            }
                                        }
                                    }
                            }
                            if isTextExpanded9 {
                                MyViewBuilder(title: Text("15"), content: Text("""
                                Тактика в зависимости от выявленной патологии
                                """)).buildGrayText()
                            }
                            if isTextExpanded10 {
                                MyViewBuilder(title: Text("15"), content: Text("""
                                **Симптоматическое лечение**:
                                обезболивание в/в (**метамизол 2-3 мл 50% раствора с 1 мл 1% раствора
                                дифенгидрамина; кеторол 1 мл**).
                                """)).buildGrayText()
                                Image(systemName: "arrow.down")
                                    .shadow(radius: 2)
                                MyViewBuilder(title: Text("15"), content: Text("""
                                **Рекомендовать дообследование** в поликлинике по месту жительства
                                """)).buildGrayText()
                            }
                        }
                        
                        if isTextExpanded11 {
                            MyViewBuilder(title: Text("15"), content: Text("""
                        **ЭКГ-диагностика** (дистанционная консультация)
                        """)).buildGrayText()
                            Image(systemName: "arrow.down")
                                .shadow(radius: 2)
                            
                            
                            MyViewBuilder(title: Text("15"), content: Text("""
                                **Норма** или **отсутствие отрицательной динамики**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded13)
                                .onTapGesture {
                                    withAnimation (.interpolatingSpring) {
                                        isTextExpanded13.toggle()
                                        if isTextExpanded14 == true {
                                            isTextExpanded14.toggle()
                                        }
                                        
                                    }
                                }
                            if isTextExpanded13 {
                                MyViewBuilder(title: Text("15"), content: Text("""
                            **Рекомендовать консультацию участкового терапевта или кардиолога** для коррекции антиангинальной терапии
                            """)).buildGrayText()
                            }
                            
                            HStack {
                                MyViewBuilder(title: Text("15"), content: Text("""
                                    **Подъем сегмента ST**, остро возникшая **ПБЛНПГ**
                                                                             **или**
                                    **Депрессия ST, отрицательный зубец Т** и (или) **появление патологического зубца Q**
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded14)
                                    .onTapGesture {
                                        withAnimation (.interpolatingSpring) {
                                            isTextExpanded14.toggle()
                                            if isTextExpanded13 == true {
                                                isTextExpanded13.toggle()
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
                                            
                                        }
                                    }
                                
                                
                            }
                            if isTextExpanded14 {
                                MyViewBuilder(title: Text("15"), content: Text("""
                                **Острый коронарный синдром**
                                """)).buildGrayText()
                                Image(systemName: "arrow.down")
                                    .shadow(radius: 2)
                                MyViewBuilder(title: Text("15"), content: Text("""
                                Обеспечение **оксигенотерапии**, при необходимости – **респираторная поддержка**, ВИВЛ кислородом **50-100%**.
                                **Установка периферического катетера**, при необходимости – **двух**.
                                """)).buildGrayText()
                                Image(systemName: "arrow.down")
                                    .shadow(radius: 2)
                                MyViewBuilder(title: Text("15"), content: Text("""
                                1) **Обезболивание (морфин 1 мл 1% раствора в 20 мл 0,9% раствора натрия хлорида внутривенно дробно до достижения эффекта или появления побочных эффектов** – гипотензии, рвоты, угнетения дыхания → налоксон 0,5 мл 0,5% раствора).
                                2) **нитроглицерин** (глицерил тринитрат, изосорбит динитрат) **10 мл 0,1% раствора в 200 мл 0,9% раствора натрия хлорида** в/в капельно **от 5 до 20 капель в минуту** под контролем АД **(при САД ≤ 90 мм рт. ст. инфузия прекращается)**.
                                """)).buildGrayText()
                                
                                HStack {
                                    MyViewBuilder(title: Text("15"), content: Text("""
                                            Возможный **крупноочаговый инфаркт миокарда**
                                            """)).buildGreen1Text(isTextExpanded: isTextExpanded5)
                                        .onTapGesture {
                                            withAnimation (.interpolatingSpring) {
                                                isTextExpanded5.toggle()
                                                if isTextExpanded6 == true {
                                                    isTextExpanded6.toggle()
                                                }
                                            }
                                        }
                                    
                                    MyViewBuilder(title: Text("15"), content: Text("""
                                            Возможный **мелкоочаговый ИМ или НС**
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
                                if isTextExpanded5 {
                                    MyViewBuilder(title: Text("15"), content: Text("""
                                    **Оценить противопоказания к ТЛТ**:
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
                                    """)).buildGrayText()
                                    HStack {
                                        MyViewBuilder(title: Text("15"), content: Text("""
                                            Противопоказания **есть**
                                            """)).buildGreen1Text(isTextExpanded: isTextExpanded7)
                                            .onTapGesture {
                                                withAnimation (.interpolatingSpring) {
                                                    isTextExpanded7.toggle()
                                                    if isTextExpanded8 == true {
                                                        isTextExpanded8.toggle()
                                                    }
                                                }
                                            }
                                        
                                        MyViewBuilder(title: Text("15"), content: Text("""
                                            Противопоказаний **нет**
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
                                        MyViewBuilder(title: Text("15"), content: Text("""
                                        **Гепарин в/в болюсом 4 000-5 000 МЕ на 10 мл 0,9% раствора натрия хлорида** или высокомолекулярные гепарины (надропарин 0,6 мл (5700 МЕ) подкожно)
                                        """)).buildGrayText()
                                        Image(systemName: "arrow.down")
                                            .shadow(radius: 2)
                                        MyViewBuilder(title: Text("15"), content: Text("""
                                        **При условии купирования болевого синдрома и осложнений доставка в стационар (ОИТАР, минуя приемное отделение)**
                                        """)).buildGrayText()
                                    }
                                    if isTextExpanded8 {
                                        MyViewBuilder(title: Text("15"), content: Text("""
                                        **Стрептокиназа** (альтеплаза, тенектеплаза) в/в капельно **в течение 30-60 минут 1,5 млн. МЕ**, **после введение 90 мг преднизолона** под контролем АД и **второй вены**
                                        """)).buildGrayText()
                                        Image(systemName: "arrow.down")
                                            .shadow(radius: 2)
                                        MyViewBuilder(title: Text("15"), content: Text("""
                                        **При условии купирования болевого синдрома и осложнений доставка в стационар (ОИТАР, минуя приемное отделение)**
                                        """)).buildGrayText()
                                    }
                                }
                                if isTextExpanded6 {
                                    MyViewBuilder(title: Text("15"), content: Text("""
                                    **Гепарин в/в болюсом 4 000-5 000 МЕ на 10 мл 0,9% раствора натрия хлорида** или высокомолекулярные гепарины (надропарин 0,6 мл (5700 МЕ) подкожно)
                                    """)).buildGrayText()
                                    Image(systemName: "arrow.down")
                                        .shadow(radius: 2)
                                    MyViewBuilder(title: Text("15"), content: Text("""
                                    **При условии купирования болевого синдрома и осложнений доставка в стационар (ОИТАР, минуя приемное отделение)**
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
                    Text("Алгоритм 15")
                        .font(.headline)
                        .bold()
                    Text("«Острый коронарный синдром»")
                        .font(.caption2)
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
    Prikaz1030Alg115View()
}
