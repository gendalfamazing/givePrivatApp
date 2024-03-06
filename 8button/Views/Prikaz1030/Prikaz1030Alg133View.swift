//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg33View: View {
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
        NavigationStack {
            ScrollView {
                Spacer()
                VStack {
                    
                            MyViewBuilder(title: Text("**Клинические симптомы**:"), content: Text("""
                            - распирающая головная боль;
                            - многократная рвота;
                            - лихорадка.
                            """)).buildGrayInAndHiddenBlock()
                       
                    HStack {
                        Spacer()
                        Image(systemName: "arrow.down")
                           
                        Spacer()
                        Spacer()
                        Image(systemName: "arrow.down")
                           
                        Spacer()
                    }
                    HStack{
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack (spacing:1){
                                MyViewBuilder(title: Text("33"), content: Text("""
                                **Менингиальные симптомы**:
                                """)).buildGrayInText()
                                Spacer()
                                HStack {
                                    MyViewBuilder(title: Text("33"), content: Text("""
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
                                    MyViewBuilder(title: Text("33"), content: Text("""
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
                                }
                            }
                            .padding(5)
                        }
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack (spacing:1){
                                MyViewBuilder(title: Text("33"), content: Text("""
                                **Сыпь на коже и слизистых
                                от розеолезной до геморрагической**:
                                """)).buildGrayInText()
                                HStack {
                                    MyViewBuilder(title: Text("33"), content: Text("""
                                    **Есть**
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded8)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded8.toggle()
                                                
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
                                                if isTextExpanded1 == true {
                                                    isTextExpanded1.toggle()
                                                }
                                                if isTextExpanded9 == true {
                                                    isTextExpanded9.toggle()
                                                }
                                                if isTextExpanded10 == true {
                                                    isTextExpanded10.toggle()
                                                }
                                                
                                            }
                                        }
                                    MyViewBuilder(title: Text("33"), content: Text("""
                                    **Нет**
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded7)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded7.toggle()
                                                
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
                                                if isTextExpanded1 == true {
                                                    isTextExpanded1.toggle()
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
                                }
                            }
                            .padding(5)
                        }
                    }
                    
                    if isTextExpanded1 {
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("33"), content: Text("""
                                **Очаговая неврологическая симптоматика**:
                                """)).buildGrayInText()
                                HStack {
                                    MyViewBuilder(title: Text("33"), content: Text("""
                                    **Есть**
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded4)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded4.toggle()
                                                
                                                if isTextExpanded2 == true {
                                                    isTextExpanded2.toggle()
                                                }
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
                                    MyViewBuilder(title: Text("33"), content: Text("""
                                    **Нет**
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded3)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded3.toggle()
                                                
                                                
                                                if isTextExpanded2 == true {
                                                    isTextExpanded2.toggle()
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
                    }
                    if isTextExpanded2 {
                        Image(systemName: "arrow.down")
                           
                        
                                MyViewBuilder(title: Text("**Симптоматическая терапия**:"), content: Text("""
                                - при гипертермии **50% раствор метамизола 2 мл** или **кеторолак 10-30 мг** в/в;
                                - **диазепам 0,5% - 2 мл** при возбуждении и судорогах в/в.
                                """)).buildGrayInAndHiddenBlock()
                          
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("33"), content: Text("""
                        **Стационар по профилю**
                        """)).buildGrayText()
                    }
                    if isTextExpanded3 {
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("33"), content: Text("""
                                **Менингит**
                                """)).buildGrayInText()
                            }
                            .padding(5)
                        }
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("33"), content: Text("""
                                **Осложнения**:
                                """)).buildGrayInText()
                                HStack {
                                    MyViewBuilder(title: Text("33"), content: Text("""
                                    **Есть**
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded5)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded5.toggle()
                                                
                                                if isTextExpanded2 == true {
                                                    isTextExpanded2.toggle()
                                                }
                                                
                                                if isTextExpanded4 == true {
                                                    isTextExpanded4.toggle()
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
                                    MyViewBuilder(title: Text("33"), content: Text("""
                                    **Нет**
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded6)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded6.toggle()
                                                
                                                
                                                if isTextExpanded2 == true {
                                                    isTextExpanded2.toggle()
                                                }
                                                if isTextExpanded4 == true {
                                                    isTextExpanded4.toggle()
                                                }
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
                                                if isTextExpanded10 == true {
                                                    isTextExpanded10.toggle()
                                                }
                                                
                                            }
                                        }
                                }.padding(5).padding(.top, -10)
                            }
                        }
                    }
                    if isTextExpanded4 {
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("33"), content: Text("""
                                **Менингоэнцефалит**
                                """)).buildGrayInText()
                            }
                            .padding(5)
                        }
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("33"), content: Text("""
                                **Осложнения**:
                                """)).buildGrayInText()
                                HStack {
                                    MyViewBuilder(title: Text("33"), content: Text("""
                                    **Есть**
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded5)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded5.toggle()
                                                
                                                if isTextExpanded2 == true {
                                                    isTextExpanded2.toggle()
                                                }
                                                
                                                if isTextExpanded3 == true {
                                                    isTextExpanded3.toggle()
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
                                    MyViewBuilder(title: Text("33"), content: Text("""
                                    **Нет**
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded6)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded6.toggle()
                                                
                                                
                                                if isTextExpanded2 == true {
                                                    isTextExpanded2.toggle()
                                                }
                                                if isTextExpanded3 == true {
                                                    isTextExpanded3.toggle()
                                                }
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
                                                if isTextExpanded10 == true {
                                                    isTextExpanded10.toggle()
                                                }
                                                
                                            }
                                        }
                                }.padding(5).padding(.top, -10)
                            }
                        }
                    }
                    if isTextExpanded5 {
                        Image(systemName: "arrow.down")
                           
                        
                                MyViewBuilder(title: Text("**Отек головного мозга**:"), content: Text("""
                                - распирающая головная боль;
                                - угнетение сознания;
                                - брадикардия;
                                - судороги.
                                """)).buildGrayInAndHiddenBlock()
                           
                        Image(systemName: "arrow.down")
                        
                                MyViewBuilder(title: Text("**Неотложная помощь**:"), content: Text("""
                        1. Обеспечить **внутривенный доступ** через периферический **катетер наибольшего диаметра**.
                        2. **Антибактериальная терапия** (цефтриаксон или хлорамфеникол).
                        3. **Дексаметазон 8-16 мг** (преднизолон 60-120 мг) в/в струйно.
                        4. **Фуросемид 1% раствор до 4 мл** в/в.
                        5. Симптоматическая терапия.
                        6. **Оксигенотерапия**.
                        """)).buildGrayInAndHiddenBlock()
                           
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("33"), content: Text("""
                        **Доставка в стационар** по профилю основного заболевания (ОИТАР, минуя приемное отделение)
                        """)).buildGrayText()
                    }
                    if isTextExpanded6 {
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("33"), content: Text("""
                        **Симптоматическая терапия**
                        """)).buildGrayText()
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("33"), content: Text("""
                        **Доставка в стационар** по профилю основного заболевания
                        """)).buildGrayText()
                    }
                    if isTextExpanded7 {
                        Image(systemName: "arrow.down")
                           
                        
                                MyViewBuilder(title: Text("**Симптоматическая терапия**:"), content: Text("""
                                - при гипертермии **50% раствор метамизола 2 мл** или **кеторолак 10-30 мг** в/в;
                                - **диазепам 0,5% - 2 мл** при возбуждении и судорогах в/в.
                                """)).buildGrayInAndHiddenBlock()
                           
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("33"), content: Text("""
                        **Стационар по профилю**
                        """)).buildGrayText()
                    }
                    if isTextExpanded8 {
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("33"), content: Text("""
                                **Менингококкцемия**
                                """)).buildGrayInText()
                            }
                            .padding(5)
                        }
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("33"), content: Text("""
                                **Осложнения**:
                                """)).buildGrayInText()
                                HStack {
                                    MyViewBuilder(title: Text("33"), content: Text("""
                                    **Есть**
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded10)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded10.toggle()
                                                
                                                if isTextExpanded2 == true {
                                                    isTextExpanded2.toggle()
                                                }
                                                
                                                if isTextExpanded3 == true {
                                                    isTextExpanded3.toggle()
                                                }
                                                if isTextExpanded6 == true {
                                                    isTextExpanded6.toggle()
                                                }
                                                if isTextExpanded7 == true {
                                                    isTextExpanded7.toggle()
                                                }
                                                if isTextExpanded9 == true {
                                                    isTextExpanded9.toggle()
                                                }
                                                
                                            }
                                        }
                                    MyViewBuilder(title: Text("33"), content: Text("""
                                    **Нет**
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded9)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded9.toggle()
                                                
                                                
                                                if isTextExpanded2 == true {
                                                    isTextExpanded2.toggle()
                                                }
                                                if isTextExpanded3 == true {
                                                    isTextExpanded3.toggle()
                                                }
                                                if isTextExpanded5 == true {
                                                    isTextExpanded5.toggle()
                                                }
                                                if isTextExpanded7 == true {
                                                    isTextExpanded7.toggle()
                                                }
                                                if isTextExpanded10 == true {
                                                    isTextExpanded10.toggle()
                                                }
                                                
                                            }
                                        }
                                }.padding(5).padding(.top, -10)
                            }
                        }
                    }
                    if isTextExpanded9 {
                        Image(systemName: "arrow.down")
                        
                                MyViewBuilder(title: Text("**Симптоматическая терапия**:"), content: Text("""
                                Антибактериальная терапия – **цефтриаксон 1,0 в/в**, **хлорамфеникол 25 мг/кг** веса в/м.
                                """)).buildGrayInAndHiddenBlock()
                            
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("33"), content: Text("""
                        **Доставка в стационар** по профилю основного заболевания
                        """)).buildGrayText()
                    }
                    if isTextExpanded10 {
                        Image(systemName: "arrow.down")
                        
                                MyViewBuilder(title: Text("**Инфекционно-токсический шок**:"), content: Text("""
                                - холодная, бледная, влажная кожа;
                                - **САД менее 90 мм.рт.ст.**,
                                - **ЧСС более 100** в 1 мин;
                                - **SpО2 менее 90%**.
                                """)).buildGrayInAndHiddenBlock()
                            
                        Image(systemName: "arrow.down")
                         
                                MyViewBuilder(title: Text("**Неотложная помощь**:"), content: Text("""
                        1. Обеспечить **внутривенный доступ** через периферический **катетер наибольшего диаметра**.
                        2.В/в быстро струйно **инфузия кристаллоидных растворов до стабилизации АД и пульса** с последующим переходом на капельную инфузию.
                        **(при неопределяемом уровне АД в 2 вены и более)**.
                        3. **При отсутствии эффекта** – в/в капельно **допамин 200 мг в 200 мл 0,9% раствора натрия хлорида**.
                        4. Симтоматическая терапия.
                        5. **Оксигенотерапия**.
                        6. **Дексаметазон 8-16 мг** (преднизолон 60-120 мг) в/в струйно.
                        """)).buildGrayInAndHiddenBlock()
                           
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("33"), content: Text("""
                        **Доставка в стационар** по профилю основного заболевания (ОИТАР, минуя приемное отделение)
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
                    Text("Алгоритм 33")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Менингиальная инфекция»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg33"), title: "Алгоритм 33")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}

#Preview {
    Prikaz1030Alg33View()
}
