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
        NavigationStack {
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
                .navigationBarTitle("Приказ № 47", displayMode: .inline)
                .padding(.horizontal, 10)
                .padding(.bottom, 65)
            }
//            .padding(.horizontal, 200)
//            .edgesIgnoringSafeArea(.bottom)
            .background(Color.back)
        }
    }
}

#Preview {
    Prikaz47View()
}
