//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct _7Infusomat: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    
    @State private var isTextExpanded1 = false
    @State private var isTextExpanded2 = false
    @State private var isTextExpanded3 = false
    @State private var isTextExpanded4 = false
    @State private var isTextExpanded5 = true
    @State private var isTextExpanded6 = false
    @State private var isTextExpanded7 = true
    @State private var isTextExpanded8 = false
    @State private var isTextExpanded9 = true
    @State private var isTextExpanded10 = false
    @State private var isTextExpanded11 = true
    @State private var isTextExpanded12 = false
    @State private var isTextExpanded13 = true
    @State private var isTextExpanded14 = false
    @State private var isTextExpanded15 = true
    @State private var isTextExpanded16 = false
    @State private var isTextExpanded17 = true
    @State private var isTextExpanded18 = false
    @State private var isTextExpanded19 = false
    @State private var isTextExpanded20 = false
    @State private var isTextExpanded21 = false
    @State private var isTextExpanded22 = false
    @State private var isTextExpanded23 = false
    @State private var isTextExpanded24 = false
    @State private var isTextExpanded25 = false
    @State private var isTextExpanded26 = false
    @State private var isTextExpanded27 = false
    @State private var isTextExpanded28 = false
    @State private var isTextExpanded29 = false
    @State private var isTextExpanded30 = false
    
    var body: some View {
        ScrollView {
            VStack (spacing:5) {
                MyViewBuilder(title: Text("Факты"),
                              content: Text("""
                                            **Применение инфузомата**
                                            """
                                           )).buildGrayTextCenter()
                    .multilineTextAlignment(.center)
                VStack {
                    Image("infusomat1")
                        .resizable()
                        .scaledToFit()
                        .clipShape(Rectangle())
                        .cornerRadius(10)
                        .shadow(color: .shadowGrayRectangle, radius: 0.5)
                        .padding(10)
                }
                .onTapGesture {
                    withAnimation (.snappy) {
                        isTextExpanded1.toggle()
                    }
                }
                //                    ZStack {
                //                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                //                        VStack (spacing: 1) {
               
                MyViewBuilder(title: Text("Преимущества"),
                              content: Text("""
                                                – **высокая точность введения**
                                                – **не нужно сидеть в вене или считать капли с секундомером**, аппарат сам вводит препарат с заданной скоростью
                                                – **инфузия не зависит от положения прибора** (в отличие от обычной инфузионной системы)
                                                – **точное дозирование незаменимо, когда дело касается вазопрессоров, наркотических и психотропных средств**
                                                """
                                           )).buildDualBlockBlueGray(isTextExpanded: isTextExpanded2)
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded2.toggle()
                        }
                    }
                MyViewBuilder(title: Text("Настройки"),
                              content: Text("""
                                                **Аппарат дает настроить параметры инфузии**:
                                                – Скорость
                                                – Объем
                                                – Время
                                                
                                                **Достаточно указать 2 параметра из 3, чтобы инфузомат смог начать работу**.

                                                **При наличии проблем, аппарат подает звуковой сигнал тревоги. Такими проблемами могут быть**:
                                                – окклюзия катетера
                                                – заканчивается лекарство в шприце
                                                – низкий зяряд батареи
                                                """
                                           )).buildDualBlockBlueGray(isTextExpanded: isTextExpanded3)
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded3.toggle()
                        }
                    }
                MyViewBuilder(title: Text("Факты"),
                              content: Text("""
                                            **Основные препараты для введения:**
                                            """
                                           )).buildGrayTextCenter()
                    .multilineTextAlignment(.center)
                ZStack {
                    MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                    VStack  {
                        MyViewBuilder(title: Text("Проведение"),
                                      content: Text("""
                                        Допамин взрослым
                                        """)).buildBlue59Text(isTextExpanded: isTextExpanded4)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded4.toggle()
                                }
                            }
                        if isTextExpanded4{
                            LazyVStack (spacing:1){
                                
                                MyViewBuilder(title: Text(""),
                                              content: Text("""
                                        **Разведение**:
                                        **5 мл 4% допамина + 15 мл 0,9% NaCl**
                                        В 20 мл полученного раствора 200 мг допамина или 10 000 мкг/мл
                                        """)).buildGrayInHiddenText()
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded4.toggle()
                                        }
                                    }
                                ImagePDF(image: Image("infusomat2"), title: "").buildECGPad(isTextExpanded: isTextExpanded5)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            UIDevice.current.userInterfaceIdiom == .pad ? isTextExpanded4.toggle() : isTextExpanded5.toggle()
                                        }
                                    })
                                    .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded5 ? 302 : 302) : (isTextExpanded5 ? 140 : 280))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                
                            }
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded4.toggle()
                                }
                            }
                        }
                    }
                }
                ZStack {
                    MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                    VStack  {
                        MyViewBuilder(title: Text("Проведение"),
                                      content: Text("""
                                        Допамин детям
                                        """)).buildBlue59Text(isTextExpanded: isTextExpanded6)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded6.toggle()
                                }
                            }
                        if isTextExpanded6{
                            LazyVStack (spacing:1){
                                
                                MyViewBuilder(title: Text(""),
                                              content: Text("""
                                        **Разведение**:
                                        **5 мл 4% допамина + 15 мл 0,9% NaCl**
                                        В 20 мл полученного раствора 200 мг допамина или 10 000 мкг/мл
                                        """)).buildGrayInHiddenText()
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded6.toggle()
                                        }
                                    }
                                ImagePDF(image: Image("infusomat3"), title: "").buildECGPad(isTextExpanded: isTextExpanded7)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            UIDevice.current.userInterfaceIdiom == .pad ? isTextExpanded6.toggle() : isTextExpanded7.toggle()
                                        }
                                    })
                                    .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded7 ? 335 : 335) : (isTextExpanded7 ? 155 : 310))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                
                            }
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded6.toggle()
                                }
                            }
                        }
                    }
                }
                ZStack {
                    MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                    VStack  {
                        MyViewBuilder(title: Text("Проведение"),
                                      content: Text("""
                                        Добутамин взрослым
                                        """)).buildBlue59Text(isTextExpanded: isTextExpanded8)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded8.toggle()
                                }
                            }
                        if isTextExpanded8{
                            LazyVStack (spacing:1){
                                
                                MyViewBuilder(title: Text(""),
                                              content: Text("""
                                        **Разведение**:
                                        **250 мг лиофилизата добутамина растворить в 20 мл 0,9% NaCl**
                                        В 20 мл полученного раствора 250 мг добутамина или 12 500 мкг/мл
                                        """)).buildGrayInHiddenText()
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded8.toggle()
                                        }
                                    }
                                ImagePDF(image: Image("infusomat4"), title: "").buildECGPad(isTextExpanded: isTextExpanded9)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            UIDevice.current.userInterfaceIdiom == .pad ? isTextExpanded8.toggle() : isTextExpanded9.toggle()
                                        }
                                    })
                                    .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded9 ? 292 : 292) : (isTextExpanded9 ? 135 : 270))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                
                            }
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded8.toggle()
                                }
                            }
                        }
                    }
                }
                ZStack {
                    MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                    VStack  {
                        MyViewBuilder(title: Text("Проведение"),
                                      content: Text("""
                                        Добутамин детям
                                        """)).buildBlue59Text(isTextExpanded: isTextExpanded10)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded10.toggle()
                                }
                            }
                        if isTextExpanded10{
                            LazyVStack (spacing:1){
                                
                                MyViewBuilder(title: Text(""),
                                              content: Text("""
                                        **Разведение**:
                                        **250 мг лиофилизата добутамина растворить в 20 мл 0,9% NaCl**
                                        В 20 мл полученного раствора 250 мг добутамина или 12 500 мкг/мл
                                        """)).buildGrayInHiddenText()
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded10.toggle()
                                        }
                                    }
                                ImagePDF(image: Image("infusomat5"), title: "").buildECGPad(isTextExpanded: isTextExpanded11)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            UIDevice.current.userInterfaceIdiom == .pad ? isTextExpanded10.toggle() : isTextExpanded11.toggle()
                                        }
                                    })
                                    .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded11 ? 335 : 335) : (isTextExpanded11 ? 155 : 310))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                
                            }
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded10.toggle()
                                }
                            }
                        }
                    }
                }
                ZStack {
                    MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                    VStack  {
                        MyViewBuilder(title: Text("Проведение"),
                                      content: Text("""
                                        Адреналин
                                        """)).buildBlue59Text(isTextExpanded: isTextExpanded12)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded12.toggle()
                                }
                            }
                        if isTextExpanded12{
                            LazyVStack (spacing:1){
                                
                                MyViewBuilder(title: Text(""),
                                              content: Text("""
                                        **Разведение**:
                                        **2 мл 0,1% адреналина + 18 мл 0,9% NaCl**
                                        В 20 мл полученного раствора 2 мг адреналина или 100 мкг/мл
                                        """)).buildGrayInHiddenText()
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded12.toggle()
                                        }
                                    }
                                ImagePDF(image: Image("infusomat6"), title: "").buildECGPad(isTextExpanded: isTextExpanded13)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            UIDevice.current.userInterfaceIdiom == .pad ? isTextExpanded12.toggle() : isTextExpanded13.toggle()
                                        }
                                    })
                                    .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded13 ? 250 : 250) : (isTextExpanded13 ? 115 : 230))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                MyViewBuilder(title: Text(""),
                                              content: Text("""
                                        **<0,01 мкг/кг/мин** – ↑ сердечного выброса, вазодилатация, ↓ АД, ↑ глюкозы
                                        **0,01-0,03 мкг/кг/мин** – добавляется легкое седативное действие (человек расслабляется и легче дышит)
                                        **0,04-0,1 мкг/кг/мин** – ↑ ЧСС, ↑ АД, ↑ ударный объем, улучшается проводимость в миокарде
                                        **0,1-0,2 мкг/кг/мин** – ↑↑ АД
                                        **0,2-0,3 мкг/кг/мин** – ↑↑↑ АД
                                        **>0,3 мкг/кг/мин** – ↓ перфузии органов (кроме сердца и мозга)
                                        """)).buildGrayInHiddenText()
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded12.toggle()
                                        }
                                    }
                                
                            }
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded12.toggle()
                                }
                            }
                        }
                    }
                }
                ZStack {
                    MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                    VStack  {
                        MyViewBuilder(title: Text("Проведение"),
                                      content: Text("""
                                        Нитроглицерин
                                        """)).buildBlue59Text(isTextExpanded: isTextExpanded14)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded14.toggle()
                                }
                            }
                        if isTextExpanded14{
                            LazyVStack (spacing:1){
                                
                                MyViewBuilder(title: Text(""),
                                              content: Text("""
                                        **Разведение**:
                                        **2 мл 1% нитроглицерина + 18 мл 0,9% NaCl**
                                        В 20 мл полученного раствора 20 мг нитроглицерина или 1000 мкг/мл
                                        **Рекомендуемая скорость**: 10-200 мкг/мин, максимальная – 400 мкг/мин
                                        """)).buildGrayInHiddenText()
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded14.toggle()
                                        }
                                    }
                                ImagePDF(image: Image("infusomat7"), title: "").buildECGPad(isTextExpanded: isTextExpanded15)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            UIDevice.current.userInterfaceIdiom == .pad ? isTextExpanded14.toggle() : isTextExpanded15.toggle()
                                        }
                                    })
                                    .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded15 ? 605 : 605) : (isTextExpanded15 ? 280 : 560))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                                                
                            }
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded14.toggle()
                                }
                            }
                        }
                    }
                }
                ZStack {
                    MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                    VStack  {
                        MyViewBuilder(title: Text("Проведение"),
                                      content: Text("""
                                        Изосорбида динитрат
                                        """)).buildBlue59Text(isTextExpanded: isTextExpanded16)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded16.toggle()
                                }
                            }
                        if isTextExpanded16{
                            LazyVStack (spacing:1){
                                
                                MyViewBuilder(title: Text(""),
                                              content: Text("""
                                        **Разведение**:
                                        **10 мл 10% изосорбида динитрата + 10 мл 0,9% NaCl**
                                        В 20 мл полученного раствора 1000 мг изосорбида динитрата или 500 мкг/мл
                                        **Рекомендуемая скорость**: 33-166 мкг/мин, максимальная – 833 мкг/мин
                                        """)).buildGrayInHiddenText()
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded16.toggle()
                                        }
                                    }
                                ImagePDF(image: Image("infusomat8"), title: "").buildECGPad(isTextExpanded: isTextExpanded17)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            UIDevice.current.userInterfaceIdiom == .pad ? isTextExpanded16.toggle() : isTextExpanded17.toggle()
                                        }
                                    })
                                    .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded17 ? 583 : 583) : (isTextExpanded17 ? 270 : 540))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                                                
                            }
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded16.toggle()
                                }
                            }
                        }
                    }
                }
                MyViewBuilder(title: Text("Амиодарон"),
                              content: Text("""
                                                **Разведение**:
                                                **3 мл 5% амиодарона + 17 мл 5% глюкозы (или 2 мл 40% глюкозы и 15 мл 0,9% NaCl)**
                                                
                                                **Купирование аритмии**: Объём – 20 мл, Время – 30 минут
                                                
                                                **Поддерживающая доза для профилактики аритмии – 1 мг/мин**: Объём – 20 мл, Время – 3 ч. (180 минут)
                                                """
                                           )).buildDualBlockBlueGray(isTextExpanded: isTextExpanded18)
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded18.toggle()
                        }
                    }
                MyViewBuilder(title: Text("Новокаинамид"),
                              content: Text("""
                                                **Разведение**:
                                                **10 мл 10% новокаинамида + 10 мл 0,9% NaCl**
                                                
                                                **Купирование аритмии**: Объём – 20 мл, Время – 20 минут
                                                
                                                **Поддерживающая доза – 2 мг/мин**:
                                                (Разведение: 5 мл новокаинамида + 15 мл 5% глюкозы) Объём – 20 мл, Время – 4 часа 10 мин (250 мин)
                                                """
                                           )).buildDualBlockBlueGray(isTextExpanded: isTextExpanded19)
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded19.toggle()
                        }
                    }
                MyViewBuilder(title: Text("Мезатон"),
                              content: Text("""
                                                **Разведение**:
                                                **1 мл 1% мезатона + 19 мл 0,9% NaCl**
                                                
                                                **При тяжелой гипотонии и шоке 180 мкг/мин**,
                                                выставить на инфузомате: Объём – 20 мл, Время – 55 мин 30 сек.
                                                """
                                           )).buildDualBlockBlueGray(isTextExpanded: isTextExpanded20)
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded20.toggle()
                        }
                    }
                MyViewBuilder(title: Text("Магния сульфат"),
                              content: Text("""
                                                **Разведение**:
                                                **10 мл 25% магния сульфата + 10 мл 0,9% NaCl**
                                                
                                                **Нейропротекция при ОНМК**: Объём – 20 мл, Время – 20 минут
                                                """
                                           )).buildDualBlockBlueGray(isTextExpanded: isTextExpanded21)
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded21.toggle()
                        }
                    }
                MyViewBuilder(title: Text("Эмоксипин"),
                              content: Text("""
                                                **Разведение**:
                                                **10 мл 3% эмоксипина + 10 мл 0,9% NaCl**
                                                
                                                **Нейропротекция при ОНМК**: Объём – 20 мл, Время – 10 минут
                                                
                                                **Скорость рекомендуемая производителем – 2 мг/мин**: Объём – 20 мл, Время – 2 ч. 30 мин. (150 минут)
                                                """
                                           )).buildDualBlockBlueGray(isTextExpanded: isTextExpanded22)
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded22.toggle()
                        }
                    }
                //                        }
                //                    }
                
            }
            .padding(.horizontal, 10)
            .padding(.bottom, 55)
        }
        //        .padding(.horizontal, 200)
        //            .edgesIgnoringSafeArea(.bottom)
        .background(Color.back)
        
        .navigationBarBackButtonHidden(false)
        .navigationBarTitle("", displayMode: .inline)
        .toolbar {
            ToolbarItem(placement: .principal) {
                VStack {
                    Text("Манипуляции")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("""
                    «Применение инфузомата»
                    """)
                    .font(.caption2)
                    .foregroundStyle(Color.toolBar)
                }
            }
            
        }
    }
    
}
#Preview {
    _7Infusomat()
}


