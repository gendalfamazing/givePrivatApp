//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg32View: View {
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
                    
                            MyViewBuilder(title: Text("**Эпидемиология**:"), content: Text("""
                            1. Начало заболевания в течение **7 дней после тесного контакта с больным с подтвержденным высокопатогенным гриппом**.
                            2. Заболевание, возникшее в течение **7 дней после возвращения из региона, где имеются случаи подтвержденного высокопатогенного гриппа**.
                            3. Заболевание, отмеченное **в коллективе**, где зарегистрирован **1 и более случай высокопатогенного гриппа**.
                            """)).buildGrayInAndHiddenBlock()
                        
                    Image(systemName: "arrow.down")
                       
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack (spacing:1){
                            MyViewBuilder(title: Text("32"), content: Text("""
                                               **Клиническая картина**:
                            (не менее 2-х из перечисленных признаков)
                            """)).buildGrayInText()
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded71.toggle()
                                        
                                    }
                                }
                            if isTextExpanded71 {
                                MyViewBuilder(title: Text("32"), content: Text("""
                            1. Лихорадка.
                            2. Насморк.
                            3. Кашель.
                            4. Боль в горле.
                            5. Одышка.
                            """)).buildGrayInHiddenText()
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded71.toggle()
                                            
                                        }
                                    }
                            }
                            MyViewBuilder(title: Text("32"), content: Text("""
                            **Осложнения**:
                            """)).buildGrayInText()
                            
                            HStack {
                                MyViewBuilder(title: Text("32"), content: Text("""
                                **Да**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded1)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded1.toggle()
                                            if isTextExpanded71 == true {
                                                isTextExpanded71.toggle()
                                            }
                                            if isTextExpanded1 == false && isTextExpanded2 == false {
                                                isTextExpanded71.toggle()
                                            }
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
                                            
                                        }
                                    }
                                MyViewBuilder(title: Text("32"), content: Text("""
                                **Нет**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded2)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded2.toggle()
                                            if isTextExpanded71 == true {
                                                isTextExpanded71.toggle()
                                            }
                                            if isTextExpanded1 == false && isTextExpanded2 == false {
                                                isTextExpanded71.toggle()
                                            }
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
                                            
                                        }
                                    }
                            }
                            
                        }
                        .padding(5)
                    }
                    if isTextExpanded1 {
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                VStack {
                                    HStack {
                                        MyViewBuilder(title: Text("32"), content: Text("""
                                **Отек головного мозга**
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
                                                    if isTextExpanded2 == true {
                                                        isTextExpanded2.toggle()
                                                    }
                                                    
                                                }
                                            }
                                        MyViewBuilder(title: Text("31"), content: Text("""
                                **ОДН**
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
                                                    if isTextExpanded2 == true {
                                                        isTextExpanded2.toggle()
                                                    }
                                                    
                                                }
                                            }
                                        
                                        
                                    }
                                    MyViewBuilder(title: Text("31"), content: Text("""
                                **Инфекционно-токсический шок**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded3)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded3.toggle()
                                                if isTextExpanded5 == true {
                                                    isTextExpanded5.toggle()
                                                }
                                                if isTextExpanded4 == true {
                                                    isTextExpanded4.toggle()
                                                }
                                                if isTextExpanded2 == true {
                                                    isTextExpanded2.toggle()
                                                }
                                                
                                            }
                                        }
                                }
                            }
                            .padding(5)
                        }
                    }
                    if isTextExpanded2 {
                        Image(systemName: "arrow.down")
                        
                                MyViewBuilder(title: Text("**Симптоматическая терапия**:"), content: Text("""
                                – при гипертермии **метамизол 50% 2 мл** или **кеторолак 10-30 мг в/в**;
                                – при судорогах и возбуждении **диазепам 2 мл 0,5% раствора в/в**.
                                """)).buildGrayInAndHiddenBlock()
                           
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("32"), content: Text("""
                        **Доставка в стационар** по профилю основного заболевания
                        """)).buildGrayText()
                    }
                    if isTextExpanded3 {
                        Image(systemName: "arrow.down")
                        
                                MyViewBuilder(title: Text("**Клинические признаки**:"), content: Text("""
                        1) холодная, бледная, влажная кожа;
                        2) САД **менее 90 мм.рт.ст.**,
                        3) ЧСС **более 100** в 1 мин.
                        """)).buildGrayInAndHiddenBlock()
                           
                        Image(systemName: "arrow.down")
                        
                                MyViewBuilder(title: Text("**Неотложная помощь**:"), content: Text("""
                        1. Обеспечить **внутривенный доступ через периферический катетер наибольшего диаметра**.
                        2. В/в быстро **струйно инфузия кристаллоидных растворов до стабилизации АД и пульса** с последующим переходом на капельную инфузию.
                        **(при неопределяемом уровне АД в 2 вены и более)**.
                        3. При **отсутствии эффекта** – внутривенно капельно **допамин 200 мг**.
                        4. **Оксигенотерапия**.
                        5. **Дексаметазон 8-16 мг** (преднизолон 60-120 мг).
                        """)).buildGrayInAndHiddenBlock()
                            
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("32"), content: Text("""
                        **Доставка в стационар инфекционного профиля** (ОИТАР минуя приемное отделение)
                        """)).buildGrayText()
                    }
                    if isTextExpanded4 {
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack (spacing:1){
                                
                                MyViewBuilder(title: Text("**Клинические признаки**:"), content: Text("""
                                - ЧДД **более 40** или **менее 8** в 1 мин,
                                - **SpО2 ≤ 90%** при дыхании атмосферным воздухом.
                                """)).buildGrayInAndHiddenBlockWithBlueButtons()
                                NavigationLink (destination: Prikaz1030Alg3View()) {
                                    MyViewBuilder(title: Text("31"), content: Text("Алгоритм 3 «Острая дыхательная недостаточность»")).buildNavigationText().padding(5)
                                }
                            }
                            
                        }
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("32"), content: Text("""
                        **Доставка в стационар инфекционного профиля** (ОИТАР минуя приемное отделение)
                        """)).buildGrayText()
                    }
                    if isTextExpanded5 {
                        Image(systemName: "arrow.down")
                        
                                MyViewBuilder(title: Text("**Клинические признаки**:"), content: Text("""
                        - распирающая головная боль;
                        - угнетение сознания;
                        - брадикардия;
                        - судороги.
                        """)).buildGrayInAndHiddenBlock()
                           
                        Image(systemName: "arrow.down")
                        
                                MyViewBuilder(title: Text("**Неотложная помощь**:"), content: Text("""
                        - обеспечить **внутривенный доступ** через периферический **катетер наибольшего диаметра**;
                        **антибактериальная терапия** – **цефтриаксон 1,0 в/в**, **хлорам-феникол 25 мг/кг** веса в/м;
                        - **дексаметазон 8-16 мг** (преднизолон 60-120 мг) в/в.
                        - **фуросемид 1% до 4 мл** в/в.
                        """)).buildGrayInAndHiddenBlock()
                           
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("32"), content: Text("""
                        **Доставка в стационар инфекционного профиля** (ОИТАР минуя приемное отделение)
                        """)).buildGrayText()
                    }
                    
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
                    Text("Алгоритм 32")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Высокопатогенный грипп»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg32"), title: "Алгоритм 32")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}

#Preview {
    Prikaz1030Alg32View()
}
