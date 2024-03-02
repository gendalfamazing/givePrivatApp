//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct Postanovlenie59Alg4P2View: View {
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
                VStack (spacing: 5){
                
                            MyViewBuilder(title: Text("3"), content: Text("""
                            **Диагностика и лечение пациентов c тахикардией в стационарных условиях**
                            """)).buildGrayTextCenter()
                       
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        VStack  {
                            MyViewBuilder(title: Text("1"), content: Text("Наджелудочковая тахикардия (I47.1)")).buildBlue59Text(isTextExpanded: isTextExpanded1)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded1.toggle()
                                        isTextExpanded2.toggle()
                                        if isTextExpanded1 == false {
                                            isTextExpanded2 = false
                                            isTextExpanded3 = false
                                        }
                                    }
                                }
                            
                            if isTextExpanded1{
                                VStack (spacing: 1){
                                    ForEach(Table59AG.getTable59Tahi1(), id: \.id) { name in
                                        MyViewBuilder59(title1: name.content1,title2: name.content2,title3: name.content3,title4: name.content4,title5: name.content5,title6: name.content6,title7: name.content7,title8: name.content8,title9: name.content9,title10: name.content10,title11: name.content11,title12: name.content12,title13: name.content13,title14: name.content14, title15: name.content15,title16: name.content16,title17: name.content17,title18: name.content18,title19: name.content19,title20: name.content20,title21: name.content21,title22: name.content22,title23: name.content23,title24: name.content24,title25: name.content25,title26: name.content26,title27: name.content27,title28: name.content28).buildTable59AG()
                                    }
                                    
                                }
                                .cornerRadius(10)
                                //                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded1.toggle()
                                        isTextExpanded2.toggle()
                                        if isTextExpanded1 == false {
                                            isTextExpanded2 = false
                                            isTextExpanded3 = false
                                        }
                                    }
                                }
                                
                            }
                            
                        }
                    }
                    if isTextExpanded2 {
                        VStack {
                            MyViewBuilder(title: Text("Лечение наджелудочковой тахикардии"),
                                          content: Text("""
                                                        
                                                        """)).buildDualBlockBlueGrayLowLevel(isTextExpanded: isTextExpanded3)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded3.toggle()
                                    }
                                }
                        }
                    }
                    
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        VStack  {
                            MyViewBuilder(title: Text("1"), content: Text("Желудочковая тахикардия (I47.2)")).buildBlue59Text(isTextExpanded: isTextExpanded4)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded4.toggle()
                                        isTextExpanded5.toggle()
                                        if isTextExpanded4 == false {
                                            isTextExpanded5 = false
                                            isTextExpanded6 = false
                                        }
                                    }
                                }
                            
                            if isTextExpanded4{
                                VStack (spacing: 1){
                                    ForEach(Table59AG.getTable59Tahi2(), id: \.id) { name in
                                        MyViewBuilder59(title1: name.content1,title2: name.content2,title3: name.content3,title4: name.content4,title5: name.content5,title6: name.content6,title7: name.content7,title8: name.content8,title9: name.content9,title10: name.content10,title11: name.content11,title12: name.content12,title13: name.content13,title14: name.content14, title15: name.content15,title16: name.content16,title17: name.content17,title18: name.content18,title19: name.content19,title20: name.content20,title21: name.content21,title22: name.content22,title23: name.content23,title24: name.content24,title25: name.content25,title26: name.content26,title27: name.content27,title28: name.content28).buildTable59AG()
                                    }
                                    
                                }
                                .cornerRadius(10)
                                //                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded4.toggle()
                                        isTextExpanded5.toggle()
                                        if isTextExpanded4 == false {
                                            isTextExpanded5 = false
                                            isTextExpanded6 = false
                                        }
                                    }
                                }
                                
                            }
                            
                        }
                    }
                    if isTextExpanded5 {
                        VStack {
                            MyViewBuilder(title: Text("Лечение желудочковой тахикардии"),
                                          content: Text("""
                                                        
                                                        """)).buildDualBlockBlueGrayLowLevel(isTextExpanded: isTextExpanded6)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded6.toggle()
                                    }
                                }
                        }
                    }
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        VStack  {
                            MyViewBuilder(title: Text("1"), content: Text("Фибрилляция и трепетание предсердий (I48)")).buildBlue59Text(isTextExpanded: isTextExpanded7)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded7.toggle()
                                        isTextExpanded8.toggle()
                                        if isTextExpanded7 == false {
                                            isTextExpanded8 = false
                                            isTextExpanded9 = false
                                        }
                                    }
                                }
                            
                            if isTextExpanded7{
                                VStack (spacing: 1){
                                    ForEach(Table59AG.getTable59Tahi3(), id: \.id) { name in
                                        MyViewBuilder59(title1: name.content1,title2: name.content2,title3: name.content3,title4: name.content4,title5: name.content5,title6: name.content6,title7: name.content7,title8: name.content8,title9: name.content9,title10: name.content10,title11: name.content11,title12: name.content12,title13: name.content13,title14: name.content14, title15: name.content15,title16: name.content16,title17: name.content17,title18: name.content18,title19: name.content19,title20: name.content20,title21: name.content21,title22: name.content22,title23: name.content23,title24: name.content24,title25: name.content25,title26: name.content26,title27: name.content27,title28: name.content28).buildTable59AG()
                                    }
                                    
                                }
                                .cornerRadius(10)
                                //                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded7.toggle()
                                        isTextExpanded8.toggle()
                                        if isTextExpanded7 == false {
                                            isTextExpanded8 = false
                                            isTextExpanded9 = false
                                        }
                                    }
                                }
                                
                            }
                            
                        }
                    }
                    if isTextExpanded8 {
                        VStack {
                            MyViewBuilder(title: Text("Лечение фибрилляции и трепетания предсердий"),
                                          content: Text("""
                                                        
                                                        """)).buildDualBlockBlueGrayLowLevel(isTextExpanded: isTextExpanded9)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded9.toggle()
                                    }
                                }
                        }
                    }
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        VStack  {
                            MyViewBuilder(title: Text("1"), content: Text("Фибрилляция и трепетание желудочков (I49.0)")).buildBlue59Text(isTextExpanded: isTextExpanded10)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded10.toggle()
                                        isTextExpanded11.toggle()
                                        if isTextExpanded10 == false {
                                            isTextExpanded11 = false
                                            isTextExpanded12 = false
                                        }
                                    }
                                }
                            if isTextExpanded10{
                                VStack (spacing: 1){
                                    ForEach(Table59AG.getTable59Tahi4(), id: \.id) { name in
                                        MyViewBuilder59(title1: name.content1,title2: name.content2,title3: name.content3,title4: name.content4,title5: name.content5,title6: name.content6,title7: name.content7,title8: name.content8,title9: name.content9,title10: name.content10,title11: name.content11,title12: name.content12,title13: name.content13,title14: name.content14, title15: name.content15,title16: name.content16,title17: name.content17,title18: name.content18,title19: name.content19,title20: name.content20,title21: name.content21,title22: name.content22,title23: name.content23,title24: name.content24,title25: name.content25,title26: name.content26,title27: name.content27,title28: name.content28).buildTable59AG()
                                    }
                                    
                                }
                                .cornerRadius(10)
                                //                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded10.toggle()
                                        isTextExpanded11.toggle()
                                        if isTextExpanded10 == false {
                                            isTextExpanded11 = false
                                            isTextExpanded12 = false
                                        }
                                    }
                                }
                                
                            }
                        }
                    }
                    if isTextExpanded11 {
                        VStack {
                            MyViewBuilder(title: Text("Лечение фибрилляции и трепетания желудочков"),
                                          content: Text("""
                                                        
                                                        """)).buildDualBlockBlueGrayLowLevel(isTextExpanded: isTextExpanded12)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded12.toggle()
                                    }
                                }
                        }
                    }
                    
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        VStack  {
                            MyViewBuilder(title: Text("1"), content: Text("Другая и неуточненная преждевременная деполяризация (экстрасистолия) (I49.4)")).buildBlue59Text(isTextExpanded: isTextExpanded13)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded13.toggle()
                                        isTextExpanded14.toggle()
                                        if isTextExpanded13 == false {
                                            isTextExpanded14 = false
                                            isTextExpanded15 = false
                                        }
                                    }
                                }
                            if isTextExpanded13{
                                VStack (spacing: 1){
                                    ForEach(Table59AG.getTable59Tahi5(), id: \.id) { name in
                                        MyViewBuilder59(title1: name.content1,title2: name.content2,title3: name.content3,title4: name.content4,title5: name.content5,title6: name.content6,title7: name.content7,title8: name.content8,title9: name.content9,title10: name.content10,title11: name.content11,title12: name.content12,title13: name.content13,title14: name.content14, title15: name.content15,title16: name.content16,title17: name.content17,title18: name.content18,title19: name.content19,title20: name.content20,title21: name.content21,title22: name.content22,title23: name.content23,title24: name.content24,title25: name.content25,title26: name.content26,title27: name.content27,title28: name.content28).buildTable59AG()
                                    }
                                    
                                }
                                .cornerRadius(10)
                                //                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded13.toggle()
                                        isTextExpanded14.toggle()
                                        if isTextExpanded13 == false {
                                            isTextExpanded14 = false
                                            isTextExpanded15 = false
                                        }
                                    }
                                }
                                
                            }
                        }
                    }
                    if isTextExpanded14 {
                        VStack {
                            MyViewBuilder(title: Text("Лечение преждевременной деполяризации (экстрасистолии)"),
                                          content: Text("""
                                                        
                                                        """)).buildDualBlockBlueGrayLowLevel(isTextExpanded: isTextExpanded15)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded15.toggle()
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
                    Text("Стационарный этап")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("""
                    «Диагностика и лечение пациентов c тахикардией»
                    """)
                    .font(.caption2)
                    .foregroundStyle(Color.toolBar)
                }
            }
            
        }
    }
    
}
#Preview {
    Postanovlenie59Alg4P2View()
}

