//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg65View: View {
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
            ScrollView {
                Spacer()
                VStack {
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack {
                            MyViewBuilder(title: Text("65"), content: Text("""
                            **Период после родов**:
                            """)).buildGrayInText()
                            HStack {
                                MyViewBuilder(title: Text("65"), content: Text("""
                            **Ранний послеродовый период (до 24ч.)**
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
                                            if isTextExpanded16 == true {
                                                isTextExpanded16.toggle()
                                            }
                                            if isTextExpanded17 == true {
                                                isTextExpanded17.toggle()
                                            }
                                        }
                                    }
                                MyViewBuilder(title: Text("65"), content: Text("""
                            **Поздний послеродовый период (до 42дн.)**
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
                                            if isTextExpanded16 == true {
                                                isTextExpanded16.toggle()
                                            }
                                            if isTextExpanded17 == true {
                                                isTextExpanded17.toggle()
                                            }
                                        }
                                    }
                                
                            }.padding(5).padding(.top, -10)
                        }
                    }
                    
                    if isTextExpanded1{
                        Image(systemName: "arrow.down")
                           
                                MyViewBuilder(title: Text("**Кровопотеря более 350 мл**:"), content: Text("""
                                - определение АД,
                                - пульсометрия.
                                """)).buildGrayInAndHiddenBlock()
                             
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("65"), content: Text("""
                                **Послед отделился**:
                                """)).buildGrayInText()
                                HStack {
                                    
                                    MyViewBuilder(title: Text("65"), content: Text("""
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
                                                if isTextExpanded16 == true {
                                                    isTextExpanded16.toggle()
                                                }
                                                if isTextExpanded17 == true {
                                                    isTextExpanded17.toggle()
                                                }
                                            }
                                        }
                                    MyViewBuilder(title: Text("65"), content: Text("""
                                **Нет**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded4)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
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
                                                if isTextExpanded16 == true {
                                                    isTextExpanded16.toggle()
                                                }
                                                if isTextExpanded17 == true {
                                                    isTextExpanded17.toggle()
                                                }
                                            }
                                        }
                                    
                                }.padding(5).padding(.top, -10)
                            }
                        }
                        
                    }
                    if isTextExpanded2{
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                
                                MyViewBuilder(title: Text("65"), content: Text("""
                                **Признаки гиповолемического шока**:
                                """)).buildGrayInText()
                                
                                HStack {
                                    
                                    MyViewBuilder(title: Text("65"), content: Text("""
                                **Есть**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded13)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded13.toggle()
                                                
                                                if isTextExpanded14 == true {
                                                    isTextExpanded14.toggle()
                                                }
                                                
                                            }
                                        }
                                    MyViewBuilder(title: Text("65"), content: Text("""
                                **Нет**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded14)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded14.toggle()
                                                
                                                if isTextExpanded13 == true {
                                                    isTextExpanded13.toggle()
                                                }
                                                
                                            }
                                        }
                                    
                                }.padding(5).padding(.top, -10)
                            }
                        }
                    }
                    if isTextExpanded3{
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("65"), content: Text("""
                                **Матка**:
                                """)).buildGrayInText()
                                HStack {
                                    
                                    MyViewBuilder(title: Text("65"), content: Text("""
                                **Плотная**
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
                                                if isTextExpanded16 == false {
                                                    isTextExpanded16.toggle()
                                                }
                                                if isTextExpanded17 == false {
                                                    isTextExpanded17.toggle()
                                                }
                                                if isTextExpanded5 == false  && isTextExpanded6 == false{
                                                    isTextExpanded16 = false
                                                    isTextExpanded17 = false
                                                }
                                            }
                                        }
                                    MyViewBuilder(title: Text("65"), content: Text("""
                                **Мягкая, расслабленная**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded6)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
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
                                                if isTextExpanded16 == false {
                                                    isTextExpanded16.toggle()
                                                }
                                                if isTextExpanded17 == false {
                                                    isTextExpanded17.toggle()
                                                }
                                                if isTextExpanded5 == false  && isTextExpanded6 == false{
                                                    isTextExpanded16 = false
                                                    isTextExpanded17 = false
                                                }
                                            }
                                        }
                                    
                                }.padding(5).padding(.top, -10)
                            }
                        }
                    }
                    if isTextExpanded4{
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                
                                MyViewBuilder(title: Text("**Есть признаки отделения**:"), content: Text("""
                                - при надавливании над лоном **наружный отрезок пуповины не втягивается**.
                                """)).buildGrayInAndHiddenBlockWithBlueButtons()
                                HStack {
                                    MyViewBuilder(title: Text("65"), content: Text("""
                                **Да**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded7)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded7.toggle()
                                                
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
                                                if isTextExpanded15 == false {
                                                    isTextExpanded15.toggle()
                                                }
                                                if isTextExpanded16 == true {
                                                    isTextExpanded16.toggle()
                                                }
                                                if isTextExpanded17 == true {
                                                    isTextExpanded17.toggle()
                                                }
                                                if isTextExpanded7 == false  && isTextExpanded8 == false{
                                                    isTextExpanded15 = false
                                                    isTextExpanded16 = false
                                                    isTextExpanded17 = false
                                                    isTextExpanded9 = false
                                                }
                                            }
                                        }
                                    MyViewBuilder(title: Text("65"), content: Text("""
                                **Нет**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded8)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded8.toggle()
                                                
                                                if isTextExpanded7 == true {
                                                    isTextExpanded7.toggle()
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
                                                if isTextExpanded16 == true {
                                                    isTextExpanded16.toggle()
                                                }
                                                if isTextExpanded17 == true {
                                                    isTextExpanded17.toggle()
                                                }
                                                if isTextExpanded7 == false  && isTextExpanded8 == false{
                                                    isTextExpanded15 = false
                                                    isTextExpanded9 = false
                                                }
                                            }
                                        }
                                    
                                }.padding(5).padding(.top, -10)
                            }
                        }
                    }
                    if isTextExpanded5{
                        
                    }
                    if isTextExpanded6{
                        Image(systemName: "arrow.down")
                         
                                MyViewBuilder(title: Text("**Неотложная помощь**:"), content: Text("""
                                - в/в **окситоцин 5-10 ЕД в 5% растворе глюкозы**,
                                - **0,9% раствор натрия хлорида 250-500 мл**
                                """)).buildGrayInAndHiddenBlock()
                            
                    }
                    if isTextExpanded7{
                        
                    }
                    if isTextExpanded8{
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                
                                MyViewBuilder(title: Text("65"), content: Text("""
                                **Признаки наружного кровотечения**:
                                """)).buildGrayInText()
                                
                                HStack {
                                    
                                    MyViewBuilder(title: Text("65"), content: Text("""
                                **Есть**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded9)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded9.toggle()
                                                
                                                
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
                                                if isTextExpanded15 == false {
                                                    isTextExpanded15.toggle()
                                                }
                                                if isTextExpanded16 == true {
                                                    isTextExpanded16.toggle()
                                                }
                                                if isTextExpanded17 == true {
                                                    isTextExpanded17.toggle()
                                                }
                                                if isTextExpanded9 == false  && isTextExpanded10 == false{
                                                    
                                                    isTextExpanded15 = false
                                                    isTextExpanded16 = false
                                                    isTextExpanded17 = false
                                                }
                                            }
                                        }
                                    MyViewBuilder(title: Text("65"), content: Text("""
                                **Нет**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded10)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded10.toggle()
                                                
                                                
                                                if isTextExpanded9 == true {
                                                    isTextExpanded9.toggle()
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
                                                if isTextExpanded16 == true {
                                                    isTextExpanded16.toggle()
                                                }
                                                if isTextExpanded17 == false {
                                                    isTextExpanded17.toggle()
                                                }
                                                if isTextExpanded9 == false  && isTextExpanded10 == false{
                                                    
                                                    isTextExpanded17 = false
                                                    isTextExpanded16 = false
                                                    isTextExpanded15 = false
                                                }
                                            }
                                        }
                                    
                                }.padding(5).padding(.top, -10)
                            }
                        }
                    }
                    if isTextExpanded9{
                        
                    }
                    if isTextExpanded10{
                        
                    }
                    if isTextExpanded15{
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack (spacing:1){
                                MyViewBuilder(title: Text("**Неотложная помощь**:"), content: Text("""
                                1. **Вывести мочу катетером**;
                                2. В/в **окситоцин 5-10 ЕД в 5% растворе глюкозы**, **0,9% раствор натрия хлорида 250-500 мл**;
                                3. **Выделить послед наружными приемами**.
                                """)).buildGrayInAndHiddenBlockWithBlueButtons()
                                MyViewBuilder(title: Text("65"), content: Text("""
                                **Эффект от наружных приемов**:
                                """)).buildGrayInText()
                                Spacer(minLength: 5)
                                HStack {
                                    
                                    MyViewBuilder(title: Text("65"), content: Text("""
                                **Есть**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded11)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded11.toggle()
                                                
                                                
                                                if isTextExpanded10 == true {
                                                    isTextExpanded10.toggle()
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
                                                if isTextExpanded16 == false {
                                                    isTextExpanded16.toggle()
                                                }
                                                if isTextExpanded17 == false {
                                                    isTextExpanded17.toggle()
                                                }
                                                if isTextExpanded11 == false  && isTextExpanded12 == false{
                                                    isTextExpanded16 = false
                                                    isTextExpanded17 = false
                                                }
                                            }
                                        }
                                    MyViewBuilder(title: Text("65"), content: Text("""
                                **Нет**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded12)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded12.toggle()
                                                
                                                
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
                                                if isTextExpanded16 == false {
                                                    isTextExpanded16.toggle()
                                                }
                                                if isTextExpanded17 == false {
                                                    isTextExpanded17.toggle()
                                                }
                                                if isTextExpanded11 == false  && isTextExpanded12 == false{
                                                    isTextExpanded16 = false
                                                    isTextExpanded17 = false
                                                }
                                            }
                                        }
                                    
                                }.padding(5).padding(.top, -10)
                            }
                        }
                    }
                    if isTextExpanded11{
                        
                    }
                    if isTextExpanded12{
                        Image(systemName: "arrow.down")
                           
                        
                        MyViewBuilder(title: Text("65"), content: Text("""
                                **Перейти на ручное отделение последа**
                                """)).buildGrayText()
                    }
                    if isTextExpanded13{
                        Image(systemName: "arrow.down")
                           
                        NavigationLink (destination: Prikaz1030Alg5View()) {
                            MyViewBuilder(title: Text("65"), content: Text("Алгоритм 5 «Гиповолемический шок»")).buildNavigationText()
                        }
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("65"), content: Text("""
                        **Доставка в стационар** по профилю заболевания
                        """)).buildGrayText()
                    }
                    if isTextExpanded14{
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("65"), content: Text("""
                        **Доставка в стационар** по профилю заболевания
                        """)).buildGrayText()
                    }
                    
                    if isTextExpanded16{
                        Image(systemName: "arrow.down")
                           
                        
                        MyViewBuilder(title: Text("65"), content: Text("""
                                **Признаки гиповолемического шока**
                                """)).buildGrayText()
                        
                    }
                    if isTextExpanded17{
                        Image(systemName: "arrow.down")
                           
                        
                        MyViewBuilder(title: Text("65"), content: Text("""
                                **Предупредить ближайший стационар** по профилю заболевания о поступлении тяжелой родильницы
                                """)).buildGrayText()
                        Image(systemName: "arrow.down")
                           
                        
                        MyViewBuilder(title: Text("65"), content: Text("""
                                **Доставка в стационар** по профилю заболевания
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
                    Text("Алгоритм 65")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Кровотечение в послеродовом периоде»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg65"), title: "Алгоритм 65")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}

#Preview {
    Prikaz1030Alg65View()
}
