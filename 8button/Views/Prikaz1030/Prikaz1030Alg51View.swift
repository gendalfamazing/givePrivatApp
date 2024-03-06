//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg51View: View {
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
                    MyViewBuilder(title: Text("51"), content: Text("""
                            1. **Боли в животе у женщин фертильного возраста**.
                            2. **Сбор гинекологичекого анамнеза**.
                            3. **ЭКГ-диагностика** по показаниям.
                            4. Визуальный осмотр и **оценка объема кровопотери** при метроррагиях.
                            """)).buildGrayText()
                    
                    
                    
                    Image(systemName: "arrow.down")
                       
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack (spacing:1){
                            MyViewBuilder(title: Text("51"), content: Text("""
                            **Выраженная кровопотеря**:
                            """)).buildGrayInText()
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded71.toggle()
                                    }
                                }
                            if isTextExpanded71 {
                                MyViewBuilder(title: Text("51"), content: Text("""
                            - холодная, бледная, влажная кожа;
                            - **САД менее 90 мм.рт.ст.**,
                            - **ЧСС более 100** в 1 мин.,
                            - шоковый индекс **более 0,7**;
                            - **SpО2 менее 90%**
                            """)).buildGrayInHiddenText()
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded71.toggle()
                                        }
                                    }
                            }
                            Spacer(minLength: 5)
                            HStack {
                                
                                MyViewBuilder(title: Text("51"), content: Text("""
                            **Да**
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
                                            if isTextExpanded71 == true {
                                                isTextExpanded71.toggle()
                                            }
                                            if isTextExpanded1 == false && isTextExpanded2 == false {
                                                isTextExpanded71 = true
                                            }
                                        }
                                    }
                                MyViewBuilder(title: Text("51"), content: Text("""
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
                                            if isTextExpanded71 == true {
                                                isTextExpanded71.toggle()
                                            }
                                            if isTextExpanded1 == false && isTextExpanded2 == false {
                                                isTextExpanded71 = true
                                            }
                                        }
                                    }
                                
                            }.padding(5).padding(.top, -10)
                            
                        }
                    }
                    if isTextExpanded1 {
                        Image(systemName: "arrow.down")
                           
                        NavigationLink (destination: Prikaz1030Alg5View()) {
                            MyViewBuilder(title: Text("51"), content: Text("Алгоритм 5 «Гиповолемический шок».")).buildNavigationText()
                        }
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("51"), content: Text("""
                        **Доставка в стационар** (ОИТАР, минуя приемное отделение)
                        """)).buildGrayText()
                    }
                    if isTextExpanded2 {
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                VStack {
                                    
                                    MyViewBuilder(title: Text("51"), content: Text("""
                                **Предлежание плаценты, отслойка нормально расположенной плаценты**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded3)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded3.toggle()
                                                
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
                                    MyViewBuilder(title: Text("51"), content: Text("""
                                **Выкидыш в малом сроке**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded4)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded4.toggle()
                                                
                                                if isTextExpanded1 == true {
                                                    isTextExpanded1.toggle()
                                                }
                                                if isTextExpanded3 == true {
                                                    isTextExpanded3.toggle()
                                                }
                                                if isTextExpanded5 == true {
                                                    isTextExpanded5.toggle()
                                                }
                                            }
                                        }
                                    MyViewBuilder(title: Text("51"), content: Text("""
                                **Гестозы, преэклампсия, эклампсия**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded5)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded5.toggle()
                                                
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
                    }
                    if isTextExpanded3 {
                        Image(systemName: "arrow.down")
                         
                                MyViewBuilder(title: Text("**Диагностика**:"), content: Text("""
                                - **данные УЗИ**,
                                - **снижение АД, увеличение ЧСС**,
                                - пульсоксиметрия,
                                - **наличие кровянистых выделений**
                                """)).buildGrayInAndHiddenBlock()
                            
                        Image(systemName: "arrow.down")
                        
                                MyViewBuilder(title: Text("**Тактика**:"), content: Text("""
                                - **до начала схваток доставка на носилках в стационар**,
                                - установка **периферического катетера**,
                                - **инфузионная терапия** (**400 мл** 0,9 % раствора **натрия хлорида**),
                                - кислородотерапия при **SpO2 менее 90%**
                                """)).buildGrayInAndHiddenBlock()
                            
                    }
                    if isTextExpanded4 {
                        Image(systemName: "arrow.down")
                        
                                MyViewBuilder(title: Text("**Диагностика**:"), content: Text("""
                                - **в анамнезе беременность**,
                                - **кровотечение**
                                """)).buildGrayInAndHiddenBlock()
                            
                        Image(systemName: "arrow.down")
                        
                                MyViewBuilder(title: Text("**Тактика**:"), content: Text("""
                                - **спазмолитики (дротаверин 2%- 2 мл в/в)**,
                                - **доставка в стационар** по профилю основного заболевания
                                """)).buildGrayInAndHiddenBlock()
                            
                    }
                    if isTextExpanded5 {
                        Image(systemName: "arrow.down")
                         
                                MyViewBuilder(title: Text("**Диагностика**:"), content: Text("""
                                - **повышение АД**,
                                - **отеки**, протеинурия,
                                - боли в эпигастрии,
                                - **судороги**
                                """)).buildGrayInAndHiddenBlock()
                          
                        Image(systemName: "arrow.down")
                        
                                MyViewBuilder(title: Text("**Тактика**:"), content: Text("""
                                - установка **периферического катетера**,
                                - **инфузионная терапия** (**400 мл** 0,9 % раствора **натрия хлорида**),
                                - кислородотерапия при **SpO2 менее 90%**,
                                - **20-40 мг (0,5% - 4-8 мл) диазепама** в/в,
                                - **20 мл 25% раствора магния сульфата** в/в,
                                - **доставка в стационар** по профилю основного заболевания **на носилках**.
                                """)).buildGrayInAndHiddenBlock()
                           
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
                    Text("Алгоритм 51")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Неотложные состояния в акушерстве и гинекологии»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg51"), title: "Алгоритм 51")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}

#Preview {
    Prikaz1030Alg51View()
}
