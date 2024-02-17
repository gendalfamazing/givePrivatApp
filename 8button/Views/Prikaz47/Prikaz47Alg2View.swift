//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct Prikaz47Alg2View: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @State private var isTextExpanded1 = false
    @State private var isTextExpanded2 = false
    @State private var isTextExpanded3 = false
    @State private var isTextExpanded4 = false
    @State private var isTextExpanded5 = false
    @State private var isTextExpanded6 = false
    @State private var isTextExpanded7 = false
    @State private var isTextExpanded8 = false
    // Text(LocalizedStringKey("Prikaz47Alg2B0G0S1"))).buildGrayText()
    var body: some View {
        NavigationStack {
            ScrollView {
                Spacer()
                VStack {
                    MyViewBuilder(title: Text("2"),
                                  content: Text(LocalizedStringKey("Prikaz47Alg2B0G0S1"))).buildGrayText()
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack {
                            MyViewBuilder(title: Text("2"), content: Text("Догоспитальный этап")).buildBlue1Text(isTextExpanded: isTextExpanded1)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded1.toggle()
                                        if isTextExpanded1 == false {
                                            isTextExpanded2 = false
                                            isTextExpanded3 = false
                                            isTextExpanded4 = false
                                            
                                        }
                                    }
                                }
                            if isTextExpanded1{
                                MyViewBuilder(title: Text("2"), content: Text("1. Оказание первой помощи")).buildBlue1Text(isTextExpanded: isTextExpanded2)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded2.toggle()
                                        }
                                    }
                                if isTextExpanded2 {
                                    MyViewBuilder(title: Text("2"),
                                                  content: Text(LocalizedStringKey("Prikaz47Alg2B0G0S2"))).buildGrayInHiddenText()
                                }
                                MyViewBuilder(title: Text("2"), content: Text("2. Оказание первой медицинской помощи")).buildBlue1Text(isTextExpanded: isTextExpanded3)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded3.toggle()
                                        }
                                    }
                                if isTextExpanded3 {
                                    MyViewBuilder(title: Text("2"),
                                                  content: Text(LocalizedStringKey("Prikaz47Alg2B0G0S3"))).buildGrayInHiddenText()
                                }
                                MyViewBuilder(title: Text("2"), content: Text("3. Оказание медицинской помощи бригадой СМП ")).buildBlue1Text(isTextExpanded: isTextExpanded4)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded4.toggle()
                                        }
                                    }
                                if isTextExpanded4 {
                                    MyViewBuilder(title: Text("2"),
                                                  content: Text(LocalizedStringKey("Prikaz47Alg2B0G0S4"))).buildGrayInHiddenText()
                                }
                            }
                        }
                        .padding(5)
                    }
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack {
                            MyViewBuilder(title: Text("2"), content: Text("Стационарный этап")).buildBlue1Text(isTextExpanded: isTextExpanded5)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded5.toggle()
                                        if isTextExpanded5 == false {
                                            isTextExpanded6 = false
                                            isTextExpanded7 = false
                                        }
                                    }
                                }
                            if isTextExpanded5{
                                MyViewBuilder(title: Text("2"),
                                              content: Text(LocalizedStringKey("Prikaz47Alg2B0G0S5"))).buildGrayInHiddenText()
                                MyViewBuilder(title: Text("2"), content: Text("I. Высокотехнологические методы лечения, в том числе хирургические.")).buildBlue1Text(isTextExpanded: isTextExpanded6)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded6.toggle()
                                        }
                                    }
                                if isTextExpanded6 {
                                    MyViewBuilder(title: Text("2"),
                                                  content: Text(LocalizedStringKey("Prikaz47Alg2B0G0S6"))).buildGrayInHiddenText()
                                }
                                MyViewBuilder(title: Text("2"), content: Text("II. Медикаментозное лечение")).buildBlue1Text(isTextExpanded: isTextExpanded7)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded7.toggle()
                                        }
                                    }
                                if isTextExpanded7 {
                                    MyViewBuilder(title: Text("2"),
                                                  content: Text(LocalizedStringKey("Prikaz47Alg2B0G0S7"))).buildGrayInHiddenText()
                                }
                                
                            }
                        }
                        .padding(5)
                    }
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack {
                            MyViewBuilder(title: Text("2"), content: Text("Постгоспитальный этап")).buildBlue1Text(isTextExpanded: isTextExpanded8)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded8.toggle()
                                        
                                    }
                                }
                            if isTextExpanded8 {
                                MyViewBuilder(title: Text("2"),
                                              content: Text(LocalizedStringKey("Prikaz47Alg2B0G0S8"))).buildGrayInHiddenText()
                            }
                            
                        }
                        .padding(5)
                    }
                    
                    Spacer()
                    Spacer()
                }
                .padding(.horizontal, 10)
                .padding(.bottom, 65)
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
                    Text("Глава 2")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Этапы оказания медицинской помощи пациентам с ОНМК»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            
        }
    }
    
}
#Preview {
    Prikaz47Alg2View()
}

