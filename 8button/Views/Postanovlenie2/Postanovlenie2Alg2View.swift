//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct Postanovlenie2Alg2View: View {
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
    //MyViewBuilder(title: Text("2"), content: Text(LocalizedStringKey("Post99Alg2B0G0S1"))).buildGrayText()
    var body: some View {
        NavigationStack {
            ScrollView {
                Spacer()
                VStack {
                    MyViewBuilder(title: Text("2"), content: Text("4. Структура службы СМП")).buildBlue1Text(isTextExpanded: isTextExpanded1)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded1.toggle()
                            }
                        }
                    if isTextExpanded1{
                        MyViewBuilder(title: Text("2"), 
                                      content: Text(LocalizedStringKey("Post2Alg2B0G0S1"))).buildGrayText()
                    }
                    MyViewBuilder(title: Text("2"), content: Text("5. Станция СМП")).buildBlue1Text(isTextExpanded: isTextExpanded2)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded2.toggle()
                            }
                        }
                    if isTextExpanded2{
                        MyViewBuilder(title: Text("2"),
                                      content: Text(LocalizedStringKey("Post2Alg2B0G0S2"))).buildGrayText()
                    }
                    MyViewBuilder(title: Text("2"), content: Text("6. Подстанция СМП")).buildBlue1Text(isTextExpanded: isTextExpanded3)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded3.toggle()
                            }
                        }
                    if isTextExpanded3{
                        MyViewBuilder(title: Text("2"),
                                      content: Text(LocalizedStringKey("Post2Alg2B0G0S3"))).buildGrayText()
                    }
                    MyViewBuilder(title: Text("2"), content: Text("7. Отделение СМП")).buildBlue1Text(isTextExpanded: isTextExpanded4)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded4.toggle()
                            }
                        }
                    if isTextExpanded4{
                        MyViewBuilder(title: Text("2"),
                                      content: Text(LocalizedStringKey("Post2Alg2B0G0S4"))).buildGrayText()
                    }
                    MyViewBuilder(title: Text("2"), content: Text("8. Пост СМП")).buildBlue1Text(isTextExpanded: isTextExpanded5)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded5.toggle()
                            }
                        }
                    if isTextExpanded5{
                        MyViewBuilder(title: Text("2"),
                                      content: Text(LocalizedStringKey("Post2Alg2B0G0S5"))).buildGrayText()
                    }
                    MyViewBuilder(title: Text("2"), content: Text("9. Руководители подразделений СМП")).buildBlue1Text(isTextExpanded: isTextExpanded6)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded6.toggle()
                            }
                        }
                    if isTextExpanded6{
                        MyViewBuilder(title: Text("2"),
                                      content: Text(LocalizedStringKey("Post2Alg2B0G0S6"))).buildGrayText()
                    }
                    MyViewBuilder(title: Text("2"), content: Text("10. Иные структурные подразделения")).buildBlue1Text(isTextExpanded: isTextExpanded7)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded7.toggle()
                            }
                        }
                    if isTextExpanded7{
                        MyViewBuilder(title: Text("2"),
                                      content: Text(LocalizedStringKey("Post2Alg2B0G0S7"))).buildGrayText()
                    }
                    MyViewBuilder(title: Text("2"), content: Text("11. Электросвязь с бригадами СМП")).buildBlue1Text(isTextExpanded: isTextExpanded8)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded8.toggle()
                            }
                        }
                    if isTextExpanded8{
                        MyViewBuilder(title: Text("2"),
                                      content: Text(LocalizedStringKey("Post2Alg2B0G0S8"))).buildGrayText()
                    }
                    MyViewBuilder(title: Text("2"), content: Text("12. Обеспечение автомобилями СМП")).buildBlue1Text(isTextExpanded: isTextExpanded9)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded9.toggle()
                            }
                        }
                    if isTextExpanded9{
                        MyViewBuilder(title: Text("2"),
                                      content: Text(LocalizedStringKey("Post2Alg2B0G0S9"))).buildGrayText()
                    }
                    MyViewBuilder(title: Text("2"), content: Text("13. Уровни системы управления службой СМП")).buildBlue1Text(isTextExpanded: isTextExpanded10)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded10.toggle()
                            }
                        }
                    if isTextExpanded10{
                        MyViewBuilder(title: Text("2"),
                                      content: Text(LocalizedStringKey("Post2Alg2B0G0S10"))).buildGrayText()
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
                    Text("Глава 2")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Структура, система управления и обеспечение службы СМП»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            
        }
    }
    
}
#Preview {
    Postanovlenie2Alg2View()
}

