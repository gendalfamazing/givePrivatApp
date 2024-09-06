//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct AtlasECG_Analisis: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @State private var isTextExpanded1 = true
    @State private var isTextExpanded2 = true
    @State private var isTextExpanded3 = true
    @State private var isTextExpanded4 = true
    @State private var isTextExpanded5 = true
    @State private var isTextExpanded6 = true
    @State private var isTextExpanded7 = true
    @State private var isTextExpanded8 = true
    @State private var isTextExpanded9 = true
    @State private var isTextExpanded10 = true
    @State private var isTextExpanded11 = true
    @State private var isTextExpanded12 = true
    @State private var isTextExpanded13 = true
    @State private var isTextExpanded14 = true
    @State private var isTextExpanded15 = true
    @State private var isTextExpanded16 = true
    @State private var isTextExpanded17 = true
    @State private var isTextExpanded18 = true
    @State private var isTextExpanded19 = true
    @State private var isTextExpanded20 = true
    
    var body: some View {
        ScrollView {
            VStack (spacing: 5) {
                
                ImagePDF(image: Image("Analis1"), title: "").buildECGPad(isTextExpanded: isTextExpanded1)
                    .onTapGesture (count: 1, perform: {
                        withAnimation(.easeInOut){
                            UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded1.toggle()
                        }
                    })
                    .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded1 ? 1110 : 1110) : (isTextExpanded1 ? 515 : 1030))
                    .cornerRadius(10)
                
                ImagePDF(image: Image("Analis2"), title: "").buildECGPad(isTextExpanded: isTextExpanded2)
                    .onTapGesture (count: 1, perform: {
                        withAnimation(.easeInOut){
                            UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded2.toggle()
                        }
                    })
                    .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded2 ? 1163 : 1163) : (isTextExpanded2 ? 540 : 1080))
                    .cornerRadius(10)
                
                ImagePDF(image: Image("Analis3"), title: "").buildECGPad(isTextExpanded: isTextExpanded3)
                    .onTapGesture (count: 1, perform: {
                        withAnimation(.easeInOut){
                            UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded3.toggle()
                        }
                    })
                    .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded3 ? 1088 : 1088) : (isTextExpanded3 ? 505 : 1010))
                    .cornerRadius(10)
                
                ImagePDF(image: Image("Analis4"), title: "").buildECGPad(isTextExpanded: isTextExpanded4)
                    .onTapGesture (count: 1, perform: {
                        withAnimation(.easeInOut){
                            UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded4.toggle()
                        }
                    })
                    .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded4 ? 940 : 940) : (isTextExpanded4 ? 435 : 870))
                    .cornerRadius(10)
                
                ImagePDF(image: Image("Analis5"), title: "").buildECGPad(isTextExpanded: isTextExpanded5)
                    .onTapGesture (count: 1, perform: {
                        withAnimation(.easeInOut){
                            UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded5.toggle()
                        }
                    })
                    .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded5 ? 890 : 890) : (isTextExpanded5 ? 412 : 824))
                    .cornerRadius(10)
                
                ImagePDF(image: Image("Analis6"), title: "").buildECGPad(isTextExpanded: isTextExpanded6)
                    .onTapGesture (count: 1, perform: {
                        withAnimation(.easeInOut){
                            UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded6.toggle()
                        }
                    })
                    .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded6 ? 1175 : 1175) : (isTextExpanded6 ? 544 : 1088))
                    .cornerRadius(10)
                
                ImagePDF(image: Image("Analis7"), title: "").buildECGPad(isTextExpanded: isTextExpanded7)
                    .onTapGesture (count: 1, perform: {
                        withAnimation(.easeInOut){
                            UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded7.toggle()
                        }
                    })
                    .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded7 ? 1119 : 1119) : (isTextExpanded7 ? 518 : 1036))
                    .cornerRadius(10)
                
                ImagePDF(image: Image("Analis8"), title: "").buildECGPad(isTextExpanded: isTextExpanded8)
                    .onTapGesture (count: 1, perform: {
                        withAnimation(.easeInOut){
                            UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded8.toggle()
                        }
                    })
                    .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded8 ? 896 : 896) : (isTextExpanded8 ? 415 : 830))
                    .cornerRadius(10)
                
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
                    Text("Анализ ЭКГ")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("Базовые принципы анализа ЭКГ")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                    //
                }
            }
            
        }
    }
    
}
#Preview {
    AtlasECG_Analisis()
}

