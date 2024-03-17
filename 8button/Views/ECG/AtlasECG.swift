//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct AtlasECG: View {
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
        NavigationStack {
            ScrollView {
                VStack (spacing: 5) {
                    
                    NavigationLink (destination: AtlasECGNorma01()) {
                        MyViewBuilder(title: Text("1"), content: Text("Варианты нормы")).buildBlue591NavigationText()
                    }
                    NavigationLink (destination: AtlasECGInfarkt09()) {
                        MyViewBuilder(title: Text("1"), content: Text("Инфаркты")).buildBlue591NavigationText()
                    }
                    NavigationLink (destination: AtlasECGAritmii101()) {
                        MyViewBuilder(title: Text("1"), content: Text("Аритмии. Часть 1")).buildBlue591NavigationText()
                    }
                    NavigationLink (destination: AtlasECGAritmii201()) {
                        MyViewBuilder(title: Text("1"), content: Text("Аритмии. Часть 2")).buildBlue591NavigationText()
                    }
                    NavigationLink (destination: AtlasECGAritmii301()) {
                        MyViewBuilder(title: Text("1"), content: Text("Аритмии. Часть 3")).buildBlue591NavigationText()
                    }
                    NavigationLink (destination: AtlasECGAritmii301()) {
                        MyViewBuilder(title: Text("1"), content: Text("Аритмии. Часть 3")).buildBlue591NavigationText()
                    }
                    NavigationLink (destination: AtlasECGAritmii401()) {
                        MyViewBuilder(title: Text("1"), content: Text("Аритмии. Часть 4")).buildBlue591NavigationText()
                    }
                    NavigationLink (destination: AtlasECGProvodimost08()) {
                        MyViewBuilder(title: Text("1"), content: Text("Нарушение проводимости")).buildBlue591NavigationText()
                    }
                    NavigationLink (destination: AtlasECGTELA04()) {
                        MyViewBuilder(title: Text("1"), content: Text("Тромбоэмболия легочной артерии")).buildBlue591NavigationText()
                    }
                    NavigationLink (destination: AtlasECGElectroliti06()) {
                        MyViewBuilder(title: Text("1"), content: Text("Электролитные нарушения")).buildBlue591NavigationText()
                    }
                    NavigationLink (destination: AtlasECGIVR07()) {
                        MyViewBuilder(title: Text("1"), content: Text("Искусственный водитель ритма")).buildBlue591NavigationText()
                    }
                    NavigationLink (destination: AtlasECGPoroki02()) {
                        MyViewBuilder(title: Text("1"), content: Text("Пороки сердца")).buildBlue591NavigationText()
                    }
                    NavigationLink (destination: AtlasECGCardiomiopatii03()) {
                        MyViewBuilder(title: Text("1"), content: Text("Кардиомиопатии")).buildBlue591NavigationText()
                    }
                    NavigationLink (destination: AtlasECGPericardit05()) {
                        MyViewBuilder(title: Text("1"), content: Text("Перикардиты")).buildBlue591NavigationText()
                    }
                    
                    
                    
                    
                }
                .padding(.horizontal, 10)
                .padding(.bottom, 85)
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
                    Text("Атлас ЭКГ")
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
    AtlasECG()
}

