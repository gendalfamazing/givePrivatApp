//
//  Postanovlenie118View.swift
//  7button
//
//  Created by Artur Vladymcev on 21.11.23.
//

import SwiftUI

struct Prikaz47View: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
            ScrollView {
                Spacer()
                VStack (spacing: 5) {
                    NavigationLink(destination: Prikaz47Alg1View()) {
                        MyViewBuilder(title: Text("01"), content:Text("«Цели оказания медицинской помощи пациентам с ОНМК»")).buildTitleBlueText()
                    }
                    
                    NavigationLink(destination: Prikaz47Alg2View()) {
                        MyViewBuilder(title: Text("02"), content:Text("«Этапы оказания медицинской помощи пациентам с ОНМК»")).buildTitleBlueText()
                    }
                    
                    NavigationLink(destination: Prikaz47Alg3View()) {
                        MyViewBuilder(title: Text("03"), content:Text("«Индикаторы качества оказания медицинской помощи пациетам с ОНМК региона»")).buildTitleBlueText()
                    }
                  
                }
                .padding(.horizontal, 10)
                .padding(.bottom, 55)
                .navigationBarTitle("", displayMode: .inline)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        VStack {
                            Text("Приказ МЗ РБ № 47")
                                .font(.headline)
                                .foregroundStyle(Color.toolBar)
                                .bold()
                            Text("""
                            «Дорожная карта»
                            """)
                            .font(.caption2)
                            .foregroundStyle(Color.toolBar)
                        }
                    }
                    
                }
                
            }
//            .padding(.horizontal, 200)
//            .edgesIgnoringSafeArea(.bottom)
            .background(Color.back)
        
    }
}

#Preview {
    Prikaz47View()
}
