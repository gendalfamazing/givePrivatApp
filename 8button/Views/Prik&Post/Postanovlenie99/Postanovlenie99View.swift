//
//  Postanovlenie118View.swift
//  7button
//
//  Created by Artur Vladymcev on 21.11.23.
//

import SwiftUI

struct Postanovlenie99View: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
            ScrollView {
                Spacer()
                VStack (spacing: 5) {
                    NavigationLink(destination: Postanovlenie99Alg1View()) {
                        MyViewBuilder(title: Text("01"), content:Text("«Общие положения»")).buildTitleBlueText()
                    }
                    
                    NavigationLink(destination: Postanovlenie99Alg2View()) {
                        MyViewBuilder(title: Text("02"), content:Text("«Принципы интенсивной терапии критических состояний»")).buildTitleBlueText()
                    }
                    
                    NavigationLink(destination: Postanovlenie99Alg3View()) {
                        MyViewBuilder(title: Text("03"), content:Text("«Сердечно-легочная реанимация и интенсивная терапия постреанимационного периода»")).buildTitleBlueText()
                    }
                    
                    NavigationLink(destination: Postanovlenie99Alg4View()) {
                        MyViewBuilder(title: Text("04"), content:Text("«ИВЛ»")).buildTitleBlueText()
                    }
                    
                    NavigationLink(destination: Postanovlenie99Alg5View()) {
                        MyViewBuilder(title: Text("05"), content:Text("«Седация в интенсивной терапии»")).buildTitleBlueText()
                    }
                    
                    NavigationLink(destination: Postanovlenie99Alg6View()) {
                        MyViewBuilder(title: Text("06"), content:Text("«Анафилаксия и анафилактический шок»")).buildTitleBlueText()
                    }
                    
                    NavigationLink(destination: Postanovlenie99Alg7View()) {
                        MyViewBuilder(title: Text("07"), content:Text("«Медицинская транспортировка пациента в критическом состоянии»")).buildTitleBlueText()
                    }
                    
                    NavigationLink(destination: Postanovlenie99Alg8View()) {
                        MyViewBuilder(title: Text("08"), content:Text("«ДП в интенсивной терапии»")).buildTitleBlueText()
                    }
                    NavigationLink(destination: Postanovlenie99Alg9View()) {
                        MyViewBuilder(title: Text("09"), content:Text("«Приложение 1. Протокол СЛР»")).buildTitleBlueText()
                    }
                    NavigationLink(destination: Postanovlenie99Alg10View()) {
                        MyViewBuilder(title: Text("10"), content:Text("«Приложение 2. Алгоритм базовой СЛР»")).buildTitleBlueText()
                    }
                    NavigationLink(destination: Postanovlenie99Alg11View()) {
                        MyViewBuilder(title: Text("11"), content:Text("«Приложение 3. Алгоритм расширеной СЛР»")).buildTitleBlueText()
                    }
                    NavigationLink(destination: Postanovlenie99Alg12View()) {
                        MyViewBuilder(title: Text("12"), content:Text("«Приложение 4. Шкала возбуждения и седации Ричмонда (RASS)»")).buildTitleBlueText()
                    }
                    NavigationLink(destination: Postanovlenie99Alg13View()) {
                        MyViewBuilder(title: Text("13"), content:Text("«Приложение 5. ЛС для купирования синдрома отмены алкоголя»")).buildTitleBlueText()
                    }
                    NavigationLink(destination: Postanovlenie99Alg14View()) {
                        MyViewBuilder(title: Text("14"), content:Text("«Приложение 6. ЛС для седации пациентов на ИВЛ»")).buildTitleBlueText()
                    }
                    NavigationLink(destination: Postanovlenie99Alg15View()) {
                        MyViewBuilder(title: Text("15"), content:Text("«Приложение 7. Алгоритм действий при анафилактических реакциях»")).buildTitleBlueText()
                    }
                    NavigationLink(destination: Postanovlenie99Alg16View()) {
                        MyViewBuilder(title: Text("16"), content:Text("«Приложение 8. Алгоритм действий при трудной интубации»")).buildTitleBlueText()
                    }
                    
                }
                .navigationBarTitle("", displayMode: .inline)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        VStack {
                            Text("Постановление № 99")
                                .font(.headline)
                                .foregroundStyle(Color.toolBar)
                                .bold()
                            Text("""
                            «Помощь в критических состояниях»
                            """)
                            .font(.caption2)
                            .foregroundStyle(Color.toolBar)
                        }
                    }
                    
                }
                .padding(.horizontal, 10)
                .padding(.bottom, 55)
            }
//            .padding(.horizontal, 200)
//            .edgesIgnoringSafeArea(.bottom)
            .background(Color.back)
        
    }
}

#Preview {
    Postanovlenie99View()
}
