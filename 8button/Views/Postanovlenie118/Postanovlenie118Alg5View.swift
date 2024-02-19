//
//  Postanovlenie118Alg5View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct Postanovlenie118Alg5View: View {
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
    @State private var isTextExpanded15 = false
    @State private var isTextExpanded16 = false
    @State private var isTextExpanded17 = false
    @State private var isTextExpanded18 = false
    @State private var isTextExpanded19 = false
    @State private var isTextExpanded20 = false
    @State private var isTextExpanded21 = false
    
    var body: some View {
        NavigationStack {
            ScrollView {
                Spacer()
                VStack (spacing: 5) {
                    MyViewBuilder(title: Text(LocalizedStringKey("Post118Alg5B1G0S0")), content: Text(LocalizedStringKey("Post118Alg5B1G0S1"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded1)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded1.toggle()
                            }
                        }
                    MyViewBuilder(title: Text(LocalizedStringKey("Post118Alg5B2G0S0")), content: Text(LocalizedStringKey("Post118Alg5B2G0S1"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded2)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded2.toggle()
                            }
                        }
                    
                    if isTextExpanded2 {
                        
                        NavigationLink (destination: Postanovlenie118Alg6View()) {
                            MyViewBuilder(title: Text("5"), content: Text(LocalizedStringKey("Post118Alg5B2G0S3"))).buildNavigationText()
                        }
                    }
                    MyViewBuilder(title: Text(LocalizedStringKey("Post118Alg5B3G0S0")), content: Text(LocalizedStringKey("Post118Alg5B3G0S1"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded3)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded3.toggle()
                            }
                        }
                    MyViewBuilder(title: Text(LocalizedStringKey("Post118Alg5B4G0S0")), content: Text(LocalizedStringKey("Post118Alg5B4G0S1"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded4)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded4.toggle()
                            }
                        }
                    MyViewBuilder(title: Text(LocalizedStringKey("Post118Alg5B5G0S0")), content: Text(LocalizedStringKey("Post118Alg5B5G0S1"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded5)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded5.toggle()
                            }
                        }
                    MyViewBuilder(title: Text(LocalizedStringKey("Post118Alg5B6G0S0")), content: Text(LocalizedStringKey("Post118Alg5B6G0S1"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded6)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded6.toggle()
                            }
                        }
                    MyViewBuilder(title: Text(LocalizedStringKey("Post118Alg5B7G0S0")), content: Text(LocalizedStringKey("Post118Alg5B7G0S1"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded7)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded7.toggle()
                            }
                        }
                    MyViewBuilder(title: Text(LocalizedStringKey("Post118Alg5B8G0S0")), content: Text(LocalizedStringKey("Post118Alg5B8G0S1"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded8)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded8.toggle()
                            }
                        }
                    MyViewBuilder(title: Text(LocalizedStringKey("Post118Alg5B9G0S0")), content: Text(LocalizedStringKey("Post118Alg5B9G0S1"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded9)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded9.toggle()
                            }
                        }
                    
                    if isTextExpanded9 {
                        NavigationLink (destination: Postanovlenie118Alg4View()) {
                            MyViewBuilder(title: Text("5"), content: Text(LocalizedStringKey("Post118Alg5B9G0S2"))).buildNavigationText()
                        }
                    }
                    MyViewBuilder(title: Text(LocalizedStringKey("Post118Alg5B10G0S0")), content: Text(LocalizedStringKey("Post118Alg5B10G0S1"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded10)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded10.toggle()
                            }
                        }
                    MyViewBuilder(title: Text(LocalizedStringKey("Post118Alg5B11G0S0")), content: Text(LocalizedStringKey("Post118Alg5B11G0S1"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded11)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded11.toggle()
                            }
                        }
                    MyViewBuilder(title: Text(LocalizedStringKey("Post118Alg5B12G0S0")), content: Text(LocalizedStringKey("Post118Alg5B12G0S1"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded12)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded12.toggle()
                            }
                        }
                    
                    if isTextExpanded12 {
                        NavigationLink (destination: Postanovlenie118Alg4View()) {
                            MyViewBuilder(title: Text("5"), content: Text(LocalizedStringKey("Post118Alg5B12G0S2"))).buildNavigationText()
                        }
                    }
                    MyViewBuilder(title: Text(LocalizedStringKey("Post118Alg5B13G0S0")), content: Text(LocalizedStringKey("Post118Alg5B13G0S1"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded13)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded13.toggle()
                            }
                        }
                    MyViewBuilder(title: Text(LocalizedStringKey("Post118Alg5B14G0S0")), content: Text(LocalizedStringKey("Post118Alg5B14G0S1"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded14)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded14.toggle()
                            }
                        }
                    MyViewBuilder(title: Text(LocalizedStringKey("Post118Alg5B15G0S0")), content: Text(LocalizedStringKey("Post118Alg5B15G0S1"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded15)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded15.toggle()
                            }
                        }
                    MyViewBuilder(title: Text(LocalizedStringKey("Post118Alg5B16G0S0")), content: Text(LocalizedStringKey("Post118Alg5B16G0S1"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded16)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded16.toggle()
                            }
                        }
                    MyViewBuilder(title: Text(LocalizedStringKey("Post118Alg5B17G0S0")), content: Text(LocalizedStringKey("Post118Alg5B17G0S1"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded17)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded17.toggle()
                            }
                        }
                    MyViewBuilder(title: Text(LocalizedStringKey("Post118Alg5B18G0S0")), content: Text(LocalizedStringKey("Post118Alg5B18G0S1"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded18)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded18.toggle()
                            }
                        }
                    MyViewBuilder(title: Text(LocalizedStringKey("Post118Alg5B19G0S0")), content: Text(LocalizedStringKey("Post118Alg5B19G0S1"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded19)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded19.toggle()
                            }
                        }
                    MyViewBuilder(title: Text(LocalizedStringKey("Post118Alg5B20G0S0")), content: Text(LocalizedStringKey("Post118Alg5B20G0S1"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded20)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded20.toggle()
                            }
                        }
                    MyViewBuilder(title: Text(LocalizedStringKey("Post118Alg5B21G0S0")), content: Text(LocalizedStringKey("Post118Alg5B21G0S1"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded21)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded21.toggle()
                            }
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
                    Text("Глава 5")
                        .font(.headline)
                        .bold()
                    Text("""
                        «Оказание медицинской помощи в детской хирургии»
                        """)
                    .font(.caption2)
                }
            }
            
        }
        
    }
    
}
#Preview {
    Postanovlenie118Alg5View()
}

