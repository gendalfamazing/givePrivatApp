//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg43View: View {
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
            ScrollView {
                Spacer()
                VStack {
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack {
                            MyViewBuilder(title: Text("43"), content: Text("""
                                **Провести обследование пациента**:
                                """)).buildGrayInText()
                        }
                        .padding(5)
                    }
                    Image(systemName: "arrow.down")
                       
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack {
                            HStack {
                                MyViewBuilder(title: Text("42"), content: Text("""
                                **Признаки ОДН**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded1)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded1.toggle()
                                            
                                            if isTextExpanded2 == true {
                                                isTextExpanded2.toggle()
                                            }
                                            
                                        }
                                    }
                                MyViewBuilder(title: Text("42"), content: Text("""
                                **Признаки ГШ**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded2)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded2.toggle()
                                            
                                            if isTextExpanded1 == true {
                                                isTextExpanded1.toggle()
                                            }
                                            
                                        }
                                    }
                                
                            }.padding(5)
                            if isTextExpanded1{
                                VStack (spacing:1) {
                                
                                MyViewBuilder(title: Text("**Клинические признаки острой дыхательной недостаточности**:"), content: Text("""
                                        - ЧДД **более 40 или менее 8** в 1 мин;
                                        - **SpО2 менее 90%** при дыхании атмосферным воздухом.
                                        """)).buildGrayInAndHiddenBlockWithBlueButtons().padding(.top, -5)
                                
                                NavigationLink (destination: Prikaz1030Alg3View()) {
                                    MyViewBuilder(title: Text("42"), content: Text("Алгоритм 3 «Острая дыхательная недостаточность»")).buildNavigationText().padding(5)
                                }
                            }
                            }
                            if isTextExpanded2{
                                VStack (spacing:1){
                                    MyViewBuilder(title: Text("**Клинические признаки гиповолемического шока**:"), content: Text("""
                                    - холодная, бледная, влажная кожа;
                                    - **САД менее 90 мм.рт.ст.**,
                                    - **ЧСС более 100** в 1 мин,
                                    - шоковый индекс **более 0,7**;
                                    - **SpО2 менее 90%**.
                                    """)).buildGrayInAndHiddenBlockWithBlueButtons().padding(.top, -5)
                                    
                                    NavigationLink (destination: Prikaz1030Alg5View()) {
                                        MyViewBuilder(title: Text("42"), content: Text("Алгоритм 5 «Гиповолемический шок»")).buildNavigationText().padding(5)
                                    }
                                }
                            }
                        }
                        
                    }
                    Image(systemName: "arrow.down")
                       
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack {
                            MyViewBuilder(title: Text("43"), content: Text("""
                            **Уточнить характер травмы живота**:
                            """)).buildGrayInText().padding(-5)
                            VStack {
                                MyViewBuilder(title: Text("43"), content: Text("""
                                **Повреждение полого органа**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded3)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded3.toggle()
                                            if isTextExpanded4 == true {
                                                isTextExpanded4.toggle()
                                            }
                                            if isTextExpanded5 == true {
                                                isTextExpanded5.toggle()
                                            }
                                            if isTextExpanded6 == false {
                                                isTextExpanded6.toggle()
                                            }
                                            if isTextExpanded3 == false && isTextExpanded4 == false && isTextExpanded5 == false {
                                                isTextExpanded6.toggle()
                                            }
                                        }
                                    }
                                MyViewBuilder(title: Text("43"), content: Text("""
                                **Повреждение паренхиматозного органа**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded4)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded4.toggle()
                                            
                                            if isTextExpanded3 == true {
                                                isTextExpanded3.toggle()
                                            }
                                            if isTextExpanded5 == true {
                                                isTextExpanded5.toggle()
                                            }
                                            if isTextExpanded6 == false {
                                                isTextExpanded6.toggle()
                                            }
                                            if isTextExpanded3 == false && isTextExpanded4 == false && isTextExpanded5 == false {
                                                isTextExpanded6.toggle()
                                            }
                                            
                                            
                                        }
                                    }
                                MyViewBuilder(title: Text("43"), content: Text("""
                                **Эвентрация кишечника**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded5)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded5.toggle()
                                            
                                            if isTextExpanded3 == true {
                                                isTextExpanded3.toggle()
                                            }
                                            if isTextExpanded4 == true {
                                                isTextExpanded4.toggle()
                                            }
                                            if isTextExpanded6 == false {
                                                isTextExpanded6.toggle()
                                            }
                                            if isTextExpanded3 == false && isTextExpanded4 == false && isTextExpanded5 == false {
                                                isTextExpanded6.toggle()
                                            }
                                            
                                            
                                        }
                                    }
                                
                            }
                            
                        }
                        .padding(5)
                    }
                    if isTextExpanded3{
                        Image(systemName: "arrow.down")
                        
                                MyViewBuilder(title: Text("**Объективные данные**:"), content: Text("""
                                        - **симптомы раздражения брюшины положительные**;
                                        - **живот не участвует в акте дыхания**;
                                        - болезненность и выраженное напряжение при поверхностной пальпации.
                                        """)).buildGrayInAndHiddenBlock()
                            
                        
                    }
                    if isTextExpanded4{
                        Image(systemName: "arrow.down")
                        
                                MyViewBuilder(title: Text("**Объективные данные**:"), content: Text("""
                                        - бледные, влажные кожные покровы;
                                        - **выраженная тахикардия**;
                                        - **артериальная гипотензия**.
                                        """)).buildGrayInAndHiddenBlock()
                           
                        
                    }
                    if isTextExpanded5{
                        Image(systemName: "arrow.down")
                           
                        
                        MyViewBuilder(title: Text("43"), content: Text("""
                                        **Положение тела на спине**.
                                        
                                        **Выпавший кишечник и сальник не вправлять, закрыть стерильной пелёнкой, смоченной 0,9% раствором хлорида натрия**.
                                        """)).buildGrayText()
                        
                    }
                    if isTextExpanded6{
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("43"), content: Text("""
                                Положение тела **на боку**, **установка воздуховода**, при необходимости – **интубация трахеи**; пульсоксиметрия.
                                Установка периферического **катетера наибольшего диаметра** (при необходимости 2-х и более).
                                """)).buildGrayText()
                        Image(systemName: "arrow.down")
                        
                                MyViewBuilder(title: Text("**Неотложная помощь**:"), content: Text("""
                                        1.**Инфузионная терапия** под контролем АД (**САД ≥ 90 мм.рт.ст.**).
                                        2.**Оксигенотерапия** (под контролем SpО2 – **не менее 90%**).
                                        3.**Обезболивание** анальгетиками в/в :
                                        - ненаркотическими (**1 мл 3% раствора кеторолака**, **1-2 мл 5% раствора трамадола**)
                                        - наркотическими (**1 мл 0,005% раствора фентанила**, **1 мл 2% раствора тримеперидина**)
                                        4.**При судорожном синдроме и возбуждении – диазепам 2-4 мл 0,5%** раствора в/в.
                                        5.**Асептическая повязка на рану** после обработки краев раны антисептиком (**3% раствор перекиси водорода**) при открытой травме.
                                        """)).buildGrayInAndHiddenBlock()
                           
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("43"), content: Text("""
                                **Доставка в стационар** по профилю основного заболевания, **при тяжелом состоянии – в ближайший** (ОИТАР, минуя приемное отделение)
                                """)).buildGrayText()
                    }
                    Spacer(minLength: 30)
                    Divider()
                        .background(Color.divider)
                    Spacer(minLength: 15)
                    
                            MyViewBuilder(title: Text("**Примечание.**"), content: Text("""
                                    **Любую колото-резаную рану живота считать проникающей**, ранящие предметы (нож, шило, заточка), находящиеся в ране **не извлекать**, а **дополнительно фиксировать** (пластырем) или **удерживать рукой**.
                                    """)).buildGrayInAndHiddenBlock()
                       
                }
                .textSelection(.enabled)
                .padding(.horizontal, 10)
                .padding(.bottom, 55)
            }
            //            .padding(.horizontal, 200)
//            .edgesIgnoringSafeArea(.bottom)
            .background(Color.back)
        
        .navigationBarBackButtonHidden(false)
        .navigationBarTitle("",displayMode: .automatic)
        
        .toolbar {
            ToolbarItem(placement: .principal) {
                VStack {
                    Text("Алгоритм 43")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Травмы живота»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg43"), title: "Алгоритм 43")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}

#Preview {
    Prikaz1030Alg43View()
}
