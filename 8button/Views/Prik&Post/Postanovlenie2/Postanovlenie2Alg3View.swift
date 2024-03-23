//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct Postanovlenie2Alg3View: View {
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
    //MyViewBuilder(title: Text("2"), content: Text(LocalizedStringKey("Post2Alg3B0G0S1"))).buildGrayText()
    var body: some View {
            ScrollView {
                Spacer()
                VStack (spacing: 5){
                    MyViewBuilder(title: Text("14. Основные задачи службы СМП"), content: Text(LocalizedStringKey("Post2Alg3B0G0S1"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded1)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded1.toggle()
                            }
                        }
                    MyViewBuilder(title: Text("15. Режимы функционирования службы СМП"), content: Text(LocalizedStringKey("Post2Alg3B0G0S2"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded2)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded2.toggle()
                            }
                        }
                    MyViewBuilder(title: Text("16. Режим повседневной деятельности"), content: Text(LocalizedStringKey("Post2Alg3B0G0S3"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded3)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded3.toggle()
                            }
                        }
                    MyViewBuilder(title: Text("17. Режим повышенной готовности"), content: Text(LocalizedStringKey("Post2Alg3B0G0S4"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded4)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded4.toggle()
                            }
                        }
                    MyViewBuilder(title: Text("18. Чрезвычайный режим"), content: Text(LocalizedStringKey("Post2Alg3B0G0S5"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded5)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded5.toggle()
                            }
                        }
                    MyViewBuilder(title: Text("19. Служба СМП не осуществляет"), content: Text(LocalizedStringKey("Post2Alg3B0G0S6"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded6)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded6.toggle()
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
                    Text("Глава 3")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Задачи и режимы функционирования службы СМП»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            
        }
    }
    
}
#Preview {
    Postanovlenie2Alg3View()
}

