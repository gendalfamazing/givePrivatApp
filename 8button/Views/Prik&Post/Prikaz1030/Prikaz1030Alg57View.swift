//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg57View: View {
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
    @State private var isTextExpanded16 = false
    @State private var isTextExpanded17 = false
    
    @State private var isTextExpanded71 = true
    @State private var isTextExpanded72 = true
    
    var body: some View {
        NavigationStack {
            ScrollView {
                Spacer()
                VStack {
                    
                            MyViewBuilder(title: Text("**Клиническая картина**:"), content: Text("""
                            - **головная боль** (чаще односторонней локализации).
                            - **фото- и фонофобия**.
                            - **тошнота, рвота**.
                            - озноб, повышенная потливость.
                            """)).buildGrayInAndHiddenBlock()
                        
                    Image(systemName: "arrow.down")
                    
                            MyViewBuilder(title: Text("**Дифференциальная диагностика**:"), content: Text("""
                            - ОНМК, субарахноидальное кровоизлияние;
                            - менингит;
                            - энцефалит;
                            - синусит;
                            - острая гипертоническая энцефалопатия;
                            - внутричерепная гематома;
                            - объемный процесс.
                            """)).buildGrayInAndHiddenBlock()
                       
                    Image(systemName: "arrow.down")
                       
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack {
                            MyViewBuilder(title: Text("57"), content: Text("""
                            - АД, ЧСС, ЧД,
                            - ЭКГ,
                            - термометрия,
                            """)).buildGrayInHiddenText().padding(.horizontal, -5)
                            MyViewBuilder(title: Text("57"), content: Text("""
                            **Наличие очаговой симтоматики**:
                            """)).buildGrayInText().padding(-5)
                            HStack {
                                
                                MyViewBuilder(title: Text("57"), content: Text("""
                            **Есть**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded1)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded1.toggle()
                                            if isTextExpanded2 == true {
                                                isTextExpanded2.toggle()
                                            }
                                            if isTextExpanded3 == true {
                                                isTextExpanded3.toggle()
                                            }
                                            if isTextExpanded4 == true {
                                                isTextExpanded4.toggle()
                                            }
                                            
                                        }
                                    }
                                MyViewBuilder(title: Text("57"), content: Text("""
                            **Нет**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded2)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded2.toggle()
                                            if isTextExpanded1 == true {
                                                isTextExpanded1.toggle()
                                            }
                                            if isTextExpanded3 == true {
                                                isTextExpanded3.toggle()
                                            }
                                            if isTextExpanded4 == true {
                                                isTextExpanded4.toggle()
                                            }
                                        }
                                    }
                                
                            }
                        }
                        .padding(5)
                    }
                    if isTextExpanded1{
                        Image(systemName: "arrow.down")
                           
                        NavigationLink (destination: Prikaz1030Alg30View()) {
                            MyViewBuilder(title: Text("57"), content: Text("Алгоритм 30 «Острое нарушение мозгового кровообращения»")).buildNavigationText()
                        }
                    }
                    if isTextExpanded2{
                        Image(systemName: "arrow.down")
                       
                                MyViewBuilder(title: Text("**Неотложная помощь**:"), content: Text("""
                                - **метамизол 50% – 2-4 мл** в/в или **кеторолак 3% - 1 мл**, в/в (в/м).
                                
                                По показаниям:
                                - **диазепам 5-10 мг** (1-2 мл 0,5% раствора) в/м;
                                - **метоклопрамид 0,5% - 2 мл** в/м.
                                """)).buildGrayInAndHiddenBlock()
                           
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                
                                MyViewBuilder(title: Text("57"), content: Text("""
                                - **Серия тяжелых, следующих друг за другом приступов** (с интервалом **менее 4 часов**), сопровождающихся **многократной рвотой**.
                                - **Один тяжелый**, продолжающийся **более 72 часов**, приступ, который **не купируется** с помощью ранее применявшихся болеутоляющих лекарственных средств.
                                """)).buildGrayInHiddenText().padding(.horizontal, -5)
                                HStack {
                                    
                                    MyViewBuilder(title: Text("57"), content: Text("""
                                **Да**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded3)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded3.toggle()
                                                
                                                if isTextExpanded4 == true {
                                                    isTextExpanded4.toggle()
                                                }
                                                
                                            }
                                        }
                                    MyViewBuilder(title: Text("57"), content: Text("""
                                **Нет**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded4)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded4.toggle()
                                                
                                                if isTextExpanded3 == true {
                                                    isTextExpanded3.toggle()
                                                }
                                            }
                                        }
                                    
                                }
                            }
                            .padding(5)
                        }
                    }
                    if isTextExpanded3{
                        Image(systemName: "arrow.down")
                        
                                MyViewBuilder(title: Text("**Мигренозный статус**"), content: Text("""
                                - **преднизолон 60-75 мг** в/в струйно
                                """)).buildGrayInAndHiddenBlock()
                            
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("57"), content: Text("""
                        **Доставка в стационар** по профилю основного заболевания
                        """)).buildGrayText()
                    }
                    if isTextExpanded4{
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("57"), content: Text("""
                        **Рекомендовать дообследование** и лечение у невролога **в поликлинике** по месту жительства
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
                    Text("Алгоритм 57")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Мигрень»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg57"), title: "Алгоритм 57")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}

#Preview {
    Prikaz1030Alg57View()
}
