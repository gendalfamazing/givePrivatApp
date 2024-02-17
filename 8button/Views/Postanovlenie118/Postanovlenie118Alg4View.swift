//
//  Postanovlenie118Alg4View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct Postanovlenie118Alg4View: View {
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
    @State private var isTextExpanded9 = false
    @State private var isTextExpanded10 = false
    @State private var isTextExpanded11 = false
    @State private var isTextExpanded12 = false
    @State private var isTextExpanded13 = false
    @State private var isTextExpanded14 = false
    var body: some View {
        NavigationStack {
            ScrollView {
                Spacer()
                VStack {
                    
                    MyViewBuilder(title: Text("4"), content: Text(LocalizedStringKey("Post118Alg4B1G0S0"))).buildBlue1Text(isTextExpanded: isTextExpanded1)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded1.toggle()
                            }
                        }
                    
                    if isTextExpanded1 {
                        
                        MyViewBuilder(title: Text("4"), content: Text(LocalizedStringKey("Post118Alg4B1G0S1"))).buildGrayText()
                    }
                    
                    MyViewBuilder(title: Text("4"), content: Text(LocalizedStringKey("Post118Alg4B2G0S0"))).buildBlue1Text(isTextExpanded: isTextExpanded2)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded2.toggle()
                            }
                        }
                    
                    if isTextExpanded2 {
                        MyViewBuilder(title: Text("4"), content: Text(LocalizedStringKey("Post118Alg4B2G0S1"))).buildGrayText()
                    }
                    
                    MyViewBuilder(title: Text("4"), content: Text(LocalizedStringKey("Post118Alg4B3G0S0"))).buildBlue1Text(isTextExpanded: isTextExpanded3)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded3.toggle()
                            }
                        }
                    
                    if isTextExpanded3 {
                        MyViewBuilder(title: Text("4"), content: Text(LocalizedStringKey("Post118Alg4B3G0S1"))).buildGrayText()
                    }
                    
                    MyViewBuilder(title: Text("4"), content: Text(LocalizedStringKey("Post118Alg4B4G0S0"))).buildBlue1Text(isTextExpanded: isTextExpanded4)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded4.toggle()
                            }
                        }
                    
                    if isTextExpanded4 {
                        MyViewBuilder(title: Text("4"), content: Text(LocalizedStringKey("Post118Alg4B4G0S1"))).buildGrayText()
                    }
                    
                    MyViewBuilder(title: Text("4"), content: Text(LocalizedStringKey("Post118Alg4B5G0S0"))).buildBlue1Text(isTextExpanded: isTextExpanded14)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded14.toggle()
                            }
                        }
                    
                    if isTextExpanded14 {
                        MyViewBuilder(title: Text("4"), content: Text(LocalizedStringKey("Post118Alg4B5G0S1"))).buildGrayText()
                    }
                    
                    MyViewBuilder(title: Text("4"), content: Text(LocalizedStringKey("Post118Alg4B6G0S0"))).buildBlue1Text(isTextExpanded: isTextExpanded5)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded5.toggle()
                            }
                        }
                    
                    if isTextExpanded5 {
                        MyViewBuilder(title: Text("4"), content: Text(LocalizedStringKey("Post118Alg4B6G0S1"))).buildGrayText()
                    }
                    
                    MyViewBuilder(title: Text("4"), content: Text(LocalizedStringKey("Post118Alg4B7G0S0"))).buildBlue1Text(isTextExpanded: isTextExpanded6)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded6.toggle()
                            }
                        }
                    
                    if isTextExpanded6 {
                        MyViewBuilder(title: Text("4"), content: Text(LocalizedStringKey("Post118Alg4B7G0S1"))).buildGrayText()
                    }
                    
                    MyViewBuilder(title: Text("4"), content: Text(LocalizedStringKey("Post118Alg4B8G0S0"))).buildBlue1Text(isTextExpanded: isTextExpanded7)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded7.toggle()
                            }
                        }
                    
                    if isTextExpanded7 {
                        MyViewBuilder(title: Text("4"), content: Text(LocalizedStringKey("Post118Alg4B8G0S1"))).buildGrayText()
                        
                        MyViewBuilder(title: Text("4"), content: Text(LocalizedStringKey("Post118Alg4B8G0S2"))).buildGrayText()
                        
                        MyViewBuilder(title: Text("4"), content: Text(LocalizedStringKey("Post118Alg4B8G0S3"))).buildGrayText()
                    }
                    
                    MyViewBuilder(title: Text("4"), content: Text(LocalizedStringKey("Post118Alg4B9G0S0"))).buildBlue1Text(isTextExpanded: isTextExpanded8)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded8.toggle()
                            }
                        }
                    
                    if isTextExpanded8 {
                        MyViewBuilder(title: Text("4"), content: Text(LocalizedStringKey("Post118Alg4B9G0S1"))).buildGrayText()
                        
                        MyViewBuilder(title: Text("4"), content: Text(LocalizedStringKey("Post118Alg4B9G0S2"))).buildGrayText()
                        
                        MyViewBuilder(title: Text("4"), content: Text(LocalizedStringKey("Post118Alg4B9G0S3"))).buildGrayText()
                    }
                    
                    MyViewBuilder(title: Text("4"), content: Text(LocalizedStringKey("Post118Alg4B10G0S0"))).buildBlue1Text(isTextExpanded: isTextExpanded9)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded9.toggle()
                            }
                        }
                    
                    if isTextExpanded9 {
                        MyViewBuilder(title: Text("4"), content: Text(LocalizedStringKey("Post118Alg4B10G0S1"))).buildGrayText()
                    }
                    
                    MyViewBuilder(title: Text("4"), content: Text(LocalizedStringKey("Post118Alg4B11G0S0"))).buildBlue1Text(isTextExpanded: isTextExpanded10)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded10.toggle()
                            }
                        }
                    
                    if isTextExpanded10 {
                        MyViewBuilder(title: Text("4"), content: Text(LocalizedStringKey("Post118Alg4B11G0S1"))).buildGrayText()
                        
                        MyViewBuilder(title: Text("4"), content: Text(LocalizedStringKey("Post118Alg4B11G0S2"))).buildGrayText()
                    }
                    
                    MyViewBuilder(title: Text("4"), content: Text(LocalizedStringKey("Post118Alg4B12G0S0"))).buildBlue1Text(isTextExpanded: isTextExpanded11)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded11.toggle()
                            }
                        }
                    
                    if isTextExpanded11 {
                        MyViewBuilder(title: Text("4"), content: Text(LocalizedStringKey("Post118Alg4B12G0S1"))).buildGrayText()
                    }
                    
                    MyViewBuilder(title: Text("4"), content: Text(LocalizedStringKey("Post118Alg4B13G0S0"))).buildBlue1Text(isTextExpanded: isTextExpanded12)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded12.toggle()
                            }
                        }
                    
                    if isTextExpanded12 {
                        MyViewBuilder(title: Text("4"), content: Text(LocalizedStringKey("Post118Alg4B13G0S1"))).buildGrayText()
                    }
                    
                    MyViewBuilder(title: Text("4"), content: Text(LocalizedStringKey("Post118Alg4B14G0S0"))).buildBlue1Text(isTextExpanded: isTextExpanded13)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded13.toggle()
                            }
                        }
                    
                    if isTextExpanded13 {
                        MyViewBuilder(title: Text("4"), content: Text(LocalizedStringKey("Post118Alg4B14G0S1"))).buildGrayText()
                        
                        MyViewBuilder(title: Text("4"), content: Text(LocalizedStringKey("Post118Alg4B14G0S2"))).buildGrayText()
                    }
                    
                    Spacer()
                    Spacer()
                }
                .padding(.horizontal, 10)
                .padding(.bottom, 65)
            }
            //            .padding(.horizontal, 200)
            .edgesIgnoringSafeArea(.bottom)
            .background(Color.back)
        }
        .navigationBarBackButtonHidden(false)
        .navigationBarTitle("",displayMode: .inline)
        .toolbar {
            ToolbarItem(placement: .principal) {
                VStack {
                    Text("Глава 4")
                        .font(.headline)
                        .bold()
                    Text("""
                        «Неотложные состояния в кардиологии»
                        """)
                    .font(.caption2)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                Image(systemName: "doc.text")
                    .foregroundColor(.blue)
                
                
            }
        }
    }
    
}
#Preview {
    Postanovlenie118Alg4View()
}
