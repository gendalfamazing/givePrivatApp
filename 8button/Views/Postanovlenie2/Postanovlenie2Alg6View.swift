//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct Postanovlenie2Alg6View: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @State private var isTextExpanded1 = false
    @State private var isTextExpanded2 = false
    
    var body: some View {
        NavigationStack {
            ScrollView {
                Spacer()
                VStack {
                    MyViewBuilder(title: Text("6"), 
                                  content: Text(LocalizedStringKey("Post2Alg6B0G0S1"))).buildGrayText()
                    MyViewBuilder(title: Text("6"),
                                  content: Text(LocalizedStringKey("Post2Alg6B0G0S2"))).buildGrayText()
                    MyViewBuilder(title: Text("6"),
                                  content: Text(LocalizedStringKey("Post2Alg6B0G0S3"))).buildGrayText()
                    MyViewBuilder(title: Text("6"),
                                  content: Text(LocalizedStringKey("Post2Alg6B0G0S4"))).buildGrayText()
                    
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
                    Text("Глава 6")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Взаимодействие службы СМП с бригадами НМП»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            
        }
    }
    
}
#Preview {
    Postanovlenie2Alg6View()
}

