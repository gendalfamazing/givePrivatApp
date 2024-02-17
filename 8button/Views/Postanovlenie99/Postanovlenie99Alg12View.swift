//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct Postanovlenie99Alg12View: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
   
    var body: some View {
        NavigationStack {
            ScrollView {
                Spacer()
                VStack {
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack {
                            MyViewBuilder(title: Text(""),content: Text("""
                                        Шкала возбуждения и седации Ричмонда (RASS)
                                        """)
                            ).buildGrayInText()
                            
                        }
                        .padding(5)
                    }
                    Spacer(minLength: 10)
                    VStack (spacing: 1){
                        
                        HStack {
                            ZStack {
                                Text("""
                                    Уровень
                                    возбуждения
                                    и седации
                                    """)
                                .padding(.horizontal, 10)
                                .font(.caption2)
                                .bold()
                                
                            }
                            .frame(minWidth: 50)
                            Spacer()
                            Text("Описание")
                                .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                                .font(.headline)
                                .padding(3)
                            
                            Spacer()
                        }
                        .padding(2)
                        .background(Color.grayButton)
                        ForEach(TableRASS.getTableRASS(), id: \.id) { name in
                            MyViewBuilderTables(title1: Text(name.content1), title2: Text(name.content2), title3: Text(name.content3), title4: Text("")).buildTableRASS()
                        }
                    }
                    .cornerRadius(10)
                    .shadow(color: .shadow, radius: 2)
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
                    Text("Приложение 4")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«ШКАЛА возбуждения и седации Ричмонда (RASS)»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            
        }
    }
    
}
#Preview {
    Postanovlenie99Alg12View()
}

