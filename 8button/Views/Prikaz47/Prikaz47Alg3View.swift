//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct Prikaz47Alg3View: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @State private var isTextExpanded1 = false
    @State private var isTextExpanded2 = false
    @State private var isTextExpanded3 = false
    @State private var isTextExpanded4 = false
    // Text(LocalizedStringKey("Prikaz47Alg3B0G0S1"))).buildGrayText()
    var body: some View {
        NavigationStack {
            ScrollView {
                Spacer()
                VStack {
                    MyViewBuilder(title: Text("3"),
                                  content: Text(LocalizedStringKey("Prikaz47Alg3B0G0S1"))).buildGrayText()
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack {
                            MyViewBuilder(title: Text("3"), content: Text("1. Амбулаторный этап")).buildBlue1Text(isTextExpanded: isTextExpanded1)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded1.toggle()
                                    }
                                }
                            if isTextExpanded1{
                                MyViewBuilder(title: Text("3"),
                                              content: Text(LocalizedStringKey("Prikaz47Alg3B0G0S2"))).buildGrayInHiddenText()
                            }
                        }
                        .padding(5)
                    }
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack {
                            MyViewBuilder(title: Text("3"), content: Text("2. Этап СМП")).buildBlue1Text(isTextExpanded: isTextExpanded2)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded2.toggle()
                                    }
                                }
                            if isTextExpanded2{
                                MyViewBuilder(title: Text("3"),
                                              content: Text(LocalizedStringKey("Prikaz47Alg3B0G0S3"))).buildGrayInHiddenText()
                            }
                        }
                        .padding(5)
                    }
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack {
                            MyViewBuilder(title: Text("3"), content: Text("3. Стационарный этап")).buildBlue1Text(isTextExpanded: isTextExpanded3)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded3.toggle()
                                    }
                                }
                            if isTextExpanded3{
                                MyViewBuilder(title: Text("3"),
                                              content: Text(LocalizedStringKey("Prikaz47Alg3B0G0S4"))).buildGrayInHiddenText()
                            }
                        }
                        .padding(5)
                    }
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack {
                            MyViewBuilder(title: Text("3"), content: Text("4. Региональные показатели")).buildBlue1Text(isTextExpanded: isTextExpanded4)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded4.toggle()
                                    }
                                }
                            if isTextExpanded4{
                                MyViewBuilder(title: Text("3"),
                                              content: Text(LocalizedStringKey("Prikaz47Alg3B0G0S5"))).buildGrayInHiddenText()
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
                    Text("Глава 3")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Индикаторы качества оказания медицинской помощи пациетам с ОНМК региона»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            
        }
    }
    
}
#Preview {
    Prikaz47Alg3View()
}

