//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct MedicinesAdult: View {
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
    @State private var isTextExpanded11 = false
    @State private var isTextExpanded12 = false
    @State private var isTextExpanded13 = false
    @State private var isTextExpanded14 = false
    @State private var isTextExpanded15 = false
    @State private var isTextExpanded16 = false
    @State private var isTextExpanded17 = false
    @State private var isTextExpanded18 = false
    @State private var isTextExpanded19 = false
    @State private var isTextExpanded20 = false
    @State private var isTextExpanded21 = false
    @State private var isTextExpanded22 = false
    @State private var isTextExpanded23 = false
    @State private var isTextExpanded24 = false
    @State private var isTextExpanded25 = false
    @State private var isTextExpanded26 = false
    @State private var isTextExpanded27 = false
    @State private var isTextExpanded28 = false
    @State private var isTextExpanded29 = false
    @State private var isTextExpanded30 = false
    
    var body: some View {
            ScrollView {
                VStack (spacing:5) {
                    
                        VStack(spacing: 1) {
                            HStack {
                                    Text("Наименование")
                                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                                    .frame(maxWidth: 100)
                                    .font(.footnote)
                                    .bold()
                                    .padding(3)
                                Spacer()
                                Text("Протокол")
                                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                                    .font(.footnote)
                                    .bold()
                                    .padding(3)
                                
                            Spacer()
                            }
                            .padding(2)
                            .background(Color.grayButton)
                            ForEach(TablePharmacology.getTablePharmacologyAdult(), id: \.id) { name in
                                MyViewBuilder(title: Text(LocalizedStringKey(name.name)), content: Text(LocalizedStringKey(name.code))).buildTablePhafmacologyAdult()
                            }
                        }
                        .background(Color.back)
                        .cornerRadius(10)
                        .shadow(color: .shadowGrayRectangle, radius: 0.5)
                        .onTapGesture {
                            withAnimation (.easeInOut) {
                                isTextExpanded3.toggle()
                            }
                        }
                    
                }
                .padding(.horizontal, 10)
                .padding(.bottom, 55)
            }
            //        .padding(.horizontal, 200)
//            .edgesIgnoringSafeArea(.bottom)
            .background(Color.back)
        
        .navigationBarBackButtonHidden(false)
        .navigationBarTitle("",displayMode: .inline)
        .toolbar {
            ToolbarItem(placement: .principal) {
                VStack {
                    Text("Применение ЛС у взрослых")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    //
                }
            }
            
        }
    }
    
}
#Preview {
    MedicinesAdult()
}


