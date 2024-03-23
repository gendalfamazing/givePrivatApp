//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg62View: View {
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
                    
                            MyViewBuilder(title: Text("**Симптомы психоза**:"), content: Text("""
                            - бред
                            - галлюциинации
                            - возбуждение
                            """)).buildGrayInAndHiddenBlock()
                         
                    Image(systemName: "arrow.down")
                      
                            MyViewBuilder(title: Text("**Мероприятия первого этапа**:"), content: Text("""
                            - обеспечение безопасности больного и окружающих
                            - создание спокойной обстановки
                            - налаживание контакта с пациентом
                            - получение согласия на добровольную госпитализацию
                            """)).buildGrayInAndHiddenBlock()
                         
                    Image(systemName: "arrow.down")
                       
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack {
                            MyViewBuilder(title: Text("62"), content: Text("""
                            **Оценка соматического состояния пациента**:
                            """)).buildGrayInText()
                            HStack {
                                
                                MyViewBuilder(title: Text("62"), content: Text("""
                            **Легкой и средней тяжести**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded1)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded1.toggle()
                                            if isTextExpanded2 == true {
                                                isTextExpanded2.toggle()
                                            }
                                            
                                            
                                        }
                                    }
                                MyViewBuilder(title: Text("62"), content: Text("""
                            **Тяжелое**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded2)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded2.toggle()
                                            if isTextExpanded1 == true {
                                                isTextExpanded1.toggle()
                                            }
                                            
                                        }
                                    }
                                
                            }.padding(5).padding(.top, -10)
                        }
                    }
                    
                    if isTextExpanded1{
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("62"), content: Text("""
                        **Диазепам 0,5% 2-10 мл** в/м.
                        **Галоперидол 0,5% 1-3 мл** в/м (после введения диазепама).
                        """)).buildGrayText()
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("62"), content: Text("""
                        **Временная фиксация** (по показаниям)
                        """)).buildGrayText()
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("62"), content: Text("""
                        **Доставка в стационар** по профилю заболевания
                        """)).buildGrayText()
                    }
                    if isTextExpanded2{
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("62"), content: Text("""
                        **Оказание медицинской помощи в соответствии с выявленной соматической патологией** (см. соответствующие алгоритмы)
                        """)).buildGrayText()
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("62"), content: Text("""
                        **Временная фиксация** (по показаниям)
                        """)).buildGrayText()
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("62"), content: Text("""
                        **Доставка в ОИТАР** профильного стационара
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
                    Text("Алгоритм 62")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Острые психотические расстройства при употреблении психоактивных веществ (ПАВ)»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg62"), title: "Алгоритм 62")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}

#Preview {
    Prikaz1030Alg62View()
}
