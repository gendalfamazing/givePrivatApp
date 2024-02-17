//
//  Postanovlenie118Alg3View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct Postanovlenie118Alg3View: View {
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
    var body: some View {
        NavigationStack {
            ScrollView {
                Spacer()
                VStack {
                    MyViewBuilder(title: Text("3"), content: Text(LocalizedStringKey("Post118Alg3B1G0S0"))).buildBlue1Text(isTextExpanded: isTextExpanded1)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded1.toggle()
                            }
                        }
                    
                    if isTextExpanded1 {
                        MyViewBuilder(title: Text("3"), content: Text(LocalizedStringKey("Post118Alg3B1G0S1"))).buildGrayText()
                    }
                    
                    MyViewBuilder(title: Text("3"), content: Text(LocalizedStringKey("Post118Alg3B2G0S0"))).buildBlue1Text(isTextExpanded: isTextExpanded2)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded2.toggle()
                            }
                        }
                    
                    if isTextExpanded2 {
                        MyViewBuilder(title: Text("3"), content: Text(LocalizedStringKey("Post118Alg3B2G0S1"))).buildGrayText()
                        
                        MyViewBuilder(title: Text("3"), content: Text(LocalizedStringKey("Post118Alg3B2G0S2"))).buildGrayText()
                        MyViewBuilder(title: Text("3"), content: Text(LocalizedStringKey("Post118Alg3B2G0S3"))).buildGrayText()
                        
                        MyViewBuilder(title: Text("3"), content: Text(LocalizedStringKey("Post118Alg3B2G0S4"))).buildGrayText()
                        
                        MyViewBuilder(title: Text("3"), content: Text(LocalizedStringKey("Post118Alg3B2G0S5"))).buildGrayText()
                    }
                    
                    MyViewBuilder(title: Text("3"), content: Text(LocalizedStringKey("Post118Alg3B3G0S0"))).buildBlue1Text(isTextExpanded: isTextExpanded3)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded3.toggle()
                            }
                        }
                    if isTextExpanded3 {
                        MyViewBuilder(title: Text("3"), content: Text(LocalizedStringKey("Post118Alg3B3G0S1"))).buildGrayText()
                        
                        MyViewBuilder(title: Text("3"), content: Text(LocalizedStringKey("Post118Alg3B3G0S2"))).buildGrayText()
                    }
                    
                    MyViewBuilder(title: Text("3"), content: Text(LocalizedStringKey("Post118Alg3B4G0S0"))).buildBlue1Text(isTextExpanded: isTextExpanded4)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded4.toggle()
                            }
                        }
                    if isTextExpanded4 {
                        MyViewBuilder(title: Text("3"), content: Text(LocalizedStringKey("Post118Alg3B4G0S1"))).buildGrayText()
                        
                        MyViewBuilder(title: Text("3"), content: Text(LocalizedStringKey("Post118Alg3B4G0S2"))).buildGrayText()
                    }
                    
                    MyViewBuilder(title: Text("3"), content: Text(LocalizedStringKey("Post118Alg3B5G0S0"))).buildBlue1Text(isTextExpanded: isTextExpanded7)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded7.toggle()
                            }
                        }
                    if isTextExpanded7 {
                        MyViewBuilder(title: Text("3"), content: Text(LocalizedStringKey("Post118Alg3B5G0S1"))).buildGrayText()
                    }
                    
                    MyViewBuilder(title: Text("3"), content: Text(LocalizedStringKey("Post118Alg3B6G0S0"))).buildBlue1Text(isTextExpanded: isTextExpanded5)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded5.toggle()
                            }
                        }
                    if isTextExpanded5 {
                        MyViewBuilder(title: Text("3"), content: Text(LocalizedStringKey("Post118Alg3B6G0S1"))).buildGrayText()
                        
                        MyViewBuilder(title: Text("3"), content: Text(LocalizedStringKey("Post118Alg3B6G0S2"))).buildGrayText()
                        
                        MyViewBuilder(title: Text("3"), content: Text(LocalizedStringKey("Post118Alg3B6G0S3"))).buildGrayText()
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
                    Text("Глава 3")
                        .font(.headline)
                        .bold()
                    Text("""
                        «Остановка кровообращения»
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
    Postanovlenie118Alg3View()
}
