//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg34View: View {
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
    //.padding(5).padding(.top, -10)
    @State private var isTextExpanded71 = true
    var body: some View {
            ScrollView {
                Spacer()
                VStack {
                    
                            MyViewBuilder(title: Text("**Эпидемиологический анамнез**:"), content: Text("""
                            - распирающая головная боль;
                            - многократная рвота;
                            - лихорадка.
                            """)).buildGrayInAndHiddenBlock()
                        
                    Image(systemName: "arrow.down")
                       
                    
                            MyViewBuilder(title: Text("**Клинические признаки**:"), content: Text("""
                            - интоксикация с первых часов заболевания;
                            - диспепсические проявления (тошнота, рвота, жидкий стул);
                            - болевой синдром.
                            """)).buildGrayInAndHiddenBlock()
                       
                    Image(systemName: "arrow.down")
                       
                    
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack (spacing:1){
                            MyViewBuilder(title: Text("34"), content: Text("""
                            **Определение степени обезвоживания**:
                            """)).buildGrayInText()
                            HStack {
                                MyViewBuilder(title: Text("34"), content: Text("""
                                **I**
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
                                            if isTextExpanded5 == true {
                                                isTextExpanded5.toggle()
                                            }
                                            if isTextExpanded6 == true {
                                                isTextExpanded6.toggle()
                                            }
                                            if isTextExpanded7 == true {
                                                isTextExpanded7.toggle()
                                            }
                                            
                                        }
                                    }
                                MyViewBuilder(title: Text("34"), content: Text("""
                                **II**
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
                                            if isTextExpanded5 == true {
                                                isTextExpanded5.toggle()
                                            }
                                            if isTextExpanded6 == true {
                                                isTextExpanded6.toggle()
                                            }
                                            if isTextExpanded7 == true {
                                                isTextExpanded7.toggle()
                                            }
                                        }
                                    }
                                MyViewBuilder(title: Text("34"), content: Text("""
                                **III**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded3)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded3.toggle()
                                            if isTextExpanded7 == false {
                                                isTextExpanded7.toggle()
                                            }
                                            if isTextExpanded1 == false && isTextExpanded2 == false && isTextExpanded3 == false && isTextExpanded4 == false  {
                                                isTextExpanded7.toggle()
                                            }
                                            if isTextExpanded2 == true {
                                                isTextExpanded2.toggle()
                                            }
                                            if isTextExpanded1 == true {
                                                isTextExpanded1.toggle()
                                            }
                                            if isTextExpanded4 == true {
                                                isTextExpanded4.toggle()
                                            }
                                            if isTextExpanded5 == true {
                                                isTextExpanded5.toggle()
                                            }
                                            if isTextExpanded6 == true {
                                                isTextExpanded6.toggle()
                                            }
                                            
                                        }
                                    }
                                MyViewBuilder(title: Text("34"), content: Text("""
                                **IV**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded4)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded4.toggle()
                                            
                                            if isTextExpanded7 == false {
                                                isTextExpanded7.toggle()
                                            }
                                            if isTextExpanded1 == false && isTextExpanded2 == false && isTextExpanded3 == false && isTextExpanded4 == false  {
                                                isTextExpanded7.toggle()
                                            }
                                            if isTextExpanded1 == true {
                                                isTextExpanded1.toggle()
                                            }
                                            if isTextExpanded3 == true {
                                                isTextExpanded3.toggle()
                                            }
                                            if isTextExpanded2 == true {
                                                isTextExpanded2.toggle()
                                            }
                                            if isTextExpanded5 == true {
                                                isTextExpanded5.toggle()
                                            }
                                            if isTextExpanded6 == true {
                                                isTextExpanded6.toggle()
                                            }
                                            
                                        }
                                    }
                            }
                        }
                        .padding(5)
                    }
                    if isTextExpanded1 {
                        Image(systemName: "arrow.down")
                        
                                MyViewBuilder(title: Text("**1 степень**:"), content: Text("""
                                Жажда, сухость во рту, **стул 3-10 раз** в сутки, **рвота 1-2 раза**. **Потеря веса тела до 3%**.
                                """)).buildGrayInAndHiddenBlock()
                           
                        Image(systemName: "arrow.down")
                           
                        
                                MyViewBuilder(title: Text("**Неотложная помощь**:"), content: Text("""
                                **Промывание желудка** при повторяющейся рвоте (зондом или самостоятельно пациентом).
                                **Оральная регидратация** (растворы электролитов с добавлением 20-40 мл 40% глюкозы).
                                """)).buildGrayInAndHiddenBlock()
                            
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("34"), content: Text("""
                        **Доставка в стационар** по профилю основного заболевания
                        """)).buildGrayText()
                    }
                    if isTextExpanded2 {
                        Image(systemName: "arrow.down")
                        
                                MyViewBuilder(title: Text("**2 степень**:"), content: Text("""
                                **1 степень** + сухость кожных покровов, **акроцианоз**, **уменьшение диуреза**, **стул 11-20 раз**, **рвота 3-10 раз**. **Потеря веса тела 4-6%**.
                                """)).buildGrayInAndHiddenBlock()
                           
                        Image(systemName: "arrow.down")
                           
                        
                                MyViewBuilder(title: Text("**Неотложная помощь**:"), content: Text("""
                                **Промывание желудка** при повторяющейся рвоте (зондовое),
                                **парентеральная регидратация** (растворы электролитов в/в капельно) в соответствии с дефицитом **ОЦК**
                                """)).buildGrayInAndHiddenBlock()
                           
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("34"), content: Text("""
                        **Доставка в стационар** по профилю основного заболевания
                        """)).buildGrayText()
                    }
                    if isTextExpanded3 {
                        Image(systemName: "arrow.down")
                        
                                MyViewBuilder(title: Text("**3 степень**:"), content: Text("""
                                **2 степень** + **снижение тургора тканей, олиго- или анурия, тахикардия, гипотензия, одышка**. **Потеря веса тела 7-9%**.
                                """)).buildGrayInAndHiddenBlock()
                            
                    }
                    if isTextExpanded4 {
                        Image(systemName: "arrow.down")
                         
                                MyViewBuilder(title: Text("**4 степень**:"), content: Text("""
                                **3 степень** + **гипотермия, тотальный цианоз, судороги, возможно прекращение рвоты и отсутствие стула. Потеря веса тела 10% и более**.
                                """)).buildGrayInAndHiddenBlock()
                            
                    }
                    if isTextExpanded7 {
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack (spacing:1){
                                
                                MyViewBuilder(title: Text("**Клинические признаки гиповолемического шока**:"), content: Text("""
                                - холодная, бледная, влажная кожа;
                                - **САД менее 90 мм.рт.ст.**,
                                - **ЧСС более 100** в 1 мин,
                                - шоковый индекс **более 0,7**;
                                - **SpО2 менее 90%**.
                                """)).buildGrayInAndHiddenBlockWithBlueButtons()
                                NavigationLink (destination: Prikaz1030Alg5View()) {
                                    MyViewBuilder(title: Text("34"), content: Text("Алгоритм 5 «Гиповолемический шок»")).buildNavigationText().padding(5)
                                }
                            }
                            
                        }
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("34"), content: Text("""
                                **САД ≥ 90 мм.рт.ст., SpО2 ≥ 90%**:
                                """)).buildGrayInText()
                                HStack {
                                    MyViewBuilder(title: Text("34"), content: Text("""
                                    **Да**
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded5)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded5.toggle()
                                                if isTextExpanded2 == true {
                                                    isTextExpanded2.toggle()
                                                }
                                                if isTextExpanded1 == true {
                                                    isTextExpanded1.toggle()
                                                }
                                                
                                                if isTextExpanded6 == true {
                                                    isTextExpanded6.toggle()
                                                }
                                                
                                            }
                                        }
                                    MyViewBuilder(title: Text("34"), content: Text("""
                                    **Нет**
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded6)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded6.toggle()
                                                if isTextExpanded2 == true {
                                                    isTextExpanded2.toggle()
                                                }
                                                if isTextExpanded1 == true {
                                                    isTextExpanded1.toggle()
                                                }
                                                
                                                if isTextExpanded5 == true {
                                                    isTextExpanded5.toggle()
                                                }
                                                
                                            }
                                        }
                                }.padding(5).padding(.top, -10)
                                
                            }
                        }
                    }
                    if isTextExpanded5 {
                        Image(systemName: "arrow.down")
                        
                                MyViewBuilder(title: Text("**Неотложная помощь**:"), content: Text("""
                                **Промывание желудка** при повторяющейся рвоте (зондовое),
                                **парентеральная регидратация** (растворы электролитов в/в капельно) в соответствии с дефицитом **ОЦК**
                                """)).buildGrayInAndHiddenBlock()
                            
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("34"), content: Text("""
                        **Доставка в стационар** по профилю основного заболевания
                        """)).buildGrayText()
                    }
                    if isTextExpanded6 {
                        Image(systemName: "arrow.down")
                           
                        
                        MyViewBuilder(title: Text("34"), content: Text("""
                                **Доставка в ближайший стационар** (ОИТАР, минуя приемное отделение)
                                """)).buildGrayText()
                    }
                    Spacer(minLength: 30)
                    Divider()
                        .background(Color.divider)
                    Spacer(minLength: 15)
                    
                            MyViewBuilder(title: Text("**Примечание**."), content: Text("""
                                    **Расчет парентеральной регидратации проводится по формуле**:
                                    
                                    х (мл) = вес больного (кг) × % потери веса × 10.
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
                    Text("Алгоритм 34")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Острые кишечные инфекции»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg34"), title: "Алгоритм 34")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}

#Preview {
    Prikaz1030Alg34View()
}
