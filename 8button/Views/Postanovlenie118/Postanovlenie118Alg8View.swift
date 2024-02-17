//
//  Postanovlenie118Alg8View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct Postanovlenie118Alg8View: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @State private var isTextExpanded1 = false
    @State private var isTextExpanded2 = false
    
    
    
    var body: some View {
        NavigationStack {
            ScrollView {
                Spacer()
                VStack {
                    MyViewBuilder(title: Text("8"), content: Text(LocalizedStringKey("Post118Alg8B1G0S0"))).buildBlue1Text(isTextExpanded: isTextExpanded1)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded1.toggle()
                            }
                        }
                    
                    if isTextExpanded1 {
                        MyViewBuilder(title: Text("8"), content: Text(LocalizedStringKey("Post118Alg8B1G0S1"))).buildGrayText()
                        
                        MyViewBuilder(title: Text("8"), content: Text(LocalizedStringKey("Post118Alg8B1G0S2"))).buildGrayText()
                    }
                    
                    MyViewBuilder(title: Text("8"), content: Text(LocalizedStringKey("Post118Alg8B2G0S0"))).buildBlue1Text(isTextExpanded: isTextExpanded2)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded2.toggle()
                            }
                        }
                    
                    if isTextExpanded2 {
                        MyViewBuilder(title: Text("8"), content: Text(LocalizedStringKey("Post118Alg8B2G0S1"))).buildGrayText()
                        
                        MyViewBuilder(title: Text("8"), content: Text(LocalizedStringKey("Post118Alg8B2G0S2"))).buildGrayText()
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
                    Text("Глава 8")
                        .font(.headline)
                        .bold()
                    Text("""
                        «Неотложные состояния при сахарном диабете»
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
    Postanovlenie118Alg8View()
}

