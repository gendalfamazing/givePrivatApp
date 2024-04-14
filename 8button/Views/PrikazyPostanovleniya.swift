//
//  PrikazyPostanovleniya.swift
//  7button
//
//  Created by Artur Vladymcev on 21.11.23.
//

import SwiftUI

struct PrikazyPostanovleniya: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        
            ScrollView {
                Spacer()
                VStack (alignment: .leading, spacing: 5){
                    VStack (alignment: .leading, spacing: 1){
                        Text("""
                            Оказание помощи на догоспитальном этапе:
                            """)
                            .font(.footnote)
                            .bold()
                            .padding(.leading, 10)
                            .opacity(0.5)
                    }
                    
                    NavigationLink(destination: SearchAdult()) {
                        MyViewBuilder(title: Text("""
                        Приказ МЗ РБ 
                        от 30.09.2010
                        № 1030
                        """), content: Text("«Клинические протоколы оказания СНМП взрослому населению»")).buildTitle1BlueText()
                    }
                    
                    
                    NavigationLink(destination: Postanovlenie118View()) {
                        MyViewBuilder(title: Text("""
                        Постановление 
                        МЗ РБ от 17.08.23
                        № 118
                        """), content: Text("«Клинические протоколы оказания экстренной и неотложной медицинской помощи пациентам детского возраста»")).buildTitle1BlueText()
                    }
                    NavigationLink(destination: Postanovlenie99View()) {
                        MyViewBuilder(title: Text("""
                        Постановление 
                        МЗ РБ от 21.08.21
                        № 99
                        """), content: Text("Клинический протокол «Оказание медицинской помощи пациентам в критических для жизни состояниях»")).buildTitle1BlueText()
                    }
                    NavigationLink(destination: Postanovlenie59View()) {
                        MyViewBuilder(title: Text("""
                        Постановление 
                        МЗ РБ от 06.06.17
                        № 59
                        """), content: Text("Об утверждении некоторых клинических протоколов диагностики и лечения заболеваний системы кровообращения")).buildTitle1BlueText()
                    }
                    NavigationLink(destination: Prikaz47View()) {
                        MyViewBuilder(title: Text("""
                        Приказ МЗ РБ
                        от 24.01.18
                        № 47
                        """), content: Text("Об утверждении Инструкции по оказанию медицинской помощи пациентам с острым нарушением мозгового кровообращения («Дорожная карта»)")).buildTitle1BlueText()
                    }
                    NavigationLink(destination: Postanovlenie45()) {
                        MyViewBuilder(title: Text("""
                        Постановление
                        МЗ РБ от 01.06.17
                        № 45
                        """), content: Text("Об утверждении клинического протокола «Оказание медицинской помощи пациентам до 18 лет с инородными телами дыхательных путей»")).buildTitle1BlueText()
                    }
                    NavigationLink(destination: Prikaz155()) {
                        MyViewBuilder(title: Text("""
                        Приказ МЗ РБ
                        от 09.02.12
                        № 155
                        """), content: Text("Об утверждении алгоритма оказания медицинской помощи пациентам с острым нарушением мозгового кровообращения на амбулаторном этапе (приложение 3)")).buildTitle1BlueText()
                    }
                    VStack (alignment: .leading, spacing: 1){
                        Text("""
                            Организация службы СМП:
                            """)
                            .frame(alignment: .leading)
                            .font(.footnote)
                            .bold()
                            .padding(.leading, 10)
                            .opacity(0.5)
                    }
                    NavigationLink(destination: Postanovlenie2View()) {
                        MyViewBuilder(title: Text("""
                        Постановление 
                        МЗ РБ от 04.01.20
                        № 2
                        """), content: Text("«О вопросах организации деятельности службы скорой медицинской помощи»")).buildTitle1BlueText()
                    }
                    NavigationLink(destination: ZakonOZdravoohranenii()) {
                        MyViewBuilder(title: Text("""
                        Закон РБ
                        18 июня 1993 г.
                        № 2435-XII
                        """), content: Text("«О здравоохранении»")).buildTitle1BlueText()
                    }
                }
                .navigationBarTitle("", displayMode: .inline)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        VStack {
                            Text("Приказы и постановления")
                                .font(.headline)
                                .foregroundStyle(Color.toolBar)
                                .bold()
                            Text("""
                            «Медицинская документация»
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
            .background(colorScheme == .dark ? Color(red: 0, green: 0, blue: 0) : Color(red: 0.9568627450980393, green: 0.9529411764705882, blue: 0.9764705882352941))
            .foregroundColor(colorScheme == .dark ? Color(red: 0.9490196078431372, green: 0.9490196078431372, blue: 0.9490196078431372) : Color.black)
        
    }
    
}

#Preview {
    PrikazyPostanovleniya()
}
