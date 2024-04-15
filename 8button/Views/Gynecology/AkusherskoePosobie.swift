//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct AkusherskoePosobie: View {
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
    var body: some View {
            ScrollView {
                VStack (spacing: 5) {
                    
                    MyViewBuilder(title: Text("1"), content: Text("**Акушерские пособия** – это ручные манипуляции, которые выполняются во время родов без помощи инструментов с целью защиты промежности, профилактики плодового травматизма и ускорения окончания родов. Акушерские ручные пособия оказывают при головных и тазовых вставлениях.")).buildGrayText()
                    NavigationLink (destination: PosobieGolovnoe()) {
                        MyViewBuilder(title: Text("1"), content: Text("Ручное пособие при головном предлежании")).buildBlue591NavigationText()
                    }
                    NavigationLink (destination: PosobiePlechiki()) {
                        MyViewBuilder(title: Text("1"), content: Text("Ручное пособие при дистоции плечиков")).buildBlue591NavigationText()
                    }
                    NavigationLink (destination: PosobieTaz()) {
                        MyViewBuilder(title: Text("1"), content: Text("Ручное пособие при тазовом предлежании")).buildBlue591NavigationText()
                    }
                    
                    
                    
                }
                .padding(.horizontal, 10)
                .padding(.bottom, 55)
            }
            //        .padding(.horizontal, 200)
//            .edgesIgnoringSafeArea(.bottom)
            .background(Color.back)
        
        .navigationBarBackButtonHidden(false)
        .navigationBarTitle("", displayMode: .inline)
        .toolbar {
            ToolbarItem(placement: .principal) {
                VStack {
                    Text("Акушерское пособие")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("""
                    «Ручные манипуляции»
                    """)
                    .font(.caption2)
                    .foregroundStyle(Color.toolBar)
                }
            }
            
        }
    }
    
}
#Preview {
    AkusherskoePosobie()
}

