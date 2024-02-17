//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct Postanovlenie99Alg5View: View {
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
    var body: some View {
        NavigationStack {
            ScrollView {
                Spacer()
                VStack (spacing: 5) {
                    MyViewBuilder(title: Text("5"), content: Text("52. Медицинские показания к седации")).buildBlue1Text(isTextExpanded: isTextExpanded1)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded1.toggle()
                            }
                        }
                    if isTextExpanded1{
                        MyViewBuilder(title: Text("5"),
                                      content: Text(LocalizedStringKey("Post99Alg5B0G0S1"))).buildGrayText()
                        
                    }
                    MyViewBuilder(title: Text("5"), content: Text("53. Оценка глубины седации")).buildBlue1Text(isTextExpanded: isTextExpanded2)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded2.toggle()
                            }
                        }
                    if isTextExpanded2{
                        MyViewBuilder(title: Text("5"),
                                      content: Text(LocalizedStringKey("Post99Alg5B0G0S2"))).buildGrayText()
                        
                    }
                    MyViewBuilder(title: Text("5"), content: Text("54. Медицинские показания к глубокой седации")).buildBlue1Text(isTextExpanded: isTextExpanded3)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded3.toggle()
                            }
                        }
                    if isTextExpanded3{
                        MyViewBuilder(title: Text("5"),
                                      content: Text(LocalizedStringKey("Post99Alg5B0G0S3"))).buildGrayText()
                        
                    }
                    MyViewBuilder(title: Text("5"), content: Text("55. Обязательный мониторинг при проведении седации")).buildBlue1Text(isTextExpanded: isTextExpanded4)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded4.toggle()
                            }
                        }
                    if isTextExpanded4{
                        MyViewBuilder(title: Text("5"),
                                      content: Text(LocalizedStringKey("Post99Alg5B0G0S4"))).buildGrayText()
                        
                    }
                    MyViewBuilder(title: Text("5"), content: Text("56. Пациенты, находящиеся на спонтанном дыхании")).buildBlue1Text(isTextExpanded: isTextExpanded5)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded5.toggle()
                            }
                        }
                    if isTextExpanded5{
                        MyViewBuilder(title: Text("5"),
                                      content: Text(LocalizedStringKey("Post99Alg5B0G0S5"))).buildGrayText()
                    }
                    MyViewBuilder(title: Text("5"), content: Text("57. Клинические признаки делирия")).buildBlue1Text(isTextExpanded: isTextExpanded6)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded6.toggle()
                            }
                        }
                    if isTextExpanded6{
                        MyViewBuilder(title: Text("5"),
                                      content: Text(LocalizedStringKey("Post99Alg5B0G0S6"))).buildGrayText()
                    }
                    MyViewBuilder(title: Text("5"), content: Text("58. Выявление и лечение провоцирующих факторов делирия")).buildBlue1Text(isTextExpanded: isTextExpanded7)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded7.toggle()
                            }
                        }
                    if isTextExpanded7{
                        MyViewBuilder(title: Text("5"),
                                      content: Text(LocalizedStringKey("Post99Alg5B0G0S7"))).buildGrayText()
                        MyViewBuilder(title: Text("5"),
                                      content: Text(LocalizedStringKey("Post99Alg5B0G0S8"))).buildGrayText()
                    }
                    MyViewBuilder(title: Text("5"), content: Text("59. Синдром отмены алкоголя")).buildBlue1Text(isTextExpanded: isTextExpanded8)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded8.toggle()
                            }
                        }
                    if isTextExpanded8{
                        MyViewBuilder(title: Text("5"),
                                      content: Text(LocalizedStringKey("Post99Alg5B0G0S9"))).buildGrayText()
                    }
                    MyViewBuilder(title: Text("5"), content: Text("60. Выбор схемы седации")).buildBlue1Text(isTextExpanded: isTextExpanded9)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded9.toggle()
                            }
                        }
                    if isTextExpanded9{
                        MyViewBuilder(title: Text("5"),
                                      content: Text(LocalizedStringKey("Post99Alg5B0G0S10"))).buildGrayText()
                    }
                    MyViewBuilder(title: Text("5"), content: Text("61. Побочные реакции глубокой седации ")).buildBlue1Text(isTextExpanded: isTextExpanded10)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded10.toggle()
                            }
                        }
                    if isTextExpanded10{
                        MyViewBuilder(title: Text("5"),
                                      content: Text(LocalizedStringKey("Post99Alg5B0G0S11"))).buildGrayText()
                    }
                    MyViewBuilder(title: Text("5"), content: Text("62. Синдром отмены наркотических веществ при проведении седации")).buildBlue1Text(isTextExpanded: isTextExpanded11)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded11.toggle()
                            }
                        }
                    if isTextExpanded11{
                        MyViewBuilder(title: Text("5"),
                                      content: Text(LocalizedStringKey("Post99Alg5B0G0S12"))).buildGrayText()
                    }
                    MyViewBuilder(title: Text("5"), content: Text("63. При недоступности дексмедетомидина для седации пациентов с делирием")).buildBlue1Text(isTextExpanded: isTextExpanded12)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded12.toggle()
                            }
                        }
                    if isTextExpanded12{
                        MyViewBuilder(title: Text("5"),
                                      content: Text(LocalizedStringKey("Post99Alg5B0G0S13"))).buildGrayText()
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
                    Text("Глава 5")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Седация в интенсивной терапии»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            
        }
    }
    
}
#Preview {
    Postanovlenie99Alg5View()
}

