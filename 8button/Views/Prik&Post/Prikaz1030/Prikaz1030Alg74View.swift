//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg74View: View {
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
                            
                            MyViewBuilder(title: Text("74"), content: Text("""
                            **Анамнез и осмотр**:
                            """)).buildGrayInText().padding(-5)
                            
                            VStack{
                                HStack{
                                    MyViewBuilder(title: Text("74"), content: Text("""
                                **Инородное тело носа**
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
                                                if isTextExpanded1 == false && isTextExpanded2 == false && isTextExpanded3 == false {
                                                    isTextExpanded10 = false
                                                }
                                            }
                                        }
                                    MyViewBuilder(title: Text("74"), content: Text("""
                                **Инородное тело уха**
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
                                                if isTextExpanded1 == false && isTextExpanded2 == false && isTextExpanded3 == false {
                                                    isTextExpanded10 = false
                                                }
                                            }
                                        }
                                    
                                }
                                MyViewBuilder(title: Text("74"), content: Text("""
                            **Инородное тело глотки, гортани**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded3)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded3.toggle()
                                            if isTextExpanded2 == true {
                                                isTextExpanded2.toggle()
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
                                            if isTextExpanded9 == true {
                                                isTextExpanded9.toggle()
                                            }
                                            if isTextExpanded10 == true {
                                                isTextExpanded10.toggle()
                                            }
                                            if isTextExpanded1 == false && isTextExpanded2 == false && isTextExpanded3 == false {
                                                isTextExpanded10 = false
                                            }
                                        }
                                    }
                            }
                        }
                        .padding(5)
                    }
                    
                    
                    if isTextExpanded1{
                        Image(systemName: "arrow.down")
                           
                                MyViewBuilder(title: Text("**Клиническая картина**:"), content: Text("""
                                Затруднение дыхания, отделяемое из одной половины носа, при остроконечных инородных тела может быть носовое кровотечение, анамнез (указание на попадание инородного тела в нос)
                                """)).buildGrayInAndHiddenBlock()
                            
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack (spacing:1){
                                MyViewBuilder(title: Text("74"), content: Text("""
                        Сильное высмаркивание этой половины носа (**нельзя рекомендовать втягивание воздуха в себя через нос**)
                        """)).buildGrayInHiddenText().padding(.top, 5)
                                MyViewBuilder(title: Text("74"), content: Text("""
                                **Инородное тело удалено**:
                                """)).buildGrayInText()
                                Spacer(minLength: 5)
                                HStack{
                                    MyViewBuilder(title: Text("74"), content: Text("""
                                **Да**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded4)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded4.toggle()
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
                                                if isTextExpanded4 == false && isTextExpanded5 == false{
                                                    isTextExpanded10 = false
                                                }
                                            }
                                        }
                                    MyViewBuilder(title: Text("74"), content: Text("""
                                **Нет**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded5)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded5.toggle()
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
                                                if isTextExpanded10 == false {
                                                    isTextExpanded10.toggle()
                                                }
                                                if isTextExpanded4 == false && isTextExpanded5 == false{
                                                    isTextExpanded10 = false
                                                }
                                            }
                                        }
                                    
                                }.padding(5).padding(.top, -10)
                            }
                            
                        }
                    }
                    if isTextExpanded2{
                        Image(systemName: "arrow.down")
                           
                                MyViewBuilder(title: Text("**Клиническая картина**:"), content: Text("""
                                Боль, чувство инородного тела, шум в ухе, снижение слуха, анамнез (указание на наличие попадания инородного тела в ухо)
                                """)).buildGrayInAndHiddenBlock()
                            
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack (spacing:1){
                                MyViewBuilder(title: Text("74"), content: Text("""
                                Наиболее часто встречающиеся инородные тела: спички, вата, бусины, горошины и т.д.
                                """)).buildGrayInHiddenText().padding(.top, 5)
                                MyViewBuilder(title: Text("74"), content: Text("""
                                **Наличие в ухе живого насекомого**:
                                """)).buildGrayInText()
                                HStack{
                                    MyViewBuilder(title: Text("74"), content: Text("""
                                **Да**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded6)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded6.toggle()
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
                                                if isTextExpanded6 == false && isTextExpanded7 == false{
                                                    isTextExpanded10 = false
                                                }
                                            }
                                        }
                                    MyViewBuilder(title: Text("74"), content: Text("""
                                **Нет**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded7)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded7.toggle()
                                                if isTextExpanded6 == true {
                                                    isTextExpanded6.toggle()
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
                                                if isTextExpanded6 == false && isTextExpanded7 == false{
                                                    isTextExpanded10 = false
                                                }
                                            }
                                        }
                                    
                                }.padding(5).padding(.top, -10)
                            }
                        }
                    }
                    if isTextExpanded3{
                        Image(systemName: "arrow.down")
                           
                        
                                MyViewBuilder(title: Text("**Клиническая картина**:"), content: Text("""
                                Ощущение инородного тела, боль при глотании, наличие признаков удушья вплоть до асфиксии, осиплость, судорожный кашель, анамнез (указание на попадание инородного тела)
                                """)).buildGrayInAndHiddenBlock()
                            
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("74"), content: Text("""
                                **Признаки удушья**:
                                """)).buildGrayInText()
                                HStack{
                                    MyViewBuilder(title: Text("74"), content: Text("""
                                **Да**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded9)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded9.toggle()
                                                
                                                if isTextExpanded8 == true {
                                                    isTextExpanded8.toggle()
                                                }
                                                if isTextExpanded10 == false {
                                                    isTextExpanded10.toggle()
                                                }
                                                if isTextExpanded8 == false && isTextExpanded9 == false{
                                                    isTextExpanded10 = false
                                                }
                                            }
                                        }
                                    MyViewBuilder(title: Text("74"), content: Text("""
                                **Нет**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded8)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded8.toggle()
                                                
                                                if isTextExpanded9 == true {
                                                    isTextExpanded9.toggle()
                                                }
                                                if isTextExpanded10 == false {
                                                    isTextExpanded10.toggle()
                                                }
                                                if isTextExpanded8 == false && isTextExpanded9 == false{
                                                    isTextExpanded10 = false
                                                }
                                            }
                                        }
                                    
                                }.padding(5).padding(.top, -10)
                            }
                        }
                    }
                    if isTextExpanded4{
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("74"), content: Text("""
                        **Рекомендовать обратиться к оториноларингологу в плановом порядке**
                        """)).buildGrayText()
                    }
                    if isTextExpanded5{
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("74"), content: Text("""
                        В случаях локализации плоского инородного тела **в передних отделах носа**, хорошо видимого даже без лобного рефлектора, **захват его зажимом или пинцетом и извлечение**
                        
                        (**при инородном теле, имеющем бобовидную или шаровидную форму, захватывать его пинцетом или зажимом категорически противопоказано**)
                        """)).buildGrayText()
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("74"), content: Text("""
                        Инородное тело **не удалено**
                        """)).buildGrayText()
                    }
                    if isTextExpanded6{
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("74"), content: Text("""
                        **Закапать в ухо 2-3 капли вазелинового масла**
                        """)).buildGrayText()
                    }
                    if isTextExpanded7{
                        
                    }
                    if isTextExpanded8{
                        
                    }
                    if isTextExpanded9{
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack (spacing:1){
                                
                                MyViewBuilder(title: Text("74"), content: Text("""
                                При **хорошей видимости захватить инородное тело зажимом** (анатомическим пинцетом) и **извлечь**.
                                При **стенозе 3-4 степени** и невозможности удаления инородного тела алгоритм 25 «Стеноз гортани».
                                """)).buildGrayInHiddenText().padding(.top, 5)
                                NavigationLink (destination: Prikaz1030Alg25View()) {
                                    MyViewBuilder(title: Text("74"), content: Text("Алгоритм 25 «Стеноз гортани»")).buildNavigationText().padding(5)
                                }
                            }
                            
                        }
                    }
                    if isTextExpanded10{
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("74"), content: Text("""
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
                    Text("Алгоритм 74")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Инородное тело верхних дыхательных путей, уха»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg74"), title: "Алгоритм 74")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}

#Preview {
    Prikaz1030Alg74View()
}
