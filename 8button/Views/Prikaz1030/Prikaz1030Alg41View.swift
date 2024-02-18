//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg41View: View {
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
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack {
                            MyViewBuilder(title: Text("41"), content: Text("""
                            **Провести обследование**.
                            """)).buildGrayInText()
                        }
                        .padding(5)
                    }
                    Image(systemName: "arrow.down")
                       
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack {
                            MyViewBuilder(title: Text("41"), content: Text("""
                            **Клинические признаки гиповолемического шока**:
                            """)).buildGrayInText()
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded71.toggle()
                                    }
                                }
                            if isTextExpanded71 {
                                MyViewBuilder(title: Text("41"), content: Text("""
                            - холодная, бледная, влажная кожа;
                            - САД менее 90 мм рт. ст.,
                            - ЧСС более 100 в 1 мин,
                            - шоковый индекс более 0,7;
                            - SpО2 менее 90%.
                            """)).buildGrayInHiddenText()
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded71.toggle()
                                        }
                                    }
                            }
                            HStack {
                                MyViewBuilder(title: Text("41"), content: Text("""
                                **Есть**
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
                                MyViewBuilder(title: Text("41"), content: Text("""
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
                    if isTextExpanded1{
                        Image(systemName: "arrow.down")
                           
                        NavigationLink (destination: Prikaz1030Alg5View()) {
                            MyViewBuilder(title: Text("41"), content: Text("Алгоритм 5 «Гиповолемический шок»")).buildNavigationText()
                        }
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                
                                HStack {
                                    MyViewBuilder(title: Text("41"), content: Text("""
                                    **Наружное кровотечение**
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded3)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded3.toggle()
                                                if isTextExpanded71 == true {
                                                    isTextExpanded71.toggle()
                                                }
                                                if isTextExpanded1 == false && isTextExpanded2 == false {
                                                    isTextExpanded71.toggle()
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
                                    MyViewBuilder(title: Text("41"), content: Text("""
                                    **Выраженный болевой синдром или локализация травмы в крупных трубчатых костях**
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded4)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded4.toggle()
                                                if isTextExpanded71 == true {
                                                    isTextExpanded71.toggle()
                                                }
                                                if isTextExpanded1 == false && isTextExpanded2 == false {
                                                    isTextExpanded71.toggle()
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
                                    
                                }
                            }
                            .padding(5)
                        }
                    }
                    if isTextExpanded2{
                        
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                
                                HStack {
                                    MyViewBuilder(title: Text("41"), content: Text("""
                                    
                                    **Наружное кровотечение**
                                    
                                    
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded3)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded3.toggle()
                                                if isTextExpanded71 == true {
                                                    isTextExpanded71.toggle()
                                                }
                                                if isTextExpanded1 == false && isTextExpanded2 == false {
                                                    isTextExpanded71.toggle()
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
                                    MyViewBuilder(title: Text("41"), content: Text("""
                                    **Выраженный болевой синдром или локализация травмы в крупных трубчатых костях**
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded4)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded4.toggle()
                                                if isTextExpanded71 == true {
                                                    isTextExpanded71.toggle()
                                                }
                                                if isTextExpanded1 == false && isTextExpanded2 == false {
                                                    isTextExpanded71.toggle()
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
                                    
                                }
                            }
                            .padding(5)
                        }
                    }
                    if isTextExpanded3{
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("41"), content: Text("""
                        **Тампонада раны, тугая повязка, возвышенное положение конечности**.
                        **Установка периферического катетера наибольшего диаметра** (при необходимости 2-х и более).
                        """)).buildGrayText()
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("41"), content: Text("""
                                **Артериальное кровотечение**:
                                """)).buildGrayInText()
                                HStack {
                                    MyViewBuilder(title: Text("41"), content: Text("""
                                    **Да**
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded5)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded5.toggle()
                                                if isTextExpanded10 == false {
                                                    isTextExpanded10.toggle()
                                                }
                                                if isTextExpanded5 == false && isTextExpanded6 == false{
                                                    isTextExpanded10.toggle()
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
                                                
                                            }
                                        }
                                    MyViewBuilder(title: Text("41"), content: Text("""
                                    **Нет**
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded6)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded6.toggle()
                                                if isTextExpanded10 == false {
                                                    isTextExpanded10.toggle()
                                                }
                                                if isTextExpanded5 == false && isTextExpanded6 == false{
                                                    isTextExpanded10.toggle()
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
                                MyViewBuilder(title: Text("41"), content: Text("""
                                **Обезболивание ненаркотическими**
                                **(1 мл 3% раствора кеторолака, 1-2 мл 5% раствора трамадола)**
                                и **наркотическими**
                                **(1 мл 0,005% раствора фентанила, 1 мл 2% раствора тримеперидина)** анальгетиками в/в
                                """)).buildGrayInHiddenText()
                                HStack {
                                    MyViewBuilder(title: Text("41"), content: Text("""
                                    **Вывих**
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded7)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded7.toggle()
                                                if isTextExpanded10 == false {
                                                    isTextExpanded10.toggle()
                                                }
                                                if isTextExpanded7 == false && isTextExpanded8 == false && isTextExpanded9 == false{
                                                    isTextExpanded10.toggle()
                                                }
                                                
                                                if isTextExpanded8 == true {
                                                    isTextExpanded8.toggle()
                                                }
                                                if isTextExpanded9 == true {
                                                    isTextExpanded9.toggle()
                                                }
                                                
                                            }
                                        }
                                    MyViewBuilder(title: Text("41"), content: Text("""
                                    **Закрытый перелом**
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded8)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded8.toggle()
                                                
                                                if isTextExpanded10 == false {
                                                    isTextExpanded10.toggle()
                                                }
                                                if isTextExpanded7 == false && isTextExpanded8 == false && isTextExpanded9 == false{
                                                    isTextExpanded10.toggle()
                                                }
                                                
                                                if isTextExpanded7 == true {
                                                    isTextExpanded7.toggle()
                                                }
                                                if isTextExpanded9 == true {
                                                    isTextExpanded9.toggle()
                                                }
                                                
                                            }
                                        }
                                    MyViewBuilder(title: Text("41"), content: Text("""
                                    **Открытый перелом**
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded9)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded9.toggle()
                                                if isTextExpanded10 == false {
                                                    isTextExpanded10.toggle()
                                                }
                                                if isTextExpanded7 == false && isTextExpanded8 == false && isTextExpanded9 == false{
                                                    isTextExpanded10.toggle()
                                                }
                                                
                                                if isTextExpanded8 == true {
                                                    isTextExpanded8.toggle()
                                                }
                                                if isTextExpanded7 == true {
                                                    isTextExpanded7.toggle()
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
                           
                        MyViewBuilder(title: Text("41"), content: Text("""
                        При крайней необходимости **наложить жгут**.
                        **Не более 1 часа!**
                        """)).buildGrayText()
                    }
                    if isTextExpanded6{
                        //
                    }
                    if isTextExpanded7{
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("41"), content: Text("""
                        **Фиксировать конечность не меняя положения**
                        """)).buildGrayText()
                    }
                    if isTextExpanded8{
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("41"), content: Text("""
                        **Репозиция костей не производится!**
                        """)).buildGrayText()
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("41"), content: Text("""
                        Транспортная иммобилизация в пределах **не менее двух соседних суставов**
                        """)).buildGrayText()
                    }
                    if isTextExpanded9{
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("41"), content: Text("""
                        **Асептическая повязка**
                        """)).buildGrayText()
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("41"), content: Text("""
                        Транспортная иммобилизация в пределах **не менее двух соседних суставов**
                        """)).buildGrayText()
                    }
                    if isTextExpanded10{
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("41"), content: Text("""
                        Положение тела **на боку**.
                        При необходимости – **установка воздуховода, интубация трахеи**, пульсоксиметрия.
                        **Оксигенотерапия** (под контролем SpО2 – не менее 90%).
                        **Инфузионная терапия** под контролем АД **(САД ≥ 90 мм.рт.ст.)**.
                        """)).buildGrayText()
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("41"), content: Text("""
                        **Доставка под контролем жизненноважных функций в стационар** по профилю основного заболевания
                        """)).buildGrayText()
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
                            MyViewBuilder(title: Text("41"), content: Text("""
                            **Справочно**.
                            """)).buildGrayInText()
                            MyViewBuilder(title: Text("41"), content: Text("""
                                    **дефицит ОЦК при переломах**:
                                    
                                    - костей таза **500-5000 мл**;
                                    - бедра **300-2000 мл**;
                                    - обеих костей голени **100-1000 мл**;
                                    - плеча **100-800 мл**;
                                    - обеих костей предплечья **50-400 мл**.
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
                    Text("Алгоритм 41")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Травмы конечностей»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg41"), title: "Алгоритм 41")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}

#Preview {
    Prikaz1030Alg41View()
}
