//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct Postanovlenie2Alg4View: View {
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
    //MyViewBuilder(title: Text("2"), content: Text(LocalizedStringKey("Post2Alg4B0G0S1"))).buildGrayText()
    var body: some View {
        NavigationStack {
            ScrollView {
                Spacer()
                VStack {
                    MyViewBuilder(title: Text("4"), content: Text("20. Поступление обращений в службу СМП")).buildBlue1Text(isTextExpanded: isTextExpanded1)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded1.toggle()
                            }
                        }
                    if isTextExpanded1{
                        MyViewBuilder(title: Text("4"),
                                      content: Text(LocalizedStringKey("Post2Alg4B0G0S1"))).buildGrayText()
                    }
                    MyViewBuilder(title: Text("4"), content: Text("21. Прием обращения в службу СМП")).buildBlue1Text(isTextExpanded: isTextExpanded2)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded2.toggle()
                            }
                        }
                    if isTextExpanded2{
                        MyViewBuilder(title: Text("4"),
                                      content: Text(LocalizedStringKey("Post2Alg4B0G0S2"))).buildGrayText()
                    }
                    MyViewBuilder(title: Text("4"), content: Text("22. Автоматическая запись обращения")).buildBlue1Text(isTextExpanded: isTextExpanded3)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded3.toggle()
                            }
                        }
                    if isTextExpanded3{
                        MyViewBuilder(title: Text("4"),
                                      content: Text(LocalizedStringKey("Post2Alg4B0G0S3"))).buildGrayText()
                    }
                    MyViewBuilder(title: Text("4"), content: Text("23. Действия фельдшера  по приему вызовов")).buildBlue1Text(isTextExpanded: isTextExpanded4)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded4.toggle()
                            }
                        }
                    if isTextExpanded4{
                        MyViewBuilder(title: Text("4"),
                                      content: Text(LocalizedStringKey("Post2Alg4B0G0S4"))).buildGrayText()
                    }
                    MyViewBuilder(title: Text("4"), content: Text("24. Приоритеты вызова бригады СМП")).buildBlue1Text(isTextExpanded: isTextExpanded5)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded5.toggle()
                            }
                        }
                    if isTextExpanded5{
                        MyViewBuilder(title: Text("4"),
                                      content: Text(LocalizedStringKey("Post2Alg4B0G0S5"))).buildGrayText()
                    }
                    MyViewBuilder(title: Text("4"), content: Text("25. Экстренные вызовы бригады СМП")).buildBlue1Text(isTextExpanded: isTextExpanded6)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded6.toggle()
                            }
                        }
                    if isTextExpanded6{
                        MyViewBuilder(title: Text("4"),
                                      content: Text(LocalizedStringKey("Post2Alg4B0G0S6"))).buildGrayText()
                    }
                    MyViewBuilder(title: Text("4"), content: Text("26. Неотложные вызовы бригады СМП")).buildBlue1Text(isTextExpanded: isTextExpanded7)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded7.toggle()
                            }
                        }
                    if isTextExpanded7{
                        MyViewBuilder(title: Text("4"),
                                      content: Text(LocalizedStringKey("Post2Alg4B0G0S7"))).buildGrayText()
                    }
                    MyViewBuilder(title: Text("4"), content: Text("27. Изменение приоритета вызова бригады СМП")).buildBlue1Text(isTextExpanded: isTextExpanded8)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded8.toggle()
                            }
                        }
                    if isTextExpanded8{
                        MyViewBuilder(title: Text("4"),
                                      content: Text(LocalizedStringKey("Post2Alg4B0G0S8"))).buildGrayText()
                    }
                    MyViewBuilder(title: Text("4"), content: Text("28. Информация о факте обращения пациента")).buildBlue1Text(isTextExpanded: isTextExpanded9)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded9.toggle()
                            }
                        }
                    if isTextExpanded9{
                        MyViewBuilder(title: Text("4"),
                                      content: Text(LocalizedStringKey("Post2Alg4B0G0S9"))).buildGrayText()
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
                    Text("Глава 4")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Порядок поступления обращений, приема, регистрации и передачи вызовов бригадам СМП»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            
        }
    }
    
}
#Preview {
    Postanovlenie2Alg4View()
}

