//
//  Prikaz1030Alg99View.swift
//  8button
//
//  Created by Artur Vladymcev on 3.12.23.
//

import SwiftUI

struct Prikaz1030Alg2View: View {
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
    
    @State private var isTextExpanded71 = false
    @State private var isTextExpanded72 = false
    @State private var isTextExpanded73 = false
    @State private var isTextExpanded74 = false
    @State private var isTextExpanded75 = false
    @State private var isTextExpanded76 = false
    @State private var isTextExpanded77 = false
    @State private var isTextExpanded78 = false
    
    var body: some View {
        NavigationStack {
        ScrollView {
            Spacer()
            VStack {
                ZStack {
                    MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                    VStack (spacing: 1){
                        MyViewBuilder(title: Text("dfdfdf"),content: Text("""
                                    **Проходимость дыхательных путей**:
                                    """)
                        ).buildGrayInText()
                        HStack {
                            MyViewBuilder(title: Text("Алгоритм 1"), content: Text("**Сохранена**")).buildGreen1Text(isTextExpanded: isTextExpanded3)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded3.toggle()
                                        
                                        if isTextExpanded71 == false {
                                            isTextExpanded71.toggle()
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
                                        if isTextExpanded13 == true {
                                            isTextExpanded13.toggle()
                                        }
                                        if isTextExpanded14 == true {
                                            isTextExpanded14.toggle()
                                        }
                                        if isTextExpanded15 == true {
                                            isTextExpanded15.toggle()
                                        }
                                        
                                    }
                                }
                            MyViewBuilder(title: Text("Алгоритм 1"), content: Text("**Отсутствует**")).buildGreen1Text(isTextExpanded: isTextExpanded2)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded2.toggle()
                                        if isTextExpanded3 == true {
                                            isTextExpanded3.toggle()
                                        }
                                        if isTextExpanded5 == true {
                                            isTextExpanded5.toggle()
                                        }
                                        if isTextExpanded6 == true {
                                            isTextExpanded6.toggle()
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
                                        if isTextExpanded13 == true {
                                            isTextExpanded13.toggle()
                                        }
                                        if isTextExpanded14 == true {
                                            isTextExpanded14.toggle()
                                        }
                                        if isTextExpanded15 == true {
                                            isTextExpanded15.toggle()
                                        }
                                    }
                                }
                            
                            
                        }
                    }
                    .padding(5)
                }
                if isTextExpanded2 {
                    Image(systemName: "arrow.down")
                        
                    MyViewBuilder(title: Text("""
                                              **Провести очистку дыхательных путей**:
                                              """),
                                  content: Text("""
                                                - **удаление инородных тел**, зубных протезов, **отсасывание** рвотных масс, крови, слизи и др.
                                                При подозрении на **травму головы и шеи** осуществить **шинирование шейной шиной** соответствующего размера. **Обязательно!**
                                                """)).buildGrayInAndHiddenBlock()
                    
                }
                
                if isTextExpanded3 {
                    Image(systemName: "arrow.down")
                        
                    
                    ZStack{
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack (spacing: 1){
                            
                            MyViewBuilder(title: Text("dfdfdf"),content: Text("""
                                        **Нарушения функции дыхания**:
                                        """)
                            ).buildGrayInText()
                                .onTapGesture {
                                    withAnimation (.snappy){
                                        isTextExpanded71.toggle()
                                    }
                                }
                            
                            if isTextExpanded71{
                                MyViewBuilder(title: Text("dfdfdf"),content: Text("""
                                        - выраженная гипоксия **(SpO2 менее 90%)**, **апноэ**, диспноэ с цианозом кожи и слизистых, после аспирации, **сознание по шкале Глазго менее 8 баллов**.
                                        **Исключить пневмоторакс!**
                                        """)
                                ).buildGrayInHiddenText()
                                    .onTapGesture {
                                        withAnimation (.snappy){
                                            isTextExpanded71.toggle()
                                        }
                                    }
                            }
                            
                            HStack {
                                MyViewBuilder(title: Text("Алгоритм 1"), content: Text("**Присутствуют**")).buildGreen1Text(isTextExpanded: isTextExpanded5)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded5.toggle()
                                            if isTextExpanded71 == true {
                                                isTextExpanded71.toggle()
                                            }
                                            if isTextExpanded6 == false  && isTextExpanded5 == false  {
                                                isTextExpanded71 = true
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
                                            if isTextExpanded11 == true {
                                                isTextExpanded11.toggle()
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
                                        }
                                    }
                                
                                MyViewBuilder(title: Text("Алгоритм 1"), content: Text("**Отсутствуют**")).buildGreen1Text(isTextExpanded: isTextExpanded6)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded6.toggle()
                                            if isTextExpanded72 == false {
                                                isTextExpanded72.toggle()
                                            }
                                            if isTextExpanded71 == true {
                                                isTextExpanded71.toggle()
                                            }
                                            if isTextExpanded6 == false  && isTextExpanded5 == false  {
                                                isTextExpanded71 = true
                                            }
                                            if isTextExpanded7 == false {
                                                isTextExpanded7.toggle()
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
                                            if isTextExpanded10 == true {
                                                isTextExpanded10.toggle()
                                            }
                                            if isTextExpanded11 == true {
                                                isTextExpanded11.toggle()
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
                                        }
                                    }
                            }
                        }
                        .padding(5)
                    }
                }
                if isTextExpanded5 {
                    Image(systemName: "arrow.down")
                        
                    
                    ZStack{
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack{
                            
                            MyViewBuilder(title: Text("dfdfdf"),content: Text("""
                                        **Линейная бригада СМП**:
                                        **установить воздуховод** (при возможности – **интубация трахеи**), **ингаляция** воздушно-кислородной смесью, **положение на боку** при транспортировке **(при отсутствии противопоказаний)**.
                                        
                                        **Специализированная бригада СМП**:
                                        указанное выше + **мониторирование SpO2, аппаратная ИВЛ**.
                                        """)
                            ).buildGrayInHiddenText()
                            NavigationLink(destination: Prikaz1030Alg26View()) {
                                MyViewBuilder(title: Text("26"), content: Text("Алгоритм 26 «Обструкция дыхательных путей инородным телом»")).buildNavigationText()
                            }
                        }
                        .padding(5)
                    }
                }
                
                if isTextExpanded6 {
                    Image(systemName: "arrow.down")
                        
                    
                    ZStack{
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack(spacing: 1){
                            
                            MyViewBuilder(title: Text("dfdfdf"),content: Text("""
                                        **Нарушения функции кровообращения**:
                                        """)
                            ).buildGrayInText()
                                .onTapGesture {
                                    withAnimation (.snappy){
                                        isTextExpanded72.toggle()
                                    }
                                }
                            if isTextExpanded72 {
                                MyViewBuilder(title: Text("dfdfdf"),content: Text("""
                                        - наличие пульса на периферических и центральных артериях
                                        """)
                                ).buildGrayInHiddenText()
                                    .onTapGesture {
                                        withAnimation (.snappy){
                                            isTextExpanded72.toggle()
                                        }
                                    }
                            }
                            
                            HStack {
                                MyViewBuilder(title: Text("Алгоритм 1"), content: Text("**Присутствуют**")).buildGreen1Text(isTextExpanded: isTextExpanded8)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded8.toggle()
                                            
                                            if isTextExpanded72 == true {
                                                isTextExpanded72.toggle()
                                            }
                                            if isTextExpanded8 == false  && isTextExpanded9 == false  {
                                                isTextExpanded72 = true
                                            }
                                            if isTextExpanded9 == true {
                                                isTextExpanded9.toggle()
                                            }
                                            if isTextExpanded11 == true {
                                                isTextExpanded11.toggle()
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
                                        }
                                    }
                                
                                
                                MyViewBuilder(title: Text("Алгоритм 1"), content: Text("**Отсутствуют**")).buildGreen1Text(isTextExpanded: isTextExpanded9)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded9.toggle()
                                            isTextExpanded10.toggle()
                                            if isTextExpanded73 == false {
                                                isTextExpanded73.toggle()
                                            }
                                            if isTextExpanded72 == true {
                                                isTextExpanded72.toggle()
                                            }
                                            if isTextExpanded8 == false  && isTextExpanded9 == false  {
                                                isTextExpanded72 = true
                                            }
                                            
                                            if isTextExpanded8 == true {
                                                isTextExpanded8.toggle()
                                            }
                                            if isTextExpanded11 == true {
                                                isTextExpanded11.toggle()
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
                                            
                                        }
                                    }
                            }
                        }
                        .padding(5.0)
                    }
                }
                if isTextExpanded8 {
                    Image(systemName: "arrow.down")
                        
                    
                    ZStack{
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack (spacing: 1){
                            MyViewBuilder(title: Text("dfdfdf"), content: Text("""
                                        **Уточнить наличие признаков клинической смерти** (реакция зрачков на свет, отсутствие сознания, самостоятельного дыхания).
                                        """)
                            ).buildGrayInHiddenText()
                            
                            NavigationLink(destination: Prikaz1030Alg4View()) {
                                MyViewBuilder(title: Text("4"), content: Text("Алгоритм 4 «Внезапная смерть, сердечно-легочная реанимация»")).buildNavigationText()
                            }
                        }
                        .padding(5.0)
                    }
                }
                
