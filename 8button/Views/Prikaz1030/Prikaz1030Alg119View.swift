//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg19View: View {
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
    @State private var isTextExpanded15 = false
    
    var body: some View {
        NavigationStack {
            ScrollView {
                Spacer()
                VStack {
                    MyViewBuilder(title: Text("""
                                              **Кинические признаки**:
                                              """),
                                  content: Text("""
                                                - резкая боль за грудиной в области спины, эпигастрия;
                                                - боль может быть в животе и поясничной области при расслаивании брюшного отдела;
                                                - может быть потеря сознания;
                                                - начало острое;
                                                - кожные покровы бледные;
                                                - АД может быть чаще повышенное, затем понижается;
                                                - может быть разница давления на руках и ногах; - пульсация на ногах чаще отсутствует.
                                                """)).buildGrayInAndHiddenBlock()
                    
                    Image(systemName: "arrow.down")
                    
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack {
                            MyViewBuilder(title: Text("""
                                                      **Дифференциальный диагноз**:
                                                      """),
                                          content: Text("""
                                                        - ТЭЛА;
                                                        - почечная колика;
                                                        - «острый живот»;
                                                        - радикулит;
                                                        - острый инфаркт миокарда;
                                                        - острый коронарный синдром.
                                                        """)).buildGrayInAndHiddenBlockWithBlueButtons()
                            Spacer(minLength: 1)
                            MyViewBuilder(title: Text("19"), content: Text("""
                            **Признаки гиповолемического шока**:
                            """)).buildGrayInText()
                            HStack {
                                MyViewBuilder(title: Text("19"), content: Text("""
                        **Есть**
                        """)).buildGreen1Text(isTextExpanded: isTextExpanded1)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded1.toggle()
                                            
                                            if isTextExpanded2 == true {
                                                isTextExpanded2.toggle()
                                            }
                                        }
                                    }
                                
                                MyViewBuilder(title: Text("19"), content: Text("""
                        **Нет**
                        """)).buildGreen1Text(isTextExpanded: isTextExpanded2)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded2.toggle()
                                            
                                            if isTextExpanded1 == true {
                                                isTextExpanded1.toggle()
                                            }
                                        }
                                    }
                            }.padding(5).padding(.top, -10)
                        }
                    }
                    if isTextExpanded1 {
                        Image(systemName: "arrow.down")
                        
                        NavigationLink (destination: Prikaz1030Alg5View()) {
                            MyViewBuilder(title: Text("19"), content: Text("Алгоритм 5 «Гиповолемический шок»")).buildNavigationText()
                        }
                        Image(systemName: "arrow.down")
                        MyViewBuilder(title: Text("""
                                                  **Неотложная помощь**:
                                                  """),
                                      content: Text("""
                                                    - **сублингвально нитроглицерин по 0,5 мг**, повторно **через 7-10 минут** под контролем АД;
                                                    - при **выраженном болевом синдроме** в/в дробно ввести **1мл 1% раствора морфина в 20 мл 0,9% раствора натрия хлорида**;
                                                    - при выраженном болевом синдроме, **сопровождающимся возбуждением**, артериальной гипертензией – **нейролептаналгезия**: **1-2 мл 0,005% раствора фентанила в сочетании с 1-2 мл 0,25 % раствора дроперидола в/в в 20 мл 0,9% раствора натрия хлорида**;
                                                    - **оксигенотерапия** при гипоксемии (SO2 менее 90%).
                                                    
                                                    **Противопоказано введение антикоагулянтов!**
                                                    """)).buildGrayInAndHiddenBlock()
                        
                        Image(systemName: "arrow.down")
                        
                        MyViewBuilder(title: Text("19"), content: Text("""
                        **Экстренная доставка в стационар** по профилю основного заболевания
                        """)).buildGrayText()
                    }
                    if isTextExpanded2 {
                        Image(systemName: "arrow.down")
                        
                        MyViewBuilder(title: Text("19"), content: Text("""
                        **Установить катетер** в периферическую и (или) центральную вену (при необходимости).
                        ЭКГ-мониторинг.
                        """)).buildGrayText()
                        Image(systemName: "arrow.down")
                        
                        MyViewBuilder(title: Text("""
                                                  **Неотложная помощь**:
                                                  """),
                                      content: Text("""
                                                    - **сублингвально нитроглицерин по 0,5 мг**, повторно **через 7-10 минут** под контролем АД;
                                                    - при **выраженном болевом синдроме** в/в дробно ввести **1мл 1% раствора морфина в 20 мл 0,9% раствора натрия хлорида**;
                                                    - при выраженном болевом синдроме, **сопровождающимся возбуждением**, артериальной гипертензией – **нейролептаналгезия**: **1-2 мл 0,005% раствора фентанила в сочетании с 1-2 мл 0,25 % раствора дроперидола в/в в 20 мл 0,9% раствора натрия хлорида**;
                                                    - **оксигенотерапия** при гипоксемии (SO2 менее 90%).
                                                    
                                                    **Противопоказано введение антикоагулянтов!**
                                                    """)).buildGrayInAndHiddenBlock()
                        Image(systemName: "arrow.down")
                        
                        MyViewBuilder(title: Text("19"), content: Text("""
                        **Экстренная доставка в стационар** по профилю основного заболевания
                        """)).buildGrayText()
                    }
                }
                .textSelection(.enabled)
                .padding(.horizontal, 10)
                .padding(.bottom, 85)
            }
            //            .padding(.horizontal, 200)
            .edgesIgnoringSafeArea(.bottom)
            .background(Color.back)
        }
        .navigationBarBackButtonHidden(false)
        .navigationBarTitle("",displayMode: .automatic)
        
        .toolbar {
            ToolbarItem(placement: .principal) {
                VStack {
                    Text("Алгоритм 19")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Расслаивающая аневризма аорты»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg19"), title: "Алгоритм 19")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}

#Preview {
    Prikaz1030Alg19View()
}
