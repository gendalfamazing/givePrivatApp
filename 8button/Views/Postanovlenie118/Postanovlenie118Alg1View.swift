//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct Postanovlenie118Alg1View: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @State private var isTextExpanded1 = false
    @State private var isTextExpanded2 = false
    
    var body: some View {
        NavigationStack {
            ScrollView {
                Spacer()
                VStack (spacing: 5) {
                    MyViewBuilder(title: Text("1"), content: Text(LocalizedStringKey("Post118Alg1B0G0S1"))).buildGrayText()
                    
                    MyViewBuilder(title: Text("1"), content: Text(LocalizedStringKey("Post118Alg1B0G0S2"))).buildGrayText()
                    
                    MyViewBuilder(title: Text(LocalizedStringKey("Post118Alg1B1G0S0")), content: Text(LocalizedStringKey("Post118Alg1B1G0S1"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded1)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded1.toggle()
                            }
                        }
                    
                    MyViewBuilder(title: Text("1"), content: Text(LocalizedStringKey("Post118Alg1B0G0S4"))).buildGrayText()
                    
                    MyViewBuilder(title: Text("1"), content: Text(LocalizedStringKey("Post118Alg1B0G0S5"))).buildGrayText()
                    
                    MyViewBuilder(title: Text("1"), content: Text(LocalizedStringKey("Post118Alg1B0G0S6"))).buildGrayText()
                    
                    MyViewBuilder(title: Text("1"), content: Text(LocalizedStringKey("Post118Alg1B0G0S7"))).buildGrayText()
                    
                    MyViewBuilder(title: Text(LocalizedStringKey("Post118Alg1B2G0S0")), content: Text(LocalizedStringKey("Post118Alg1B2G0S1"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded2)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded2.toggle()
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
                    Text("Глава 1")
                        .font(.headline)
                        .bold()
                    Text("«Общие положения»")
                        .font(.caption2)
                }
            }
            
        }
    }
    
}
#Preview {
    Postanovlenie118Alg1View()
}

