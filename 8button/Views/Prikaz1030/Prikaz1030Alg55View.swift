//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg55View: View {
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
                            MyViewBuilder(title: Text("55"), content: Text("""
                            **Суицидальное поведение**:
                            """)).buildGrayInText()
                            HStack {
                                
                                MyViewBuilder(title: Text("55"), content: Text("""
                            **Суицидальные мысли и намерения**
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
                                        }
                                    }
                                MyViewBuilder(title: Text("55"), content: Text("""
                            **Незавершенный суицид**
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
                                        }
                                    }
                                
                            }
                        }
                        .padding(5)
                    }
                    if isTextExpanded1 {
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("55"), content: Text("""
                                **Оценка психического статуса**:
                                """)).buildGrayInText()
                                MyViewBuilder(title: Text("55"), content: Text("""
                                1. **Строгий надзор** (ни на минуту не оставлять больного одного в помещении и машине СНМП).
                                2. **Открытое обсуждение суицидальных планов и идей** больного, с привлечением родных, близких и авторитетных лиц.
                                3. **Консультация психиатра** или замещающего его специалиста.
                                4. **Рекомендация добровольной госпитализации**.
                                5. **Тщательный осмотр вещей - профилактика самоубийства или нападения на окружающих при транспортировке**.
                                """)).buildGrayInHiddenText()
                            }
                            .padding(5)
                        }
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("55"), content: Text("""
                                **При выраженной ажитированной депрессии или меланхолическом раптусе**:
                                """)).buildGrayInText()
                                MyViewBuilder(title: Text("55"), content: Text("""
                                - **диазепам 0,5% раствор 2-4 мл** в/м.
                                
                                **Препараты со стимулирующим эффектом при психомоторном возбуждении не назначать**!
                                """)).buildGrayInHiddenText()
                            }
                            .padding(5)
                        }
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("55"), content: Text("""
                        **Доставка в стационар** по профилю заболевания
                        """)).buildGrayText()
                    }
                    if isTextExpanded2 {
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("55"), content: Text("""
                                **Оценка соматического состояния пациента**:
                                """)).buildGrayInText()
                                MyViewBuilder(title: Text("55"), content: Text("""
                                - отравления,
                                - повешение,
                                - ранения,
                                - травматические повреждения
                                """)).buildGrayInHiddenText()
                                
                            }
                            .padding(5)
                        }
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("55"), content: Text("""
                                **Оказание медицинской помощи в соответствии с выявленной соматической патологией** (см. соответствующие алгоритмы)
                                """)).buildGrayText()
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("55"), content: Text("""
                                **Доставка в ОИТАР** профильного стационара
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
                    Text("Алгоритм 55")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Суицидальное поведение»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg55"), title: "Алгоритм 55")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}

#Preview {
    Prikaz1030Alg55View()
}
