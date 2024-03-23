//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg50View: View {
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
                        VStack (spacing:1){
                            
                            MyViewBuilder(title: Text("**Клинические признаки**:"), content: Text("""
                            - внезапное появление;
                            - сыпи, гиперемии;
                            - отек кожи, слизистых;
                            - кожный зуд, жжение слизистых.
                            """)).buildGrayInAndHiddenBlockWithBlueButtons().padding(-5)
                            
                            MyViewBuilder(title: Text("**При выявлении аллергена**:"), content: Text("""
                            **Немедленное устранение контакта с аллергеном!**
                            """)).buildGrayInAndHiddenBlockWithBlueButtons().padding(-5)
                            VStack {
                                MyViewBuilder(title: Text("50"), content: Text("""
                                **Анафилактический шок**
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
                                            if isTextExpanded1 == false && isTextExpanded2 == false && isTextExpanded3 == false{
                                                isTextExpanded4 = false
                                            }
                                        }
                                    }
                                HStack {
                                    
                                    MyViewBuilder(title: Text("50"), content: Text("""
                                **Легкое течение**
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
                                                if isTextExpanded1 == false && isTextExpanded2 == false && isTextExpanded3 == false{
                                                    isTextExpanded4 = false
                                                }
                                            }
                                        }
                                    MyViewBuilder(title: Text("50"), content: Text("""
                                **Средней степени тяжести**
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
                                                if isTextExpanded4 == false {
                                                    isTextExpanded4.toggle()
                                                }
                                                if isTextExpanded5 == true {
                                                    isTextExpanded5.toggle()
                                                }
                                                if isTextExpanded1 == false && isTextExpanded2 == false && isTextExpanded3 == false{
                                                    isTextExpanded4 = false
                                                }
                                            }
                                        }
                                    
                                }
                            }
                        }
                        .padding(5)
                    }
                    
                    if isTextExpanded1{
                        Image(systemName: "arrow.down")
                        
                                MyViewBuilder(title: Text("**Клинические проявления**:"), content: Text("""
                                - аллергический ринит,
                                - конюнктивит,
                                - локальная крапивница
                                """)).buildGrayInAndHiddenBlock()
                           
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                
                                MyViewBuilder(title: Text("**Неотложная помощь**:"), content: Text("""
                                - **хлоропирамин 1-2 мл 2%** раствора или **клемастин 1-2 мл 1%** раствора в 20 мл 0,9% раствора натрия хлорида в/в
                                """)).buildGrayInAndHiddenBlockWithBlueButtons()
                                HStack {
                                    
                                    MyViewBuilder(title: Text("50"), content: Text("""
                                **Эффект есть**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded5)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded5.toggle()
                                                
                                                if isTextExpanded4 == true {
                                                    isTextExpanded4.toggle()
                                                }
                                                
                                            }
                                        }
                                    MyViewBuilder(title: Text("50"), content: Text("""
                                **Эффекта нет**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded4)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded4.toggle()
                                                
                                                if isTextExpanded5 == true {
                                                    isTextExpanded5.toggle()
                                                }
                                            }
                                        }
                                    
                                }.padding(5).padding(.top, -10)
                                
                            }
                            
                        }
                    }
                    if isTextExpanded2{
                        Image(systemName: "arrow.down")
                         
                                MyViewBuilder(title: Text("**Клинические проявления**:"), content: Text("""
                                - генерализованная сыпь,
                                - отек подкожной клетчатки,
                                - кашель, осиплость голоса, удушье,
                                - тошнота, рвота, диарея
                                """)).buildGrayInAndHiddenBlock()
                            
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("50"), content: Text("""
                        Установка **периферического катетера**
                        """)).buildGrayText()
                    }
                    if isTextExpanded3{
                        Image(systemName: "arrow.down")
                         
                                MyViewBuilder(title: Text("**Клинические проявления**:"), content: Text("""
                                - нарастающая слабость,
                                - прогрессирующая гипотензия,
                                - бледные, холодные и влажные кожные покровы,
                                - другие клинические признаки шока
                                """)).buildGrayInAndHiddenBlock()
                             
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("50"), content: Text("""
                        Установка периферического катетера
                        """)).buildGrayText()
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack (spacing:1){
                                
                                MyViewBuilder(title: Text("**Неотложная помощь**:"), content: Text("""
                                1) **Эпинефрин 0,18% - 0,5-1 мл** в/в в 20 мл 0,9% натрия хлорида (при необходимости повторить);
                                - **при распространении отека на область гортани эпинефрин 0,18% эндотрахеально 2-3 мл** в 20 мл 0,9% раствора натрия хлорида.
                                2) **При возникновении шока при в/в инъекции – максимально забрать кровь из вены**.
                                3) **Инфузионная терапия** (при необходимости дополнительно пункция центральной вены) по алгоритму 5 «Гиповолемический шок».
                                4) **Допамин 10 мл 4% раствора** в 0,9% растворе натрия хлорида (после массивной инфузионной терапии) в/в капельно.
                                5) **Преднизолон 120 мг** и более или **метилпреднизолон (30 мг/кг веса)** в/в.
                                """)).buildGrayInAndHiddenBlockWithBlueButtons()
                                NavigationLink (destination: Prikaz1030Alg5View()) {
                                    MyViewBuilder(title: Text("50"), content: Text("Алгоритм 5 «Гиповолемический шок».")).buildNavigationText().padding(5)
                                }
                                
                            }
                            
                        }
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("50"), content: Text("""
                        **Доставка в стационар** по профилю основного заболевания (ОИТАР по показаниям)
                        """)).buildGrayText()
                    }
                    if isTextExpanded4{
                        Image(systemName: "arrow.down")
                           
                                MyViewBuilder(title: Text("**Неотложная помощь**:"), content: Text("""
                                1. **Преднизолон 120 мг** и более или **метилпреднизолон (30 мг/кг веса)** в/в.
                                **Симптоматическая терапия**:
                                - **при бронхоспазме сальбутамол 2,55 мг** (небулайзер) или **аминофиллин 2,4% раствор 5-10 мл** в 20 мл 0,9% раствора натрия хлорида в/в.
                                """)).buildGrayInAndHiddenBlock()
                             
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("50"), content: Text("""
                        **Доставка в стационар** по профилю основного заболевания (ОИТАР по показаниям)
                        """)).buildGrayText()
                    }
                    if isTextExpanded5{
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("50"), content: Text("""
                                **Транспортировка в стационар** по профилю основного заболевания **или рекомендации по дообследованию в поликлинике**
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
                    Text("Алгоритм 50")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Аллергическая реакция»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg50"), title: "Алгоритм 50")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}

#Preview {
    Prikaz1030Alg50View()
}
