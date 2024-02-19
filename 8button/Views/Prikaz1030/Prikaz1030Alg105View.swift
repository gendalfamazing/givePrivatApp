//
//  Prikaz1030Alg5View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg5View: View {
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
    
    var body: some View {
        NavigationStack {
            ScrollView {
                Spacer()
                VStack {
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack (spacing: 5){
                            MyViewBuilder(title: Text("5"), content: Text("""
                            **Провести обследование**
                            """)).buildGrayInText()
                            MyViewBuilder(title: Text("5"), content: Text("""
                        **Клинические признаки:**
                        - холодная, бледная, влажная кожа;
                        - САД **менее 90 мм рт. ст.**, **ЧСС более 100** в 1 мин, **шоковый индекс более 0,7**.
                        """)).buildGrayInHiddenText()
                            HStack {
                                MyViewBuilder(title: Text("5"), content: Text("При **кровотечении**")).buildGreen1Text(isTextExpanded: isTextExpanded1)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded1.toggle()
                                            if isTextExpanded2 == true {
                                                isTextExpanded2.toggle()
                                            }
                                            if isTextExpanded4 == true {
                                                isTextExpanded4.toggle()
                                            }
                                            if isTextExpanded5 == true {
                                                isTextExpanded5.toggle()
                                            }
                                        }
                                    }
                                
                                MyViewBuilder(title: Text("5"), content: Text("При **ОДН**")).buildGreen1Text(isTextExpanded: isTextExpanded2)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded2.toggle()
                                            if isTextExpanded1 == true {
                                                isTextExpanded1.toggle()
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
                            if isTextExpanded1 {
                                VStack (spacing: 5) {
                                MyViewBuilder(title: Text("5"), content: Text("""
                            При кровотечении – **временная остановка кровотечения**.
                            Обеспечить внутривенный доступ через периферический **катетер наибольшего диаметра**.
                            """)).buildGrayInHiddenText()
                                MyViewBuilder(title: Text("5"), content: Text("""
                            Внутривенно быстро струйно **инфузия кристаллоидных растворов не менее 800 мл за 10 мин** (при неопределяемом уровне САД в **2 вены и более**) под контролем **САД (не менеее 90 мм рт. ст.)**.
                            Обеспечить **проходимость дыхательных путей**, оксигенотерапия (под контролем **SpО2 – не менее 90%**).
                            При необходимости:
                            - **обезболивание** (**1 мл 0,005%** раствора **фентанила**, **1 мл 2%** раствора **тримеперидина**, **1-2 мл 5%** раствора **трамадола**);
                            - **глюкокортикостероиды**: **преднизолон 120-300 мг** или **метилпреднизолон до 30 мг/кг** массы тела.
                            """)).buildGrayInHiddenText()
                            }
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded1.toggle()
                                        if isTextExpanded2 == true {
                                            isTextExpanded2.toggle()
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
                            
                            if isTextExpanded2 {
                                VStack (spacing: 5) {
                                MyViewBuilder(title: Text("5"), content: Text("""
                            При присоединении клинических признаков **острой дыхательной недостаточности**:
                            - частота дыхания **более 40** или **менее 8 в 1 мин**;
                            - **цианоз кожных покровов**.
                            """)).buildGrayInHiddenText()
                                NavigationLink (destination: Prikaz1030Alg3View()) {
                                    MyViewBuilder(title: Text("5"), content: Text("Алгоритм 3 «Острая дыхательная недостаточность»")).buildNavigationText()
                                }
                                MyViewBuilder(title: Text("5"), content: Text("""
                            Внутривенно быстро струйно **инфузия кристаллоидных растворов не менее 800 мл за 10 мин** (при неопределяемом уровне САД в **2 вены и более**) под контролем **САД (не менеее 90 мм рт. ст.)**.
                            Обеспечить **проходимость дыхательных путей**, оксигенотерапия (под контролем **SpО2 – не менее 90%**).
                            При необходимости:
                            - **обезболивание** (**1 мл 0,005%** раствора **фентанила**, **1 мл 2%** раствора **тримеперидина**, **1-2 мл 5%** раствора **трамадола**);
                            - **глюкокортикостероиды**: **преднизолон 120-300 мг** или **метилпреднизолон до 30 мг/кг** массы тела.
                            """)).buildGrayInHiddenText()
                            }
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded2.toggle()
                                        if isTextExpanded1 == true {
                                            isTextExpanded1.toggle()
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
                            
                            
                            MyViewBuilder(title: Text("5"), content: Text("""
                        **Цифры САД больше 90 мм.рт.ст.**
                        """)).buildGrayInText()
                            
                            
                            HStack {
                                MyViewBuilder(title: Text("5"), content: Text("**Да**")).buildGreen1Text(isTextExpanded: isTextExpanded5)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded5.toggle()
                                            if isTextExpanded4 == true {
                                                isTextExpanded4.toggle()
                                            }
                                        }
                                    }
                                MyViewBuilder(title: Text("5"), content: Text("**Нет**")).buildGreen1Text(isTextExpanded: isTextExpanded4)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded4.toggle()
                                            if isTextExpanded5 == true {
                                                isTextExpanded5.toggle()
                                            }
                                        }
                                    }
                                
                            }
                        }
                        .padding(5.0)
                    }
                    if isTextExpanded4 {
                        Image(systemName: "arrow.down")
                            
                    
                        MyViewBuilder(title: Text("5"), content: Text("""
                        При **кровопотере** продолжить в/в инфузию **коллоидными растворами (10% раствор гидроксиэтил-крахмала, декстран) 400-800 мл**.
                        """)).buildGrayText()
                        Image(systemName: "arrow.down")
                            
                    
                        MyViewBuilder(title: Text("5"), content: Text("""
                        При **отсутствии эффекта** – в/в капельно **допамин 200 мг**.
                        """)).buildGrayText()
                        Image(systemName: "arrow.down")
                            
                    
                        MyViewBuilder(title: Text("5"), content: Text("""
                        Положение пациента в **положении лёжа с приподнятым ножным концом** носилок. Доставка **под контролем** жизненно важных функций **(АД, ЧДД, ЧСС, SpO2)** в **ближайший стационар**. Передача в ОИТАР, минуя приемное отделение.
                        """)).buildGrayText()
                    }
                    if isTextExpanded5 {
                        Image(systemName: "arrow.down")
                            
                    
                        MyViewBuilder(title: Text("5"), content: Text("""
                        **Продолжить** в/в капельное введение **кристаллоидных растворов**.
                        """)).buildGrayText()
                        Image(systemName: "arrow.down")
                            
                    
                        MyViewBuilder(title: Text("5"), content: Text("""
                        Положение пациента в **положении лёжа с приподнятым ножным концом** носилок. Доставка **под контролем** жизненно важных функций **(АД, ЧДД, ЧСС, SpO2)** в **ближайший стационар**. Передача в ОИТАР, минуя приемное отделение.
                        """)).buildGrayText()
                    }
                    
                    
                    Spacer()
                    
                }
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
                    Text("Алгоритм 5")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("""
                    «Гиповолемический шок»
                    """)
                    .font(.caption2)
                    .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg5"), title: "Алгоритм 5")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}



#Preview {
    Prikaz1030Alg5View()
}
