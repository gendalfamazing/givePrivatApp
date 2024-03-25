//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct Postanovlenie59Alg3P5View: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var isTextExpanded = false
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
    var body: some View {
            ScrollView {
                VStack (spacing: 5) {
                    MyViewBuilder(title: Text("""
                                              """),
                                  content: Text("""
                                                **Схема последовательных неотложных мероприятий при острой сердечной недостаточности (класс Киллип)**:
                                                """)).buildGrayTextCenter()
                        .multilineTextAlignment(.center)
                        
                    
                        VStack (spacing: 5) {
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                            VStack (spacing: 1) {
                                MyViewBuilder(title: Text("""
                                                  """),
                                              content: Text("""
                                                    Класс I, Класс II
                                                    """)).buildBlue59Text(isTextExpanded: isTextExpanded2)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded2.toggle()
                                        }
                                    }
                                if isTextExpanded2 {
                                    VStack (spacing: 1){
                                        ForEach(Table59OKS.getTable59Killip12(), id: \.id) { name in
                                            MyViewBuilder59(title1: name.content1,title2: name.content2,title3: name.content3,title4: name.content4,title5: name.content5,title6: name.content6,title7: name.content7,title8: name.content8,title9: name.content9,title10: name.content10,title11: name.content11,title12: name.content12,title13: name.content13,title14: name.content14, title15: name.content15,title16: name.content16,title17: name.content17,title18: name.content18,title19: name.content19,title20: name.content20,title21: name.content21,title22: name.content22,title23: name.content23,title24: name.content24,title25: name.content25,title26: name.content26,title27: name.content27,title28: name.content28).buildTable59Killip12()
                                        }
                                    }
                                    .cornerRadius(10)
                                    //                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded2.toggle()
                                        }
                                    }
                                    Spacer(minLength: 1)
                                }
                            }
                        }
                            ZStack {
                                MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                                VStack (spacing: 1) {
                                    MyViewBuilder(title: Text("""
                                                      """),
                                                  content: Text("""
                                                        Класс III
                                                        """)).buildBlue59Text(isTextExpanded: isTextExpanded3)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded3.toggle()
                                            }
                                        }
                                    if isTextExpanded3 {
                                        VStack (spacing: 1){
                                            ForEach(Table59OKS.getTable59Killip3(), id: \.id) { name in
                                                MyViewBuilder59(title1: name.content1,title2: name.content2,title3: name.content3,title4: name.content4,title5: name.content5,title6: name.content6,title7: name.content7,title8: name.content8,title9: name.content9,title10: name.content10,title11: name.content11,title12: name.content12,title13: name.content13,title14: name.content14, title15: name.content15,title16: name.content16,title17: name.content17,title18: name.content18,title19: name.content19,title20: name.content20,title21: name.content21,title22: name.content22,title23: name.content23,title24: name.content24,title25: name.content25,title26: name.content26,title27: name.content27,title28: name.content28).buildTable59Killip3()
                                            }
                                        }
                                        .cornerRadius(10)
                                        //                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded3.toggle()
                                            }
                                        }
                                        Spacer(minLength: 1)
                                    }
                                }
                            }
                            
                            ZStack {
                                MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                                VStack (spacing: 1) {
                                    MyViewBuilder(title: Text("""
                                                      """),
                                                  content: Text("""
                                                        Класс IV
                                                        """)).buildBlue59Text(isTextExpanded: isTextExpanded4)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded4.toggle()
                                            }
                                        }
                                    if isTextExpanded4 {
                                        VStack (spacing: 1){
                                            ForEach(Table59OKS.getTable59Killip4(), id: \.id) { name in
                                                MyViewBuilder59(title1: name.content1,title2: name.content2,title3: name.content3,title4: name.content4,title5: name.content5,title6: name.content6,title7: name.content7,title8: name.content8,title9: name.content9,title10: name.content10,title11: name.content11,title12: name.content12,title13: name.content13,title14: name.content14, title15: name.content15,title16: name.content16,title17: name.content17,title18: name.content18,title19: name.content19,title20: name.content20,title21: name.content21,title22: name.content22,title23: name.content23,title24: name.content24,title25: name.content25,title26: name.content26,title27: name.content27,title28: name.content28).buildTable59Killip4()
                                            }
                                        }
                                        .cornerRadius(10)
                                        //                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded4.toggle()
                                            }
                                        }
                                        Spacer(minLength: 1)
                                    }
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
        .navigationBarTitle("",displayMode: .inline)
        .toolbar {
            ToolbarItem(placement: .principal) {
                VStack {
                    Text("Приложение 5")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("""
                    «Мероприятий при острой сердечной недостаточности»
                    """)
                    .font(.caption2)
                    .foregroundStyle(Color.toolBar)
                }
            }
            
        }
    }
    
}
#Preview {
    Postanovlenie59Alg3P5View()
}

