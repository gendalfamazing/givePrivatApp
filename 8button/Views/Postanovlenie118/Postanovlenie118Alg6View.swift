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
                VStack {
                    MyViewBuilder(title: Text("6"), content: Text(LocalizedStringKey("Post118Alg6B1G0S0"))).buildBlue1Text(isTextExpanded: isTextExpanded1)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded1.toggle()
                            }
                        }
                    
                    if isTextExpanded1 {
                        MyViewBuilder(title: Text("6"), content: Text(LocalizedStringKey("Post118Alg6B1G0S1"))).buildGrayText()
                        
                        MyViewBuilder(title: Text("6"), content: Text(LocalizedStringKey("Post118Alg6B1G0S2"))).buildGrayText()
                        
                        MyViewBuilder(title: Text("6"), content: Text(LocalizedStringKey("Post118Alg6B1G0S3"))).buildGrayText()
                        
                        MyViewBuilder(title: Text("6"), content: Text(LocalizedStringKey("Post118Alg6B1G0S4"))).buildGrayText()
                        
                        MyViewBuilder(title: Text("6"), content: Text(LocalizedStringKey("Post118Alg6B1G0S5"))).buildGrayText()
                        
                        MyViewBuilder(title: Text("6"), content: Text(LocalizedStringKey("Post118Alg6B1G0S6"))).buildGrayText()
                        
                        MyViewBuilder(title: Text("6"), content: Text(LocalizedStringKey("Post118Alg6B1G0S7"))).buildGrayText()
                    }
                    
                    MyViewBuilder(title: Text("6"), content: Text(LocalizedStringKey("Post118Alg6B2G0S0"))).buildBlue1Text(isTextExpanded: isTextExpanded2)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded2.toggle()
                            }
                        }
                    
                    if isTextExpanded2 {
                        MyViewBuilder(title: Text("6"), content: Text(LocalizedStringKey("Post118Alg6B2G0S1"))).buildGrayText()
                    }
                    
                    MyViewBuilder(title: Text("6"), content: Text(LocalizedStringKey("Post118Alg6B3G0S0"))).buildBlue1Text(isTextExpanded: isTextExpanded3)
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
                        MyViewBuilder(title: Text("6"), content: Text(LocalizedStringKey("Post118Alg6B3G1S0"))).buildGreen2Text(isTextExpanded: isTextExpanded4)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded4.toggle()
                                }
                            }
                        
                        if isTextExpanded4 {
                            
                            MyViewBuilder(title: Text("6"), content: Text(LocalizedStringKey("Post118Alg6B3G1S1"))).buildGrayText()
                            
                            MyViewBuilder(title: Text("6"), content: Text(LocalizedStringKey("Post118Alg6B3G1S2"))).buildGrayText()
                            
                            MyViewBuilder(title: Text("6"), content: Text(LocalizedStringKey("Post118Alg6B3G1S3"))).buildGrayText()
                            
                        }
                        
                        MyViewBuilder(title: Text("6"), content: Text(LocalizedStringKey("Post118Alg6B3G2S0"))).buildGreen2Text(isTextExpanded: isTextExpanded5)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded5.toggle()
                                }
                            }
                        
                        if isTextExpanded5 {
                            MyViewBuilder(title: Text("6"), content: Text(LocalizedStringKey("Post118Alg6B3G2S1"))).buildGrayText()
                        }
                    }
                    
                    MyViewBuilder(title: Text("6"), content: Text(LocalizedStringKey("Post118Alg6B4G0S0"))).buildBlue1Text(isTextExpanded: isTextExpanded6)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded6.toggle()
                            }
                        }
                    
                    if isTextExpanded6 {
                        MyViewBuilder(title: Text("6"), content: Text(LocalizedStringKey("Post118Alg6B4G0S1"))).buildGrayText()
                        
                        MyViewBuilder(title: Text("6"), content: Text(LocalizedStringKey("Post118Alg6B4G0S2"))).buildGrayText()
                        
                        MyViewBuilder(title: Text("6"), content: Text(LocalizedStringKey("Post118Alg6B4G0S3"))).buildGrayText()
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
            ToolbarItem(placement: .navigationBarTrailing) {
                Image(systemName: "doc.text")
                    .foregroundColor(.blue)
                
                
            }
        }
    }
}
#Preview {
    Postanovlenie118Alg6View()
}

