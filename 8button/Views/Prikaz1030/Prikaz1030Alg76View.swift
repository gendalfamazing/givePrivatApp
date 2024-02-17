//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg76View: View {
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
                            
                            MyViewBuilder(title: Text("76"), content: Text("""
                            **Анамнез и осмотр**:
                            """)).buildGrayInText()
                            MyViewBuilder(title: Text("76"), content: Text("""
                            - мучительные позывы на мочеиспускание;
                            - беспокойство пациента, сильные боли в надлобковой области, ощущение распирания внизу живота;
                            - тупой звук над лобковой областью при перкуссии.
                            """)).buildGrayInHiddenText()
                        }
                        .padding(5)
                    }
                    Image(systemName: "arrow.down")
                       
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack {
                            
                            MyViewBuilder(title: Text("76"), content: Text("""
                            **Дополнительная информация**:
                            """)).buildGrayInText()
                            MyViewBuilder(title: Text("76"), content: Text("""
                            - **наличие противопоказаний** к катетеризации мочевого пузыря *.
                            - **отсутствие восстановления самостоятельного мочеиспускания** после повторных катетеризаций мочевого пузыря.
                            - продолжительность острой задержки мочи **более 2 суток**.
                            """)).buildGrayInHiddenText()
                            HStack{
                                MyViewBuilder(title: Text("76"), content: Text("""
                            **Совпадения есть**
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
                                        }
                                    }
                                MyViewBuilder(title: Text("76"), content: Text("""
                            **Совпадений нет**
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
                                        }
                                    }
                            }
                        }
                        .padding(5)
                    }
                    
                    if isTextExpanded1{
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("76"), content: Text("""
                                **Доставка в стационар** по профилю основного заболевания
                                """)).buildGrayText()
                        
                    }
                    if isTextExpanded2{
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                
                                MyViewBuilder(title: Text("76"), content: Text("""
                                Катетеризация мочевого пузыря эластическим катетером (**не более двух попыток**)
                                """)).buildGrayInText()
                                HStack{
                                    MyViewBuilder(title: Text("76"), content: Text("""
                                **Проведена**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded4)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded4.toggle()
                                                
                                                if isTextExpanded3 == true {
                                                    isTextExpanded3.toggle()
                                                }
                                            }
                                        }
                                    MyViewBuilder(title: Text("76"), content: Text("""
                                **Не проведена**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded3)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded3.toggle()
                                                
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
                    if isTextExpanded3{
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("76"), content: Text("""
                                **Доставка в стационар** по профилю основного заболевания
                                """)).buildGrayText()
                        
                    }
                    if isTextExpanded4{
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("76"), content: Text("""
                                **Рекомендовать обратиться к урологу** в поликлинику
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
                            MyViewBuilder(title: Text("1"), content: Text("""
                            **Примечание**.
                            """)).buildGrayInText()
                            MyViewBuilder(title: Text("1"), content: Text("""
                                    * **Противопоказания к катетеризации**:
                                    - острый уретрит и эпидидимит (орхит),
                                    - острый простатит (абсцесс предстательной железы),
                                    - травма уретры.
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
                    Text("Алгоритм 76")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Острая задержка мочи»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg76"), title: "Алгоритм 76")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}

#Preview {
    Prikaz1030Alg76View()
}
