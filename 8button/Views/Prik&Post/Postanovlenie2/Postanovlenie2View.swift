//
//  Postanovlenie118View.swift
//  7button
//
//  Created by Artur Vladymcev on 21.11.23.
//

import SwiftUI

struct Postanovlenie2View: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
            ScrollView {
                Spacer()
                VStack (spacing: 5) {
                    NavigationLink(destination: Postanovlenie2Alg1View()) {
                        MyViewBuilder(title: Text("01"), content:Text("«Общие положения»")).buildTitleBlueText()
                    }
                    
                    NavigationLink(destination: Postanovlenie2Alg2View()) {
                        MyViewBuilder(title: Text("02"), content:Text("«Структура, система управления и обеспечение службы СМП»")).buildTitleBlueText()
                    }
                    
                    NavigationLink(destination: Postanovlenie2Alg3View()) {
                        MyViewBuilder(title: Text("03"), content:Text("«Задачи и режимы функционирования службы СМП»")).buildTitleBlueText()
                    }
                    
                    NavigationLink(destination: Postanovlenie2Alg4View()) {
                        MyViewBuilder(title: Text("04"), content:Text("«Порядок поступления обращений, приема, регистрации и передачи вызовов бригадам СМП»")).buildTitleBlueText()
                    }
                    
                    NavigationLink(destination: Postanovlenie2Alg5View()) {
                        MyViewBuilder(title: Text("05"), content:Text("«Бригады СМП и порядок их деятельности»")).buildTitleBlueText()
                    }
                    
                    NavigationLink(destination: Postanovlenie2Alg6View()) {
                        MyViewBuilder(title: Text("06"), content:Text("«Взаимодействие службы СМП с бригадами НМП»")).buildTitleBlueText()
                    }
                    
                    
                    
                }
                .padding(.horizontal, 10)
                .padding(.bottom, 55)
                .navigationBarTitle("", displayMode: .inline)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        VStack {
                            Text("Постановление № 2")
                                .font(.headline)
                                .foregroundStyle(Color.toolBar)
                                .bold()
                            Text("""
                            «Организация деятельности службы СМП»
                            """)
                            .font(.caption2)
                            .foregroundStyle(Color.toolBar)
                        }
                    }
                    
                }
                
            }
//            .padding(.horizontal, 200)
//            .edgesIgnoringSafeArea(.bottom)
            .background(Color.back)
        
    }
}

#Preview {
    Postanovlenie2View()
}
