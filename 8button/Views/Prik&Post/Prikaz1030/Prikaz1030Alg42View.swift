//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg42View: View {
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
                            MyViewBuilder(title: Text("42"), content: Text("""
                                **Провести обследование грудной клетки**:
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
                            MyViewBuilder(title: Text("42"), content: Text("""
                            **Характер травмы**:
                            """)).buildGrayInText()
                            HStack {
                                MyViewBuilder(title: Text("42"), content: Text("""
                                **Открытая травма**
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
                                            if isTextExpanded6 == true {
                                                isTextExpanded6.toggle()
                                            }
                                            if isTextExpanded7 == true {
                                                isTextExpanded7.toggle()
                                            }
                                            if isTextExpanded8 == true {
                                                isTextExpanded8.toggle()
                                            }
                                            if isTextExpanded9 == true {
                                                isTextExpanded9.toggle()
                                            }
                                            if isTextExpanded10 == true {
                                                isTextExpanded10.toggle()
                                            }
                                            
                                            
                                        }
                                    }
                                MyViewBuilder(title: Text("42"), content: Text("""
                                **Закрытая травма**
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
                                            if isTextExpanded6 == true {
                                                isTextExpanded6.toggle()
                                            }
                                            if isTextExpanded7 == true {
                                                isTextExpanded7.toggle()
                                            }
                                            if isTextExpanded8 == true {
                                                isTextExpanded8.toggle()
                                            }
                                            if isTextExpanded9 == true {
                                                isTextExpanded9.toggle()
                                            }
                                            if isTextExpanded10 == true {
                                                isTextExpanded10.toggle()
                                            }
                                        }
                                    }
                                
                            }.padding(5).padding(.top, -10)
                            
                        }
                    }
                    
                    if isTextExpanded3{
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                
                                HStack {
                                    VStack {
                                        MyViewBuilder(title: Text("42"), content: Text("""
                                        **Множественные переломы рёбер**
                                        """)).buildGreen1Text(isTextExpanded: isTextExpanded5)
                                            .onTapGesture {
                                                withAnimation (.snappy) {
                                                    isTextExpanded5.toggle()
                                                    
                                                    if isTextExpanded6 == true {
                                                        isTextExpanded6.toggle()
                                                    }
                                                    if isTextExpanded7 == true {
                                                        isTextExpanded7.toggle()
                                                    }
                                                    if isTextExpanded8 == true {
                                                        isTextExpanded8.toggle()
                                                    }
                                                    if isTextExpanded9 == true {
                                                        isTextExpanded9.toggle()
                                                    }
                                                    if isTextExpanded10 == false {
                                                        isTextExpanded10.toggle()
                                                    }
                                                    if isTextExpanded5 == false && isTextExpanded6 == false && isTextExpanded7 == false {
                                                        isTextExpanded10.toggle()
                                                    }
                                                    
                                                    
                                                }
                                            }
                                        
                                        HStack{
                                            MyViewBuilder(title: Text("42"), content: Text("""
                                        **Напряжённый пневмоторакс**
                                        """)).buildGreen1Text(isTextExpanded: isTextExpanded6)
                                                .onTapGesture {
                                                    withAnimation (.snappy) {
                                                        isTextExpanded6.toggle()
                                                        
                                                        if isTextExpanded5 == true {
                                                            isTextExpanded5.toggle()
                                                        }
                                                        if isTextExpanded7 == true {
                                                            isTextExpanded7.toggle()
                                                        }
                                                        if isTextExpanded8 == true {
                                                            isTextExpanded8.toggle()
                                                        }
                                                        if isTextExpanded9 == true {
                                                            isTextExpanded9.toggle()
                                                        }
                                                        if isTextExpanded10 == false {
                                                            isTextExpanded10.toggle()
                                                        }
                                                        if isTextExpanded5 == false && isTextExpanded6 == false && isTextExpanded7 == false {
                                                            isTextExpanded10.toggle()
                                                        }
                                                    }
                                                }
                                            MyViewBuilder(title: Text("42"), content: Text("""
                                        **Гемоторакс**
                                        """)).buildGreen1Text(isTextExpanded: isTextExpanded7)
                                                .onTapGesture {
                                                    withAnimation (.snappy) {
                                                        isTextExpanded7.toggle()
                                                        
                                                        if isTextExpanded6 == true {
                                                            isTextExpanded6.toggle()
                                                        }
                                                        if isTextExpanded5 == true {
                                                            isTextExpanded5.toggle()
                                                        }
                                                        if isTextExpanded8 == true {
                                                            isTextExpanded8.toggle()
                                                        }
                                                        if isTextExpanded9 == true {
                                                            isTextExpanded9.toggle()
                                                        }
                                                        if isTextExpanded10 == false {
                                                            isTextExpanded10.toggle()
                                                        }
                                                        if isTextExpanded5 == false && isTextExpanded6 == false && isTextExpanded7 == false {
                                                            isTextExpanded10.toggle()
                                                        }
                                                    }
                                                }
                                            
                                        }
                                    }
                                }
                                
                            }
                            .padding(5)
                        }
                    }
                    if isTextExpanded4{
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                HStack{
                                    MyViewBuilder(title: Text("42"), content: Text("""
                                **Ранение и тампонада сердца**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded8)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded8.toggle()
                                                if isTextExpanded10 == false {
                                                    isTextExpanded10.toggle()
                                                }
                                                if isTextExpanded8 == false && isTextExpanded9 == false{
                                                    isTextExpanded10.toggle()
                                                }
                                                if isTextExpanded5 == true {
                                                    isTextExpanded5.toggle()
                                                }
                                                if isTextExpanded7 == true {
                                                    isTextExpanded7.toggle()
                                                }
                                                
                                                if isTextExpanded9 == true {
                                                    isTextExpanded9.toggle()
                                                }
                                                
                                            }
                                        }
                                    MyViewBuilder(title: Text("42"), content: Text("""
                                **Открытый пневмоторакс**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded9)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded9.toggle()
                                                if isTextExpanded10 == false {
                                                    isTextExpanded10.toggle()
                                                }
                                                if isTextExpanded8 == false && isTextExpanded9 == false{
                                                    isTextExpanded10.toggle()
                                                }
                                                if isTextExpanded6 == true {
                                                    isTextExpanded6.toggle()
                                                }
                                                if isTextExpanded5 == true {
                                                    isTextExpanded5.toggle()
                                                }
                                                if isTextExpanded8 == true {
                                                    isTextExpanded8.toggle()
                                                }
                                            }
                                        }
                                    
                                }
                            }
                            .padding(5)
                        }
                    }
                    if isTextExpanded5{
                        Image(systemName: "arrow.down")
                        
                                MyViewBuilder(title: Text("**Объективные данные**:"), content: Text("""
                                        - выраженная болезненность при пальпации;
                                        - **подкожная эмфизема**;
                                        - **крепитация отломков рёбер**.
                                        """)).buildGrayInAndHiddenBlock()
                           
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("42"), content: Text("""
                                Положение тела **полусидя**
                                """)).buildGrayText()
                    }
                    if isTextExpanded6{
                        Image(systemName: "arrow.down")
                        
                                MyViewBuilder(title: Text("**Объективные данные**:"), content: Text("""
                                    - одышка, **цианоз**,
                                    - тахикардия,
                                    - **отсутствие дыхательных шумов**,
                                    - **тимпанит на стороне поражения**.
                                    """)).buildGrayInAndHiddenBlock()
                            
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("42"), content: Text("""
                            Положение тела **полусидя**.
                            Дренирование (**пункция во 2 межреберье по среднеключичной линии**).
                            """)).buildGrayText()
                    }
                    if isTextExpanded7{
                        Image(systemName: "arrow.down")
                        
                                MyViewBuilder(title: Text("**Объективные данные**:"), content: Text("""
                                    - бледность, потливость,
                                    - тахикардия,
                                    - **артериальная гипотензия**.
                                    """)).buildGrayInAndHiddenBlock()
                            
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("42"), content: Text("""
                            Положение **лёжа или полусидя**
                            """)).buildGrayText()
                    }
                    if isTextExpanded8{
                        Image(systemName: "arrow.down")
                        
                                MyViewBuilder(title: Text("**Объективные данные**:"), content: Text("""
                                        - **рана в проекции сердца**
                                        """)).buildGrayInAndHiddenBlock()
                           
                        
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("42"), content: Text("""
                                **Инородные тела из раны не извлекать!**
                                
                                Положение **лёжа или полусидя**.
                                **Асептическая повязка**.
                                """)).buildGrayText()
                    }
                    if isTextExpanded9{
                        Image(systemName: "arrow.down")
                        
                                MyViewBuilder(title: Text("**Объективные данные**:"), content: Text("""
                                    - **рана в проекции лёгких**
                                    """)).buildGrayInAndHiddenBlock()
                           
                        
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("42"), content: Text("""
                            Положение **полусидя**.
                            **Окклюзионная повязка**.
                            """)).buildGrayText()
                    }
                    if isTextExpanded10{
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("42"), content: Text("""
                                Положение тела **на боку**, **установка воздуховода**, при необходимости – **интубация трахеи**, пульсоксиметрия.
                                Установка периферического **катетера наибольшего диаметра** (при необходимости 2-х и более).
                                """)).buildGrayText()
                        Image(systemName: "arrow.down")
                        
                                MyViewBuilder(title: Text("**Неотложная помощь**:"), content: Text("""
                                        1.**Инфузионная терапия** под контролем АД (**САД ≥ 90 мм.рт.ст.**).
                                        2.**Оксигенотерапия** (под контролем **SpО2 – не менее 90%**).
                                        3.Обезболивание анальгетиками в/в :
                                        - ненаркотическими (**1 мл 3% раствора кеторолака**, **1-2 мл 5% раствора трамадола**)
                                        - наркотическими (**1 мл 0,005% раствора фентанила**, **1 мл 2% раствора тримеперидина**)
                                        4.При **судорожном синдроме и возбуждении** – **диазепам 2-4 мл 0,5% раствора** в/в.
                                        5.**Преднизолон до 30 мг/кг** веса в/в.
                                        """)).buildGrayInAndHiddenBlock()
                            
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("42"), content: Text("""
                                **Доставка в стационар** по профилю основного заболевания
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
                    Text("Алгоритм 42")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Травмы груди»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg42"), title: "Алгоритм 42")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}

#Preview {
    Prikaz1030Alg42View()
}
