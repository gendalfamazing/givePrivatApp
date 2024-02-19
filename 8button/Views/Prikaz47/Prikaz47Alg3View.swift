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
                VStack (spacing: 5) {
                    MyViewBuilder(title: Text("3"),
                                  content: Text(LocalizedStringKey("Prikaz47Alg3B0G0S1"))).buildGrayText()
                    
                    MyViewBuilder(title: Text("1. Амбулаторный этап"), content: Text(LocalizedStringKey("Prikaz47Alg3B0G0S2"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded1)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded1.toggle()
                                    }
                                }
                    MyViewBuilder(title: Text("2. Этап СМП"), content: Text(LocalizedStringKey("Prikaz47Alg3B0G0S3"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded2)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded2.toggle()
                                    }
                                }
                    MyViewBuilder(title: Text("3. Стационарный этап"), content: Text(LocalizedStringKey("Prikaz47Alg3B0G0S4"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded3)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded3.toggle()
                                    }
                                }
                    MyViewBuilder(title: Text("4. Региональные показатели"), content: Text(LocalizedStringKey("Prikaz47Alg3B0G0S5"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded4)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded4.toggle()
                                    }
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

