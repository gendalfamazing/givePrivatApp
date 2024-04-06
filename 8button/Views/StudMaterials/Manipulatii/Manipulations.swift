//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct Manipulations: View {
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
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        VStack  {
                            NavigationLink (destination: _1Vnutrikostniy()) {
                                MyViewBuilder(title: Text("1"), content: Text("Внутрикостный доступ")).buildBlue59NavigationText()
                            }
                        }
                    }
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        VStack  {
                            NavigationLink (destination: _2Oksigenoterapiya()) {
                                MyViewBuilder(title: Text("1"), content: Text("Оксигенотерапия")).buildBlue59NavigationText()
                            }
                        }
                    }
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        VStack  {
                            NavigationLink (destination: _3Pulseoxymetry()) {
                                MyViewBuilder(title: Text("1"), content: Text("Пульсоксиметрия")).buildBlue59NavigationText()
                            }
                        }
                    }
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        VStack  {
                            NavigationLink (destination: _4MetodikaDefibrillation()) {
                                MyViewBuilder(title: Text("1"), content: Text("Дефибрилляция")).buildBlue59NavigationText()
                            }
                        }
                    }
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        VStack  {
                            NavigationLink (destination: _5Kardioversion()) {
                                MyViewBuilder(title: Text("1"), content: Text("Кардиоверсия")).buildBlue59NavigationText()
                            }
                        }
                    }
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        VStack  {
                            NavigationLink (destination: _6Kardiostimulation()) {
                                MyViewBuilder(title: Text("1"), content: Text("Наружная чрезкожная кардиостимуляция")).buildBlue59NavigationText()
                            }
                        }
                    }
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        VStack  {
                            NavigationLink (destination: _7Infusomat()) {
                                MyViewBuilder(title: Text("1"), content: Text("Применение инфузомата")).buildBlue59NavigationText()
                            }
                        }
                    }
                    
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        VStack  {
                            NavigationLink (destination: _8Nebulaiser()) {
                                MyViewBuilder(title: Text("1"), content: Text("Применение небулайзера")).buildBlue59NavigationText()
                            }
                        }
                    }
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        VStack  {
                            NavigationLink (destination: _9Zond()) {
                                MyViewBuilder(title: Text("1"), content: Text("Промывание желудка зондом")).buildBlue59NavigationText()
                            }
                        }
                    }
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        VStack  {
                            NavigationLink (destination: _0IVL()) {
                                MyViewBuilder(title: Text("1"), content: Text("Применение ИВЛ")).buildBlue59NavigationText()
                            }
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
        .navigationBarTitle("", displayMode: .inline)
        .toolbar {
            ToolbarItem(placement: .principal) {
                VStack {
                    Text("Манипуляции")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("""
                    «Различные манипуляции на этапе СМП»
                    """)
                    .font(.caption2)
                    .foregroundStyle(Color.toolBar)
                }
            }
            
        }
    }
    
}
#Preview {
    Manipulations()
}


