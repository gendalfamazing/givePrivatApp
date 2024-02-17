//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg123View: View {
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
                    MyViewBuilder(title: Text("23"), content: Text("""
                    **Симптомы**:
                    
                    - одышка **экспираторного** характера с участием
                    вспомогательной мускулатуры;
                    - кашель **приступообразного** характера, иногда с отхождением вязкой мокроты;
                    - **вынужденное положение** - «сидячее».
                    """)).buildGrayText()
                    Image(systemName: "arrow.down")
                        .shadow(radius: 2)
                    MyViewBuilder(title: Text("23"), content: Text("""
                    **Оценить физикальные симптомы**.
                    **При аускультации**: диффузные, **сухие**, **свистящие хрипы**, реже разнокалиберные, влажные хрипы (характерны у детей).
                    """)).buildGrayText()
                    HStack {
                        Spacer()
                        Image(systemName: "arrow.down")
                            .shadow(radius: 2)
                        Spacer()
                        Image(systemName: "arrow.down")
                            .shadow(radius: 2)
                        Spacer()
                        Image(systemName: "arrow.down")
                            .shadow(radius: 2)
                        Spacer()
                        Image(systemName: "arrow.down")
                            .shadow(radius: 2)
                        Spacer()
                    }
                    HStack{
                        MyViewBuilder(title: Text("23"), content: Text("""
                        **Лёгкая степень**
                        """)).buildGreen1Text(isTextExpanded: isTextExpanded1)
                            .onTapGesture {
                                withAnimation (.interpolatingSpring) {
                                    isTextExpanded1.toggle()
                                    if isTextExpanded4 == true {
                                        isTextExpanded4.toggle()
                                    }
                                    if isTextExpanded2 == true {
                                        isTextExpanded2.toggle()
                                    }
                                    if isTextExpanded3 == true {
                                        isTextExpanded3.toggle()
                                    }
                                }
                            }
                        MyViewBuilder(title: Text("23"), content: Text("""
                        **Средняя степень**
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
                                    if isTextExpanded3 == true {
                                        isTextExpanded3.toggle()
                                    }
                                }
                            }
                    }
                    HStack{
                        MyViewBuilder(title: Text("23"), content: Text("""
                        **Тяжёлая степень**
                        """)).buildGreen1Text(isTextExpanded: isTextExpanded3)
                            .onTapGesture {
                                withAnimation (.interpolatingSpring) {
                                    isTextExpanded3.toggle()
                                    if isTextExpanded1 == true {
                                        isTextExpanded1.toggle()
                                    }
                                    if isTextExpanded2 == true {
                                        isTextExpanded2.toggle()
                                    }
                                    if isTextExpanded4 == true {
                                        isTextExpanded4.toggle()
                                    }
                                }
                            }
                        MyViewBuilder(title: Text("23"), content: Text("""
                        **Астматический статус**
                        """)).buildGreen1Text(isTextExpanded: isTextExpanded4)
                            .onTapGesture {
                                withAnimation (.interpolatingSpring) {
                                    isTextExpanded4.toggle()
                                    if isTextExpanded1 == true {
                                        isTextExpanded1.toggle()
                                    }
                                    if isTextExpanded2 == true {
                                        isTextExpanded2.toggle()
                                    }
                                    if isTextExpanded3 == true {
                                        isTextExpanded3.toggle()
                                    }
                                }
                            }
                    }
                    if isTextExpanded1 {
                        MyViewBuilder(title: Text("23"), content: Text("""
                        **Одышка при ходьбе**, может лежать, может быть возбуждён, говорит предложениями, **ЧД увеличена**, **участие вспомогательной мускулатуры отсутствует**, **свистящие хрипы умеренные** (при выдохе), **ЧСС менее 100**, **SpO2более 95%**
                        """)).buildGrayText()
                        Image(systemName: "arrow.down")
                            .shadow(radius: 2)
                        MyViewBuilder(title: Text("23"), content: Text("""
                        **β2-агонисты быстрого действия (сальбутамол) ингаляционно**
                        """)).buildGrayText()
                        Image(systemName: "arrow.down")
                            .shadow(radius: 2)
                        MyViewBuilder(title: Text("23"), content: Text("""
                        **Амбулаторное лечение**
                        """)).buildGrayText()
                    }
                    if isTextExpanded2 {
                        MyViewBuilder(title: Text("23"), content: Text("""
                        **При разговоре, плаче, приёме пищи – одышка**, предпочитает сидеть, разговор **отдельными фразами**, обычно возбуждён, **ЧД увеличена**, **участвует вспомогательная мускулатура**, имеются громкие **дистанционные хрипы**, **ЧСС – 100-120**, **SpO2 – 90-95%**
                        """)).buildGrayText()
                        Image(systemName: "arrow.down")
                            .shadow(radius: 2)
                        MyViewBuilder(title: Text("23"), content: Text("""
                        - **ингаляции сальбутамола, фенотерола с ипратропиумом (небулайзером)**,
                        - **2,4% раствор аминофиллина 10 мл в/в**,
                        - **преднизолон 30-60мг в/в**,
                        - увлажнённая кислородно-воздушная смесь **(30- 40% кислород)** 2-4 л в 1 мин
                        """)).buildGrayText()
                        Image(systemName: "arrow.down")
                            .shadow(radius: 2)
                        MyViewBuilder(title: Text("23"), content: Text("""
                        **Доставка в стационар** по профилю основного заболевания
                        """)).buildGrayText()
                    }
                    if isTextExpanded3 {
                        MyViewBuilder(title: Text("23"), content: Text("""
                        **Одышка в покое**, **вынужденное положение** (сидит наклоняясь вперёд), разговор словами, обычно возбуждён, **ЧД более 30** в 1 мин, **участвует вспомогательная мускулатура**, **аускультативно и дистанционно хрипы**, **ЧСС более 120**, **SpO2 менее 90%**
                        """)).buildGrayText()
                        Image(systemName: "arrow.down")
                            .shadow(radius: 2)
                        MyViewBuilder(title: Text("23"), content: Text("""
                        **При сохранении сознания**:
                        - **ингаляция беродуала** (небулайзером),
                        - увлажнённая кислородно-воздушная смесь **(30-40% кислород 2-4 л в 1 мин)**;
                        - **инфузионная терапия: 5% раствор глюкозы в/в, 60-150 мг преднизолона в/в, 2,4% раствор аминофиллина 3-6 мг/кг в/в капельно**.
                        
                        **При отсутствии сознания и угнетении дыхания**:
                        - **в/в 0,18% эпинефрин 0,3 мл каждые 20 мин до получения бронхолитического эффекта, интубация и перевод на ИВЛ**.
                        """)).buildGrayText()
                        Image(systemName: "arrow.down")
                            .shadow(radius: 2)
                        MyViewBuilder(title: Text("23"), content: Text("""
                        **Доставка в стационар** (в ОИТАР, минуя приемное отделение)
                        """)).buildGrayText()
                    }
                    if isTextExpanded4 {
                        MyViewBuilder(title: Text("23"), content: Text("""
                        **Нарушение сознания, тахи- или брадипное, пародоксальное дыхание, «немое легкое», ЧСС менее 60, SpO2 менее 88%**
                        """)).buildGrayText()
                        NavigationLink (destination: Prikaz1030Alg2View()) {
                            MyViewBuilder(title: Text("1"), content: Text("Алгоритм 77 «Респираторная поддержка»")).buildNavigationText()
                        }
                        Image(systemName: "arrow.down")
                            .shadow(radius: 2)
                        MyViewBuilder(title: Text("23"), content: Text("""
                        **При сохранении сознания**:
                        - **ингаляция беродуала** (небулайзером),
                        - увлажнённая кислородно-воздушная смесь **(30-40% кислород 2-4 л в 1 мин)**;
                        - **инфузионная терапия: 5% раствор глюкозы в/в, 60-150 мг преднизолона в/в, 2,4% раствор аминофиллина 3-6 мг/кг в/в капельно**.
                        
                        **При отсутствии сознания и угнетении дыхания**:
                        - **в/в 0,18% эпинефрин 0,3 мл каждые 20 мин до получения бронхолитического эффекта, интубация и перевод на ИВЛ**.
                        """)).buildGrayText()
                        Image(systemName: "arrow.down")
                            .shadow(radius: 2)
                        MyViewBuilder(title: Text("23"), content: Text("""
                        **Доставка в стационар** (в ОИТАР, минуя приемное отделение)
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
                    Text("Алгоритм 23")
                        .font(.headline)
                        .bold()
                    Text("«Приступ бронхиальной астмы»")
                        .font(.caption2)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg23"), title: "Алгоритм 23")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}

#Preview {
    Prikaz1030Alg123View()
}
