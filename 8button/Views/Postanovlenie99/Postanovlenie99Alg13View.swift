//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct Postanovlenie99Alg13View: View {
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
                VStack {
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack {
                            MyViewBuilder(title: Text("dfdfdf"),content: Text("""
                                        ЛС для купирования синдрома отмены алкоголя
                                        """)
                            ).buildGrayInText()
                            
                        }
                        .padding(5)
                    }
                    Spacer(minLength: 10)
                    VStack (spacing: 1){
                        
                        HStack(alignment: .center) {
                            Text("""
                                ЛС
                                """)
                            .frame(width: 70)
                            .padding(.horizontal, 10)
                            .font(.caption2)
                            .bold()
                            
                            Spacer()
                            
                            Text("""
                                Внутривенно болюсно - 
                                титрование до эффекта
                                """)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .frame(width: 100)
                            .padding(.horizontal, 10)
                            .font(.caption2)
                            .bold()
                            
                            Spacer()
                            
                            Text("""
                                Поддерживающая доза
                                """)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            //                            .padding(.horizontal, 10)
                            .font(.caption2)
                            .bold()
                            
                            Spacer()
                        }
                        .padding(2)
                        .background(Color.grayButton)
                        ForEach(TableRASS.getTableAlko(), id: \.id) { name in
                            MyViewBuilderTables(title1: Text(name.content1), title2: Text(name.content2), title3: Text(name.content3), title4: Text("")).buildTableAlko()
                        }
                    }
                    .cornerRadius(10)
                    .shadow(color: .shadow, radius: 2)
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack {
                            MyViewBuilder(title: Text("dfdfdf"),content: Text("""
                                        * Off-label, назначаются врачебным консилиумом.
                                        """)
                            ).buildGrayInHiddenText()
                            
                        }
                        .padding(5)
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
                    Text("Приложение 5")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«ЛС для купирования синдрома отмены алкоголя»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            
        }
    }
    
}
#Preview {
    Postanovlenie99Alg13View()
}

