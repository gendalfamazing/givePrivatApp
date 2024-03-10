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
        NavigationStack {
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
                .navigationBarTitle("Постановление № 2", displayMode: .inline)
                .padding(.horizontal, 10)
                .padding(.bottom, 65)
            }
//            .padding(.horizontal, 200)
//            .edgesIgnoringSafeArea(.bottom)
            .background(Color.back)
        }
    }
}

#Preview {
    Postanovlenie2View()
}
