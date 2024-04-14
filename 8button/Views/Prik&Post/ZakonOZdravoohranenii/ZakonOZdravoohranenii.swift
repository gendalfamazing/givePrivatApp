//
//  Postanovlenie118View.swift
//  7button
//
//  Created by Artur Vladymcev on 21.11.23.
//

import SwiftUI

struct ZakonOZdravoohranenii: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
            ScrollView {
                Spacer()
                VStack (spacing: 5) {
                    NavigationLink(destination: ZakonOZdravoohranenii_01()) {
                        MyViewBuilder(title: Text("01"), content:Text("«Общие положения»")).buildTitleBlueText()
                    }
                    NavigationLink(destination: ZakonOZdravoohranenii_02()) {
                        MyViewBuilder(title: Text("02"), 
                                      content:Text("""
                                                    «Государственное регулирование в области здравоохранения. 
                                                    Структура здравоохранения Республики Беларусь.
                                                    Организация деятельности в области здравоохранения»
                                                    """)).buildTitleBlueText()
                    }
                    NavigationLink(destination: ZakonOZdravoohranenii_03()) {
                        MyViewBuilder(title: Text("02¹"),
                                      content:Text("""
                                                    «Государственный социальный заказ в области Здравоохранения»
                                                    """)).buildTitleBlueText()
                    }
                    NavigationLink(destination: ZakonOZdravoohranenii_04()) {
                        MyViewBuilder(title: Text("03"),
                                      content:Text("""
                                                    «Оказание медицинской помощи»
                                                    """)).buildTitleBlueText()
                    }
                    NavigationLink(destination: ZakonOZdravoohranenii_05()) {
                        MyViewBuilder(title: Text("04"),
                                      content:Text("""
                                                    «Репродуктивное здоровье граждан. Особенности оказания медицинской помощи несовершеннолетним, женщинам во время беременности, родов и в послеродовой период»
                                                    """)).buildTitleBlueText()
                    }
                    NavigationLink(destination: ZakonOZdravoohranenii_06()) {
                        MyViewBuilder(title: Text("05"),
                                      content:Text("""
                                                    «Особенности оказания медицинской помощи пациентам, имеющим заболевания, представляющие опасность для здоровья населения, вирус иммунодефицита человека, а также страдающим хроническим алкоголизмом, наркоманией и токсикоманией»
                                                    """)).buildTitleBlueText()
                    }
                    NavigationLink(destination: ZakonOZdravoohranenii_07()) {
                        MyViewBuilder(title: Text("06"),
                                      content:Text("""
                                                    «Эвтаназия. Патологоанатомическое исследование. Медицинская экспертиза, клинико-экономическая (фармакоэкономическая) экспертиза, оценка качества медицинской помощи и медицинских экспертиз»
                                                    """)).buildTitleBlueText()
                    }
                    NavigationLink(destination: ZakonOZdravoohranenii_08()) {
                        MyViewBuilder(title: Text("07"),
                                      content:Text("""
                                                    «Информационное обеспечение в области здравоохранения»
                                                    """)).buildTitleBlueText()
                    }
                    NavigationLink(destination: ZakonOZdravoohranenii_09()) {
                        MyViewBuilder(title: Text("08"),
                                      content:Text("""
                                                    «Обеспечение граждан Республики Беларусь лекарственными средствами, медицинскими изделиями и биомедицинскими клеточными продуктами. Проведение клинических исследований (испытаний) лекарственных препаратов, клинических испытаний медицинских изделий»
                                                    """)).buildTitleBlueText()
                    }
                    NavigationLink(destination: ZakonOZdravoohranenii_10()) {
                        MyViewBuilder(title: Text("09"),
                                      content:Text("""
                                                    «Права и обязанности пациентов»
                                                    """)).buildTitleBlueText()
                    }
                    NavigationLink(destination: ZakonOZdravoohranenii_11()) {
                        MyViewBuilder(title: Text("10"),
                                      content:Text("""
                                                    «Гарантии, права и обязанности работников здравоохранения»
                                                    """)).buildTitleBlueText()
                    }
                    NavigationLink(destination: ZakonOZdravoohranenii_12()) {
                        MyViewBuilder(title: Text("11"),
                                      content:Text("""
                                                    «Кадровое обеспечение здравоохранения. Научная деятельность в области здравоохранения»
                                                    """)).buildTitleBlueText()
                    }
                    NavigationLink(destination: ZakonOZdravoohranenii_13()) {
                        MyViewBuilder(title: Text("12"),
                                      content:Text("""
                                                    «Обязанность содействия медицинским работникам. Меры по охране здоровья населения. Возмещение организациям здравоохранения расходов на оказание медицинской помощи. Ответственность за нарушение законодательства о здравоохранении»
                                                    """)).buildTitleBlueText()
                    }
                }
                .navigationBarTitle("", displayMode: .inline)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        VStack {
                            Text("Закон Республики Беларусь")
                                .font(.headline)
                                .foregroundStyle(Color.toolBar)
                                .bold()
                            Text("""
                            «О здравоохранении»
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
    ZakonOZdravoohranenii()
}
