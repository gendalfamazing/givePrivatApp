//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg40View: View {
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
                            MyViewBuilder(title: Text("40"), content: Text("""
                            **Изучение механизма травмы. Обследование позвоночника**.
                            """)).buildGrayInText().padding(-5)
                            HStack {
                                MyViewBuilder(title: Text("40"), content: Text("""
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
                                MyViewBuilder(title: Text("40"), content: Text("""
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
                                
                            }
                            
                            if isTextExpanded1{
                                VStack (spacing:1) {
                                MyViewBuilder(title: Text("**Клиническая картина**:"), content: Text("""
                                        - частота дыхания более 40 или менее 8 в 1 мин;
                                        - **SpО2 менее 90%** при дыхании атмосферным воздухом.
                                        """)).buildGrayInAndHiddenBlockWithBlueButtons()
                                NavigationLink (destination: Prikaz1030Alg3View()) {
                                    MyViewBuilder(title: Text("40"), content: Text("Алгоритм 3 «Острая дыхательная недостаточность»")).buildNavigationText()
                                }
                            }
                                
                            }
                            if isTextExpanded2{
                                
                                VStack (spacing:1) {
                                MyViewBuilder(title: Text("**Клиническая картина**:"), content: Text("""
                                        - холодная, бледная, влажная кожа;
                                        - **САД менее 90 мм.рт.ст.**,
                                        - **ЧСС более 100** в 1 мин.,
                                        - шоковый индекс **более 0,7**,
                                        - **SpО2 менее 90%**.
                                        """)).buildGrayInAndHiddenBlockWithBlueButtons()
                                NavigationLink (destination: Prikaz1030Alg5View()) {
                                    MyViewBuilder(title: Text("40"), content: Text("Алгоритм 5 «Гиповолемический шок»")).buildNavigationText()
                                }
                            }
                            }
                        }
                        .padding(5)
                    }
                    Image(systemName: "arrow.down")
                       
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack {
                            MyViewBuilder(title: Text("40"), content: Text("""
                            **Переломы, вывихи**:
                            """)).buildGrayInText()
                            HStack {
                                MyViewBuilder(title: Text("40"), content: Text("""
                                **Грудной и поясничный отделы**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded3)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded3.toggle()
                                            
                                            if isTextExpanded4 == true {
                                                isTextExpanded4.toggle()
                                            }
                                            if isTextExpanded5 == false {
                                                isTextExpanded5.toggle()
                                            }
                                            if isTextExpanded3 == false && isTextExpanded4 == false{
                                                isTextExpanded5.toggle()
                                            }
                                            
                                        }
                                    }
                                MyViewBuilder(title: Text("40"), content: Text("""
                                **Шейный отдел**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded4)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded4.toggle()
                                            
                                            if isTextExpanded3 == true {
                                                isTextExpanded3.toggle()
                                            }
                                            if isTextExpanded5 == false {
                                                isTextExpanded5.toggle()
                                            }
                                            if isTextExpanded3 == false && isTextExpanded4 == false{
                                                isTextExpanded5.toggle()
                                            }
                                        }
                                    }
                                
                            }.padding(5).padding(.top, -10)
                        }
                    }
                    if isTextExpanded3{
                        Image(systemName: "arrow.down")
                        
                                MyViewBuilder(title: Text("**Клинические признаки**:"), content: Text("""
                                - **боль в спине** (не всегда), которая может сопровождаться отеком и кровоизлиянием;
                                - **деформация** (особенно при взрывных переломах);
                                - возможно **выпячивание остистого отростка** (видимое на глаз или на ощупь);
                                - **признаки поперечного паралича** (обездвиженность, потеря чувствительности, отсутствие защитных реакций даже при воздействии очень сильных болевых раздражителей, в некоторых случаях нарушение сознания, непроизвольное мочеиспускание, дефекация, снижение артериального давления);
                                - **при повреждении позвоночника**:
                                    - **ниже Th4** – чувствительность выше сосков сохранена;
                                    - **ниже Th10** – чувствительность выше пупка сохранена;
                                    - **выше L2** – невозможность движения в бедренном суставе;
                                    - **выше L5** – невозможность приподнять стопу.
                                """)).buildGrayInAndHiddenBlock()
                            
                    }
                    if isTextExpanded4{
                        Image(systemName: "arrow.down")
                        
                                MyViewBuilder(title: Text("**Клинические признаки**:"), content: Text("""
                                - **боль в шее или появление мышечных спазмов**;
                                - **признаки поперечного паралича** (обездвиженность, потеря чувствительности, отсутствие защитных реакций даже при воздействии очень сильных болевых раздражителей, в некоторых случаях нарушение сознания, непроизвольное мочеиспускание, дефекация, снижение артериального давления);
                                - **при повреждении позвоночника**:
                                    - **С3/С4** – отсутствует диафрагмальное дыхание;
                                    - **выше С5** – невозможность поднять плечи;
                                    - **выше С6** – невозможность движения в локтях;
                                    - **выше С8/С9** – невозможность движения в пальце.
                                """)).buildGrayInAndHiddenBlock()
                           
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("40"), content: Text("""
                **Иммобилизация шейного отдела позвоночника с помощью шейного воротника**
                """)).buildGrayText()
                    }
                    if isTextExpanded5{
                        Image(systemName: "arrow.down")
                           
                        
                                MyViewBuilder(title: Text("**Неотложная помощь**:"), content: Text("""
                                1.**Обезболивание (ненаркотические или наркотические анальгетики)**:
                                
                                – **метамизол натрия 50% раствор 2-4 мл** в/в в 0,9% растворе натрия хлорида или,
                                – **морфина гидрохлорид 1 мл 1%** раствора в/в в 0,9% растворе натрия хлорида или,
                                – **фентанил 1-2 мл 0,005%** раствора в/в в 0,9% растворе натрия хлорида.
                                
                                2.**Иммобилизация на щите в положении на спине** (каркасные носилки).
                                3.**Обеспечение венозного доступа**, **инфузионная терапия**.
                                4.**Пульсоксиметрия**, оксигенотерапия при **SpO2≤ 90%**.
                                5.**Преднизолон 60-120 мг** или **метилпреднизолон в дозе 30мг/кг** в/в.
                                """)).buildGrayInAndHiddenBlock()
                            
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("40"), content: Text("""
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
                    Text("Алгоритм 40")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Травма позвоночника»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg40"), title: "Алгоритм 40")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}

#Preview {
    Prikaz1030Alg40View()
}
