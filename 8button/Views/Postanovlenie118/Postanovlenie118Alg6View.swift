//
//  Postanovlenie118Alg6View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct Postanovlenie118Alg6View: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @State private var isTextExpanded1 = false
    @State private var isTextExpanded2 = false
    @State private var isTextExpanded3 = false
    @State private var isTextExpanded4 = false
    @State private var isTextExpanded5 = false
    @State private var isTextExpanded6 = false
    
    var body: some View {
        NavigationStack {
            ScrollView {
                Spacer()
                VStack (spacing: 5) {
                    MyViewBuilder(title: Text(LocalizedStringKey("Post118Alg6B1G0S0")), content: Text(LocalizedStringKey("Post118Alg6B1G0S1"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded1)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded1.toggle()
                            }
                        }
                    MyViewBuilder(title: Text(LocalizedStringKey("Post118Alg6B2G0S0")), content: Text(LocalizedStringKey("Post118Alg6B2G0S1"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded2)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded2.toggle()
                            }
                        }
                    
                   
                    MyViewBuilder(title: Text(LocalizedStringKey("Post118Alg6B3G0S0")), content: Text(LocalizedStringKey("Post118Alg6B3G0S0"))).buildBlue591Text(isTextExpanded: isTextExpanded3)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded3.toggle()
                                if isTextExpanded3 == false {
                                    isTextExpanded4 = false
                                    isTextExpanded5 = false
                                }
                            }
                        }
                    
                    if isTextExpanded3 {
                        MyViewBuilder(title: Text(LocalizedStringKey("Post118Alg6B3G1S0")), content: Text(LocalizedStringKey("Post118Alg6B3G1S1"))).buildDualBlockBlueGrayLowLevel(isTextExpanded: isTextExpanded4)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded4.toggle()
                                }
                            }
                        
                        MyViewBuilder(title: Text(LocalizedStringKey("Post118Alg6B3G2S0")), content: Text(LocalizedStringKey("Post118Alg6B3G2S1"))).buildDualBlockBlueGrayLowLevel(isTextExpanded: isTextExpanded5)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded5.toggle()
                                }
                            }
                        
                    }
                    
                    MyViewBuilder(title: Text(LocalizedStringKey("Post118Alg6B4G0S0")), content: Text(LocalizedStringKey("Post118Alg6B4G0S1"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded6)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded6.toggle()
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
        //            .toolbar {
        //                ToolbarItem(placement: .automatic) {
        //                    HStack {
        //                        VStack (alignment: .center){
        //                            Text("Глава 6")
        //                                .font(.headline)
        //                                .bold()
        //                            Text("«Неотложные неврологические состояния»")
        //                                .font(.caption2)
        //                        }
        //                        .multilineTextAlignment(.center)
        //                        Spacer(minLength: 30)
        //                        
        //                        NavigationLink(destination: ImageDetailPrikaz1013Alg1()) {
        //                            Image(systemName: "doc.text")
        //                                .foregroundColor(.blue)
        //                            
        //                        }
        //                    }
        //            }
        //        }
        .toolbar {
            ToolbarItem(placement: .principal) {
                VStack {
                    Text("Глава 6")
                        .font(.headline)
                        .bold()
                    Text("""
                        «Неотложные неврологические состояния»
                        """)
                    .font(.caption2)
                }
            }
            
        }
    }
}
#Preview {
    Postanovlenie118Alg6View()
}

