//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct Postanovlenie59Alg1View: View {
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
     var body: some View {
        NavigationStack {
            ScrollView {
                VStack (spacing: 5){
                    MyViewBuilder(title: Text("Общие положения"), content: Text(LocalizedStringKey("Post59Alg1B0G0S1"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded.toggle()
                            }
                        }
                    
                    Spacer(minLength: 20)
                    VStack (spacing: 5) {
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        VStack  {
                            NavigationLink (destination: Postanovlenie59Alg1P1View()) {
                                MyViewBuilder(title: Text("1"), content: Text("Амбулаторный этап")).buildBlue59NavigationText()
                            }
                        }
                    }
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        VStack  {
                            NavigationLink (destination: Postanovlenie59Alg1P2View()) {
                                MyViewBuilder(title: Text("1"), content: Text("Стационарный этап")).buildBlue59NavigationText()
                            }
                        }
                    }
                }
                    Spacer(minLength: 20)
                    
                    VStack (spacing: 5) {
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        
                        VStack  {
                            MyViewBuilder(title: Text("1"), content: Text("Пороговый уровень АД для выявления АГ при различных методах его измерения (ESH, 2013 г.)")).buildBlue59Text(isTextExpanded: isTextExpanded1)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded1.toggle()
                                    }
                                }
                            
                            if isTextExpanded1{
                                VStack {
                                    HStack {
                                        ZStack {
                                            Text("Способы измерения")
                                                .padding(.horizontal, 10)
                                                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                                .font(.footnote)
                                                .bold()
                                            
                                        }
                                        .frame(width: 190)
                                        Spacer()
                                        Text("""
                                        САД,
                                        мм рт.ст.
                                        """)
                                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                        .frame(maxWidth: 70)
                                        .font(.footnote)
                                        .bold()
                                        .padding(3)
                                        
                                        Spacer()
                                        Text("")
                                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                        
                                            .font(.footnote)
                                            .padding(3)
                                        
                                        Spacer()
                                        Text("""
                                        ДАД,
                                        мм рт.ст.
                                        """)
                                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                        .font(.footnote)
                                        .bold()
                                        .padding(3)
                                        
                                        Spacer()
                                    }
                                    .padding(2)
                                    .background(Color.grayButton)
                                    ForEach(Table59AG.getTable59AG13(), id: \.id) { name in
                                        MyViewBuilder59(title1: name.content1,title2: name.content2,title3: name.content3,title4: name.content4,title5: name.content5,title6: name.content6,title7: name.content7,title8: name.content8,title9: name.content9,title10: name.content10,title11: name.content11,title12: name.content12,title13: name.content13,title14: name.content14).buildTable59AG1()
                                            .onTapGesture {
                                                withAnimation (.snappy) {
                                                    isTextExpanded1.toggle()
                                                }
                                            }
                                        Spacer(minLength: 10)
                                    }
                                }
                            }
                            
                        }
                    }
                    
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        VStack  {
                            MyViewBuilder(title: Text("1"), content: Text("Амбулаторные методы контроля АД")).buildBlue59Text(isTextExpanded: isTextExpanded2)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded2.toggle()
                                    }
                                }
                            
                            if isTextExpanded2{
                                MyViewBuilder(title: Text("3"), content: Text("""
                                        **Амбулаторные методы контроля АД** (суточное мониторирование и в домашних условиях) **обладают существенной дополнительной информацией** к традиционному методу измерения АД, однако клиническое измерение АД (на приеме у врача) остается по прежнему **«золотым стандартом»** для скрининга, диагностики и лечения АГ.
                                        
                                        **Степень и риск АГ устанавливаются по данным клинического измерения АД**, показатели суточного мониторирования и домашнего измерения АД с этой целью не используются.
                                        """)).buildGrayInHidden59Text()
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded2.toggle()
                                        }
                                    }
                                
                            }
                            
                        }
                    }
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        VStack  {
                            MyViewBuilder(title: Text("1"), content: Text("Показания для проведения амбулаторного измерения артериального давления")).buildBlue59Text(isTextExpanded: isTextExpanded3)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded3.toggle()
                                    }
                                }
                            
                            if isTextExpanded3{
                                MyViewBuilder(title: Text("3"), content: Text("""
                                        **Клинические показания для суточного мониторирования и домашнего измерения АД**:
                                        
                                        1. Выявление офисной (или клинической) артериальной гипертензии или гипертонии “белого халата”:
                                        - I cтепень АГ в клинических условиях,
                                        - высокое офисное АД у лиц без субклинического поражения органов-мишеней и с низким общим сердечно-сосудистым риском.
                                        2. Подозрение на маскированную артериальную гипертензию:
                                        — высокое нормальное (систолическое 130-139/диастолическое 85-89 мм рт.ст.) АД в клинических условиях,
                                        — нормальное офисное АД у лиц с наличием субклинического поражения органов-мишеней и с высоким общим сердечно-сосудистым риском.
                                        3. Диагностика эффекта “белого халата” у пациентов с артериальной гипертензией,
                                        4. Существенная вариабельность при измерении уровня АД как во время одного, так и при нескольких визитах к врачу;
                                        5. Значительная разница между величинами АД, измеренными в клинике и в домашних условиях;
                                        6. Выявление автономной, постуральной, постпрандиальной и лекарственно-индуцированной гипотензии**.
                                        7. Повышенный уровень АД у беременных в клинических условиях или подозрение на преэклампсию.
                                        8. Выявление истинной или псевдорезистентной артериальной гипертензии.
                                        
                                        **Специальные показания для проведения суточного мониторирования АД**
                                        
                                        1. Существенная разница АД в клинических и амбулаторных условиях.
                                        2. Диагностика ночного снижения АД.
                                        3. Подозрение на утреннюю АГ или отсутствие снижения АД в ночное время суток у пациентов с ночным
                                        апноэ, хронической болезнью почек или СД. 4. Оценка вариабельности АД.
                                        """)).buildGrayInHidden59Text()
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded3.toggle()
                                        }
                                    }
                                
                            }
                            
                        }
                    }
                    
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        
                        VStack  {
                            MyViewBuilder(title: Text("1"), content: Text("Абсолютные и возможные противопоказания для использования антигипертензивных препаратов")).buildBlue59Text(isTextExpanded: isTextExpanded4)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded4.toggle()
                                    }
                                }
                            
                            if isTextExpanded4{
                                VStack {
                                    HStack (alignment: .bottom) {
                                        
                                        Text("Препарат")
                                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .topLeading)
                                            .frame(maxWidth: 90)
                                            .font(.footnote)
                                            .bold()
                                            .padding(7)
                                        
                                        Spacer()
                                        Text("Абсолютные")
                                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .topLeading)
                                            .frame(maxWidth: 100)
                                            .font(.footnote)
                                            .bold()
                                            .padding(7)
                                        
                                        Spacer()
                                        Text("Возможные")
                                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .topLeading)
                                        //                .frame(maxWidth: 70)
                                            .font(.footnote)
                                            .bold()
                                            .padding(7)
                                        
                                        
                                        
                                        Spacer()
                                        
                                    }
                                    .padding(2)
                                    ForEach(Table59AG.getTable59AG14(), id: \.id) { name in
                                        MyViewBuilder59(title1: name.content1,title2: name.content2,title3: name.content3,title4: name.content4,title5: name.content5,title6: name.content6,title7: name.content7,title8: name.content8,title9: name.content9,title10: name.content10,title11: name.content11,title12: name.content12,title13: name.content13,title14: name.content14).buildTable59AG2()
                                            .onTapGesture {
                                                withAnimation (.snappy) {
                                                    isTextExpanded4.toggle()
                                                }
                                            }
                                    }
                                    MyViewBuilder(title: Text("3"), content: Text("""
                                            **Примечание**:
                                            
                                            AV – предсердечно-желудочковый, ЛЖ – левый желудочек,
                                            АПФ – ангиотензинпревращающий фермент, рСКФ – расчетная скорость клубочковой фильтрации
                                            """)).buildGrayInHidden59Text()
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded4.toggle()
                                            }
                                        }
                                }
                            }
                            
                        }
                    }
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        VStack  {
                            MyViewBuilder(title: Text("1"), content: Text("Лечение факторов риска, ассоциированных с гипертензией")).buildBlue59Text(isTextExpanded: isTextExpanded5)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded5.toggle()
                                    }
                                }
                            
                            if isTextExpanded5{
                                MyViewBuilder(title: Text("3"), content: Text("""
                                            - **У пациентов с высоким и средним сердечно-сосудистым (СС) риском** рекомендуется использовать терапию **статинами** (симвастатин, аторвастатин, розувастатин) в дозах достаточных для достижения целевого уровня холестерина **ЛПНП < 3.0 ммоль/л** (115 мг/дл).
                                            
                                            - **При наличии очевидной ИБС** рекомендуется применять терапию **статинами** с достижением уровня холестерина **ЛПНП < 1,8ммоль/л** (170 мг/дл).
                                            
                                            - **Антитромбоцитарная терапия**, в частности ацетилсалициловая кислота в низких дозах, рекомендуется пациентам с гипертензией с предшествующими СС событиями.
                                            
                                            - **Следует рассмотреть назначение ацетилсалициловая кислота 75 мг** у пациентов с гипертензией со сниженной функцией почек или высоким СС риском, если достигнут хороший контроль АД.
                                            
                                            - **Ацетилсалициловая кислота не рекомендуется для СС профилактики** у пациентов с гипертензией с низким и средним риском, у которых абсолютная польза и риск равны.
                                            
                                            - **У пациентов с гипертензией и диабетом рекомендуется целевой уровень HbAIc < 7,0%**.
                                            
                                            - **У слабых пожилых пациентов с большой длительностью сахарного диабета, большим количеством сопутствующих заболеваний и высоким риском рекомендуется целевой уровень HbAIc < 7,5 - 8,0%**.
                                            """)).buildGrayInHidden59Text()
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded5.toggle()
                                        }
                                    }
                                
                            }
                            
                        }
                    }
                }
            }
                .padding(.horizontal, 10)
                .padding(.bottom, 95)
            }
            //        .padding(.horizontal, 200)
            .edgesIgnoringSafeArea(.bottom)
            .background(Color.back)
        }
        .navigationBarBackButtonHidden(false)
        .navigationBarTitle("",displayMode: .inline)
        .toolbar {
            ToolbarItem(placement: .principal) {
                VStack {
                    Text("Приложение 1")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("""
                    «Артериальная гипертензия»
                    """)
                    .font(.caption2)
                    .foregroundStyle(Color.toolBar)
                }
            }
            
        }
    }
    
}
#Preview {
    Postanovlenie59Alg1View()
}

