//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg45View: View {
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
                    MyViewBuilder(title: Text("45"), content: Text("""
                    **Ожог** – разновидность травмы, полученной в результате воздействия **высокой температуры**, **химических веществ**, **электрического тока** или **ионизирующего излучения**.
                    Различают **три степени ожога** при местных повреждениях.
                    """)).buildGrayText()
                    ZStack{
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack{
                            MyViewBuilder(title: Text("45"), content: Text("""
                            **Степень и этиология**:
                            """)).buildGrayInText()
                            VStack{
                                HStack{
                                    
                                    MyViewBuilder(title: Text("45"), content: Text("""
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
                                                if isTextExpanded6 == false {
                                                    isTextExpanded6.toggle()
                                                }
                                                if isTextExpanded7 == false {
                                                    isTextExpanded7.toggle()
                                                }
                                                if isTextExpanded1 == false && isTextExpanded2 == false && isTextExpanded3 == false && isTextExpanded4 == false && isTextExpanded5 == false {
                                                    isTextExpanded6.toggle()
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
                                                if isTextExpanded11 == true {
                                                    isTextExpanded11.toggle()
                                                }
                                                if isTextExpanded12 == true {
                                                    isTextExpanded12.toggle()
                                                }
                                                if isTextExpanded13 == true {
                                                    isTextExpanded13.toggle()
                                                }
                                                if isTextExpanded14 == true {
                                                    isTextExpanded14.toggle()
                                                }
                                                if isTextExpanded15 == true {
                                                    isTextExpanded15.toggle()
                                                }
                                                if isTextExpanded16 == true {
                                                    isTextExpanded16.toggle()
                                                }
                                                
                                                
                                            }
                                        }
                                    MyViewBuilder(title: Text("45"), content: Text("""
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
                                                if isTextExpanded6 == false {
                                                    isTextExpanded6.toggle()
                                                }
                                                
                                                if isTextExpanded7 == true {
                                                    isTextExpanded7.toggle()
                                                }
                                                if isTextExpanded8 == false {
                                                    isTextExpanded8.toggle()
                                                }
                                                if isTextExpanded9 == false {
                                                    isTextExpanded9.toggle()
                                                }
                                                if isTextExpanded10 == false {
                                                    isTextExpanded10.toggle()
                                                }
                                                if isTextExpanded11 == true {
                                                    isTextExpanded11.toggle()
                                                }
                                                if isTextExpanded12 == false {
                                                    isTextExpanded12.toggle()
                                                }
                                                if isTextExpanded13 == true {
                                                    isTextExpanded13.toggle()
                                                }
                                                if isTextExpanded14 == false {
                                                    isTextExpanded14.toggle()
                                                }
                                                if isTextExpanded15 == true {
                                                    isTextExpanded15.toggle()
                                                }
                                                if isTextExpanded16 == false {
                                                    isTextExpanded16.toggle()
                                                }
                                                if isTextExpanded1 == false && isTextExpanded2 == false && isTextExpanded3 == false && isTextExpanded4 == false && isTextExpanded5 == false {
                                                    isTextExpanded6.toggle()
                                                    isTextExpanded8.toggle()
                                                    isTextExpanded9.toggle()
                                                    isTextExpanded10.toggle()
                                                    isTextExpanded12.toggle()
                                                    isTextExpanded14.toggle()
                                                    isTextExpanded16.toggle()
                                                }
                                            }
                                        }
                                    MyViewBuilder(title: Text("45"), content: Text("""
                                    **III**
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded3)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded3.toggle()
                                                
                                                if isTextExpanded1 == true {
                                                    isTextExpanded1.toggle()
                                                }
                                                if isTextExpanded2 == true {
                                                    isTextExpanded2.toggle()
                                                }
                                                if isTextExpanded4 == true {
                                                    isTextExpanded4.toggle()
                                                }
                                                if isTextExpanded5 == true {
                                                    isTextExpanded5.toggle()
                                                }
                                                if isTextExpanded6 == false {
                                                    isTextExpanded6.toggle()
                                                }
                                                if isTextExpanded7 == true {
                                                    isTextExpanded7.toggle()
                                                }
                                                if isTextExpanded8 == false {
                                                    isTextExpanded8.toggle()
                                                }
                                                if isTextExpanded9 == false {
                                                    isTextExpanded9.toggle()
                                                }
                                                if isTextExpanded10 == false {
                                                    isTextExpanded10.toggle()
                                                }
                                                if isTextExpanded11 == true {
                                                    isTextExpanded11.toggle()
                                                }
                                                if isTextExpanded12 == false {
                                                    isTextExpanded12.toggle()
                                                }
                                                if isTextExpanded13 == true {
                                                    isTextExpanded13.toggle()
                                                }
                                                if isTextExpanded14 == true {
                                                    isTextExpanded14.toggle()
                                                }
                                                if isTextExpanded15 == false {
                                                    isTextExpanded15.toggle()
                                                }
                                                if isTextExpanded16 == false {
                                                    isTextExpanded16.toggle()
                                                }
                                                if isTextExpanded1 == false && isTextExpanded2 == false && isTextExpanded3 == false && isTextExpanded4 == false && isTextExpanded5 == false {
                                                    isTextExpanded6.toggle()
                                                    isTextExpanded8.toggle()
                                                    isTextExpanded9.toggle()
                                                    isTextExpanded10.toggle()
                                                    isTextExpanded12.toggle()
                                                    isTextExpanded15.toggle()
                                                    isTextExpanded16.toggle()
                                                }
                                            }
                                        }
                                    
                                    
                                }
                                HStack{
                                    MyViewBuilder(title: Text("45"), content: Text("""
                                    **Ингаляционный ожог**
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded4)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded4.toggle()
                                                
                                                if isTextExpanded1 == true {
                                                    isTextExpanded1.toggle()
                                                }
                                                if isTextExpanded2 == true {
                                                    isTextExpanded2.toggle()
                                                }
                                                if isTextExpanded3 == true {
                                                    isTextExpanded3.toggle()
                                                }
                                                if isTextExpanded5 == true {
                                                    isTextExpanded5.toggle()
                                                }
                                                if isTextExpanded6 == false {
                                                    isTextExpanded6.toggle()
                                                }
                                                if isTextExpanded7 == true {
                                                    isTextExpanded7.toggle()
                                                }
                                                if isTextExpanded8 == false {
                                                    isTextExpanded8.toggle()
                                                }
                                                if isTextExpanded9 == false {
                                                    isTextExpanded9.toggle()
                                                }
                                                if isTextExpanded10 == false {
                                                    isTextExpanded10.toggle()
                                                }
                                                if isTextExpanded11 == false {
                                                    isTextExpanded11.toggle()
                                                }
                                                if isTextExpanded12 == false {
                                                    isTextExpanded12.toggle()
                                                }
                                                if isTextExpanded13 == false {
                                                    isTextExpanded13.toggle()
                                                }
                                                if isTextExpanded14 == true {
                                                    isTextExpanded14.toggle()
                                                }
                                                if isTextExpanded15 == true {
                                                    isTextExpanded15.toggle()
                                                }
                                                if isTextExpanded16 == false {
                                                    isTextExpanded16.toggle()
                                                }
                                                if isTextExpanded1 == false && isTextExpanded2 == false && isTextExpanded3 == false && isTextExpanded4 == false && isTextExpanded5 == false {
                                                    isTextExpanded6.toggle()
                                                    isTextExpanded8.toggle()
                                                    isTextExpanded9.toggle()
                                                    isTextExpanded10.toggle()
                                                    isTextExpanded11.toggle()
                                                    isTextExpanded12.toggle()
                                                    isTextExpanded13.toggle()
                                                    isTextExpanded16.toggle()
                                                }
                                                
                                            }
                                        }
                                    MyViewBuilder(title: Text("45"), content: Text("""
                                **Электроожог**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded5)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded5.toggle()
                                                
                                                if isTextExpanded1 == true {
                                                    isTextExpanded1.toggle()
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
                                                if isTextExpanded6 == false {
                                                    isTextExpanded6.toggle()
                                                }
                                                if isTextExpanded7 == true {
                                                    isTextExpanded7.toggle()
                                                }
                                                if isTextExpanded8 == false {
                                                    isTextExpanded8.toggle()
                                                }
                                                if isTextExpanded9 == false {
                                                    isTextExpanded9.toggle()
                                                }
                                                if isTextExpanded10 == false {
                                                    isTextExpanded10.toggle()
                                                }
                                                if isTextExpanded11 == true {
                                                    isTextExpanded11.toggle()
                                                }
                                                if isTextExpanded12 == false {
                                                    isTextExpanded12.toggle()
                                                }
                                                if isTextExpanded13 == true {
                                                    isTextExpanded13.toggle()
                                                }
                                                if isTextExpanded14 == true {
                                                    isTextExpanded14.toggle()
                                                }
                                                if isTextExpanded15 == false {
                                                    isTextExpanded15.toggle()
                                                }
                                                if isTextExpanded16 == false {
                                                    isTextExpanded16.toggle()
                                                }
                                                if isTextExpanded1 == false && isTextExpanded2 == false && isTextExpanded3 == false && isTextExpanded4 == false && isTextExpanded5 == false {
                                                    isTextExpanded6.toggle()
                                                    isTextExpanded8.toggle()
                                                    isTextExpanded9.toggle()
                                                    isTextExpanded10.toggle()
                                                    isTextExpanded12.toggle()
                                                    isTextExpanded15.toggle()
                                                    isTextExpanded16.toggle()
                                                }
                                            }
                                        }
                                }
                            } // stepeti
                            
                            
                            
                        }
                        .padding(5.0)
                    }
                    if isTextExpanded1{
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("45"), content: Text("""
                                **Клинические проявления**:
                                """)).buildGrayInText()
                                MyViewBuilder(title: Text("45"), content: Text("""
                                - покраснение, отёк, боль
                                """)).buildGrayInHiddenText()
                                
                            }
                            .padding(5)
                        }
                    }
                    if isTextExpanded2{
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("45"), content: Text("""
                                **Клинические проявления**:
                                """)).buildGrayInText()
                                MyViewBuilder(title: Text("45"), content: Text("""
                                **IIa** - покраснение, образование **пузырьков**, боль (повреждение **поверхностных слоёв кожи**)
                                **IIб** - образование **пузырей**, боль, кожа анемична (повреждение **глубоких слоёв кожи**)
                                """)).buildGrayInHiddenText()
                                
                            }
                            .padding(5)
                        }
                    }
                    if isTextExpanded3{
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("45"), content: Text("""
                                **Клинические проявления**:
                                """)).buildGrayInText()
                                MyViewBuilder(title: Text("45"), content: Text("""
                                - **некроз**, серая, белая или чёрная кожа, **боль отсутствует**
                                """)).buildGrayInHiddenText()
                                
                            }
                            .padding(5)
                        }
                    }
                    
                    if isTextExpanded6{
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("45"), content: Text("""
                                **Проводимые мероприятия**:
                                """)).buildGrayInText()
                                MyViewBuilder(title: Text("45"), content: Text("""
                                - **прекращение воздействия повреждающих агентов**
                                - быстрое и продолжительное (до исчезновения боли) **охлаждение поражённых тканей проточной холодной водой 12-18°С** (помнить об опасности переохлаждения) в течение **10-15 мин**.
                                - **удаление** всех не соприкасающихся с участком ожога частей одежды
                                - **стерильная сухая повязка** (накладка) на открытые раны
                                """)).buildGrayInHiddenText()
                                
                            }
                            .padding(5)
                        }
                    }
                    if isTextExpanded7{
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("45"), content: Text("""
                        Обезболивание: **кеторолак 3% - 1 мл в/м**
                        """)).buildGrayText()
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("45"), content: Text("""
                        **Амбулаторное лечение**
                        """)).buildGrayText()
                    }
                    if isTextExpanded8{
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("45"), content: Text("""
                                **Положение**:
                                """)).buildGrayInText()
                                MyViewBuilder(title: Text("45"), content: Text("""
                                - на спине;
                                - при **потере сознания** – стабильное положение **на боку**;
                                - при **ингаляционной травме** – **с возвышением головным концом**;
                                - во всех остальных случаях – **с приподнятым ножным концом**.
                                """)).buildGrayInHiddenText()
                                
                            }
                            .padding(5)
                        }
                    }
                    if isTextExpanded9{
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("45"), content: Text("""
                                **Шок**:
                                """)).buildGrayInText()
                                MyViewBuilder(title: Text("45"), content: Text("""
                                (при площади ожога **около 15 %** возникает угроза шока)
                                """)).buildGrayInHiddenText()
                                
                            }
                            .padding(5)
                        }
                    }
                    if isTextExpanded10{
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("45"), content: Text("""
                                **Неотложная помощь**:
                                """)).buildGrayInText()
                                MyViewBuilder(title: Text("45"), content: Text("""
                                - **обеспечение жизненно важных функций организма**
                                - **санация верхних дыхательных путей**
                                - **оксигенотерапия** – **4-6 литров** О2/мин – 100 % кислородом
                                - при необходимости своевременная **интубация и ИВЛ**
                                - постоянный контроль **ЧСС и АД**
                                """)).buildGrayInHiddenText()
                                
                            }
                            .padding(5)
                        }
                    }
                    if isTextExpanded11{
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("45"), content: Text("""
                        **При невозможности интубации** трахеи (при ингаляционном поражении дыхательных путей) – **коникотомия**
                        """)).buildGrayText()
                    }
                    if isTextExpanded12{
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("45"), content: Text("""
                        - венозный доступ – **0,9 % раствор натрия хлорида** со скоростью **2 л/час**
                        - седация: **диазепам 5-10 мг** (0,5% - 1-2 мл) в/в.
                        - обезболивание: **кеторолак 3% - 1 мл в/м, тримеперидин 2 % - 1 мл в/в, морфин 1 % - 1 мл в/в**.
                        """)).buildGrayText()
                    }
                    if isTextExpanded13{
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("45"), content: Text("""
                        - **аминофиллин 2,4 % - 10 мл** в/в,
                        - **дексаметазон 4 – 8 мг** в/в,
                        - **преднизолон 60 – 120 мг** в/в.
                        """)).buildGrayText()
                    }
                    if isTextExpanded14{
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("45"), content: Text("""
                                **Противошоковая терапия**:
                                """)).buildGrayInText()
                                NavigationLink (destination: Prikaz1030Alg5View()) {
                                    MyViewBuilder(title: Text("45"), content: Text("Алгоритм 5 «Гиповолемический шок».")).buildNavigationText()
                                }
                                
                            }
                            .padding(5)
                        }
                    }
                    if isTextExpanded15{
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("45"), content: Text("""
                        **Транспортная иммобилизация** (при вывихах, переломах, разрывах мышц)
                        """)).buildGrayText()
                    }
                    if isTextExpanded16{
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("45"), content: Text("""
                                **Доставка в стационар по профилю основного заболевания**:
                                """)).buildGrayInText()
                                MyViewBuilder(title: Text("45"), content: Text("""
                                - больные с ожогами **II-III степени** поражения **более 10%** поверхности тела,
                                **дети или пожилые пациенты с поражением 5-10% поверхности тела**;
                                - ожоги лица, кистей, стоп и гениталий;
                                - ингаляционный ожог;
                                - ожоги электрическим током;
                                - химические ожоги;
                                - больные с дополнительными травмами;
                                - пациенты без сознания.
                                """)).buildGrayInHiddenText()
                                
                            }
                            .padding(5)
                        }
                    }
                    
                    
                    Spacer(minLength: 30)
                    HStack {
                        ForEach(0..<13) { _ in
                            Image(systemName: "minus")
                        }
                    }
                    
                    Image(systemName: "minus")
                    ZStack{
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack{
                            MyViewBuilder(title: Text("45"), content: Text("""
                            **Примечание.**.
                            """)).buildGrayInText()
                            MyViewBuilder(title: Text("45"), content: Text("""
                                    1. **Не производить реакцию нейтрализации химического вещества на поверхности кожи**.
                                    2. В острой фазе **противопоказаны**: **коллоидные растворы, диуретики, кортизон, катехоламины, антибиотики**.
                                    """)).buildGrayInHiddenText()
                        }
                        .padding(5.0)
                    }
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
                    Text("Алгоритм 45")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Ожоги»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg45"), title: "Алгоритм 45")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}

#Preview {
    Prikaz1030Alg45View()
}