                if isTextExpanded9 {
                    Image(systemName: "arrow.down")
                        
                    
                    ZStack{
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack(spacing: 1){
                            MyViewBuilder(title: Text("dfdfdf"), content: Text("""
                                        **Признаки гиповолемического шока**:
                                        """)
                            ).buildGrayInText()
                                .onTapGesture {
                                    withAnimation (.snappy){
                                        isTextExpanded73.toggle()
                                    }
                                }
                            if isTextExpanded73{
                                MyViewBuilder(title: Text("dfdfdf"), content: Text("""
                                        1) холодная, бледная, влажная кожа;
                                        2) САД **менее 90 мм.рт.ст.**;
                                        3) ЧСС **более 100** в 1 мин;
                                        4) нарушение сознания **(менее 12 баллов)**.
                                        """)
                                ).buildGrayInHiddenText()
                                    .onTapGesture {
                                        withAnimation (.snappy){
                                            isTextExpanded73.toggle()
                                        }
                                    }
                            }
                            
                            HStack {
                                MyViewBuilder(title: Text("Алгоритм 1"), content: Text("**Присутствуют**")).buildGreen1Text(isTextExpanded: isTextExpanded11)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded11.toggle()
                                            if isTextExpanded73 == true{
                                                isTextExpanded73.toggle()
                                            }
                                            if isTextExpanded11 == false  && isTextExpanded13 == false  {
                                                isTextExpanded73 = true
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
                                        }
                                    }
                                
                                MyViewBuilder(title: Text("Алгоритм 1"), content: Text("**Отсутствуют**")).buildGreen1Text(isTextExpanded: isTextExpanded13)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded13.toggle()
                                            
                                            if isTextExpanded73 == true{
                                                isTextExpanded73.toggle()
                                            }
                                            if isTextExpanded11 == false  && isTextExpanded13 == false  {
                                                isTextExpanded73 = true
                                            }
                                            if isTextExpanded11 == true {
                                                isTextExpanded11.toggle()
                                            }
                                            if isTextExpanded14 == true {
                                                isTextExpanded14.toggle()
                                            }
                                            if isTextExpanded15 == true {
                                                isTextExpanded15.toggle()
                                            }
                                        }
                                    }
                            }
                            
                        }
                        .padding(5.0)
                    }
                }
                
                if isTextExpanded11 {
                    Image(systemName: "arrow.down")
                        
                    
                    NavigationLink(destination: Prikaz1030Alg5View()) {
                        MyViewBuilder(title: Text("26"), content: Text("Алгоритм 5 «Гиповолемический шок»")).buildNavigationText()
                    }
                }
                
                if isTextExpanded13 {
                    Image(systemName: "arrow.down")
                        
                    
                    ZStack{
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack(spacing: 1){
                            MyViewBuilder(title: Text("dfdfdf"), content: Text("""
                                    **Травмы различного генеза**:
                                    """)
                            ).buildGrayInText()
                            HStack {
                                MyViewBuilder(title: Text("Алгоритм 1"), content: Text("**Присутствуют**")).buildGreen1Text(isTextExpanded: isTextExpanded14)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded14.toggle()
                                            
                                            if isTextExpanded15 == true {
                                                isTextExpanded15.toggle()
                                            }
                                        }
                                    }
                                
                                MyViewBuilder(title: Text("Алгоритм 1"), content: Text("**Отсутствуют**")).buildGreen1Text(isTextExpanded: isTextExpanded15)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded15.toggle()
                                            if isTextExpanded14 == true {
                                                isTextExpanded14.toggle()
                                            }
                                        }
                                    }
                            }
                            
                        }
                        .padding(5.0)
                    }
                    if isTextExpanded14 {
                        Image(systemName: "arrow.down")
                            
                    
                        MyViewBuilder(title: Text("dfdfdf"), content: Text("""
                                                **Обезболивание**.
                                                **Шинирование и транспортировка** в соответствии с локализацией травмы.
                                                
                                                **При ДТП обязательна иммобилизация на жестких носилках или на рентгеннегативном щите!**
                                                """)
                        ).buildGrayText()
                    }
                    
                    if isTextExpanded15 {
                        Image(systemName: "arrow.down")
                            
                    
                                MyViewBuilder(title: Text("dfdfdf"), content: Text("""
                                                **Углубленное обследование пациента** (ЭКГ, измерение гликемии и другое по показаниям).
                                                
                                                Установление **предварительного диагноза**, **оказание медицинской помощи** по соответствующему алгоритму.
                                                """)
                                ).buildGrayText()
                              
                        Spacer()
                    }
                }
                Spacer()
                Spacer()
            }
            .padding(.horizontal, 10)
            .padding(.bottom, 65)
        }
        //            .padding(.horizontal, 200)
        .edgesIgnoringSafeArea(.bottom)
        .background(Color.back)
    }
        
        .navigationBarBackButtonHidden(false)
        .navigationBarTitle("",displayMode: .inline)
        .toolbar {
            ToolbarItem(placement: .principal) {
                VStack {
                    Text("Алгоритм 2")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("""
                    «Первичный осмотр пациента (ABCD)»
                    """)
                    .font(.caption2)
                    .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg2"), title: "Алгоритм 2")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
    
}



#Preview {
    Prikaz1030Alg2View()
}
