//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg37View: View {
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
                            MyViewBuilder(title: Text("37"), content: Text("""
                            **Кровотечение умеренное**:
                            """)).buildGrayInText()
                            HStack {
                                MyViewBuilder(title: Text("37"), content: Text("""
                                **Да**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded1)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded1.toggle()
                                            if isTextExpanded71 == false {
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
                                            
                                            
                                        }
                                    }
                                MyViewBuilder(title: Text("37"), content: Text("""
                                **Нет**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded2)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded2.toggle()
                                            if isTextExpanded72 == false {
                                                isTextExpanded72.toggle()
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
                                            
                                        }
                                    }
                            }
                        }
                        .padding(5)
                    }
                    
                    if isTextExpanded1{
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("37"), content: Text("""
                                **Установить причину**:
                                """)).buildGrayInText()
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded71.toggle()
                                        }
                                    }
                                if isTextExpanded71{
                                    MyViewBuilder(title: Text("37"), content: Text("""
                                – артериальная гипертензия;
                                – болезни крови;
                                – антикоагулянтная терапия;
                                – опухоли;
                                – другие.
                                """)).buildGrayInHiddenText()
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded71.toggle()
                                            }
                                        }
                                }
                                
                                HStack {
                                    MyViewBuilder(title: Text("37"), content: Text("""
                                    **Установлена**
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded7)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded7.toggle()
                                                if isTextExpanded71 == true {
                                                    isTextExpanded71.toggle()
                                                }
                                                if isTextExpanded7 == false && isTextExpanded8 == false {
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
                                                if isTextExpanded8 == true {
                                                    isTextExpanded8.toggle()
                                                }
                                            }
                                        }
                                    MyViewBuilder(title: Text("37"), content: Text("""
                                    **Не установлена**
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded8)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded8.toggle()
                                                if isTextExpanded71 == true {
                                                    isTextExpanded71.toggle()
                                                }
                                                if isTextExpanded7 == false && isTextExpanded8 == false {
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
                                                
                                                
                                            }
                                        }
                                }
                            }
                            .padding(5)
                        }
                    }
                    if isTextExpanded7 {
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("37"), content: Text("""
                        **Симптоматическое лечение** (снижение АД и т.д.)
                        """)).buildGrayText()
                    }
                    if isTextExpanded2{
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("37"), content: Text("""
                                **Профузное кровотечение, сопровождаемое падением САД**:
                                """)).buildGrayInText()
                            }
                            .padding(5)
                        }
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("37"), content: Text("""
                                **Клинические признаки гиповолемического шока**:
                                """)).buildGrayInText()
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded72.toggle()
                                        }
                                    }
                                if isTextExpanded72{
                                    MyViewBuilder(title: Text("37"), content: Text("""
                                - холодная, бледная, влажная кожа;
                                - **САД менее 90 мм.рт.ст.**,
                                - **ЧСС более 100** в 1 мин,
                                - шоковый индекс **более 0,7**;
                                - **SpО2 менее 90%**.
                                """)).buildGrayInHiddenText()
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded72.toggle()
                                            }
                                        }
                                }
                                
                                HStack {
                                    MyViewBuilder(title: Text("37"), content: Text("""
                                    **Есть**
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded3)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded3.toggle()
                                                if isTextExpanded72 == true {
                                                    isTextExpanded72.toggle()
                                                }
                                                if isTextExpanded3 == false && isTextExpanded4 == false {
                                                    isTextExpanded72.toggle()
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
                                                if isTextExpanded7 == true {
                                                    isTextExpanded7.toggle()
                                                }
                                                if isTextExpanded8 == true {
                                                    isTextExpanded8.toggle()
                                                }
                                            }
                                        }
                                    MyViewBuilder(title: Text("37"), content: Text("""
                                    **Нет**
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded4)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded4.toggle()
                                                isTextExpanded8.toggle()
                                                if isTextExpanded72 == true {
                                                    isTextExpanded72.toggle()
                                                }
                                                if isTextExpanded3 == false && isTextExpanded4 == false {
                                                    isTextExpanded72.toggle()
                                                }
                                                if isTextExpanded1 == true {
                                                    isTextExpanded1.toggle()
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
                                                
                                                
                                                
                                            }
                                        }
                                }
                            }
                            .padding(5)
                        }
                        
                        
                    }
                    if isTextExpanded3{
                        Image(systemName: "arrow.down")
                           
                        NavigationLink (destination: Prikaz1030Alg5View()) {
                            MyViewBuilder(title: Text("1"), content: Text("Алгоритм 5 «Гиповолемический шок»")).buildNavigationText()
                        }
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("37"), content: Text("""
                        Достигнут эффект **стабильного САД 80-90мм.рт.ст.** (**поддерживать на таком уровне, не более**, в/в капельным введением кристаллоидов), **SpО2 менее 90%**
                        """)).buildGrayText()
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("37"), content: Text("""
                        **Экстренная доставка в стационар** (ОИТАР, минуя приемное отделение)
                        """)).buildGrayText()
                    }
                    if isTextExpanded4{
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("37"), content: Text("""
                                **Провести**:
                                """)).buildGrayInText()
                                MyViewBuilder(title: Text("37"), content: Text("""
                                - установку **периферического катетера**, **пульсоксиметрию**;
                                - **инфузионную терапию** под контролем АД;
                                - **оксигенотерапию** под контролем SpО2.
                                """)).buildGrayInHiddenText()
                            }
                            .padding(5)
                        }
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("37"), content: Text("""
                        Достигнут эффект **стабильного САД 80-90мм.рт.ст.** (**поддерживать на таком уровне, не более**, в/в капельным введением кристаллоидов), **SpО2 менее 90%**
                        """)).buildGrayText()
                    }
                    if isTextExpanded8 {
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("37"), content: Text("""
                                **Неотложная медицинская помощь**:
                                """)).buildGrayInText()
                                MyViewBuilder(title: Text("37"), content: Text("""
                                - **ввести в нос тампон, смоченный 3% перекисью водорода** и **прижать крыло носа к носовой перегородке** с одной или с обеих сторон **на 4-10 минут**;
                                - местно **«холод»**;
                                - при отсутствии эффекта **передняя тампонада**;
                                - **этамзилат 2 мл 12,5% раствора в/в в 20 мл 0,9% раствора натрия хлорида**.
                                """)).buildGrayInHiddenText()
                            }
                            .padding(5)
                        }
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("37"), content: Text("""
                                **Кровотечение купировано**:
                                """)).buildGrayInText()
                                HStack {
                                    MyViewBuilder(title: Text("37"), content: Text("""
                                    **Да**
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded5)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded5.toggle()
                                                
                                                if isTextExpanded6 == true {
                                                    isTextExpanded6.toggle()
                                                }
                                            }
                                        }
                                    MyViewBuilder(title: Text("37"), content: Text("""
                                    **Нет**
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded6)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded6.toggle()
                                                
                                                if isTextExpanded5 == true {
                                                    isTextExpanded5.toggle()
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
                           
                        MyViewBuilder(title: Text("37"), content: Text("""
                        **Рекомендовать дообследование** в поликлинике по месту жительства
                        """)).buildGrayText()
                    }
                    if isTextExpanded6 {
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("37"), content: Text("""
                        **Экстренная доставка в стационар**
                        """)).buildGrayText()
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
                    Text("Алгоритм 37")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Носовое кровотечение»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg37"), title: "Алгоритм 37")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}

#Preview {
    Prikaz1030Alg37View()
}
