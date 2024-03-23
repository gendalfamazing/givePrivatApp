//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg60View: View {
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
                    
                            MyViewBuilder(title: Text("60"), content: Text("""
                            **Организовать освобождение пострадавшего от поражающего фактора**
                            """)).buildGrayTextCenter()
                         
                    Image(systemName: "arrow.down")
                       
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack (spacing:1){
                            
                            MyViewBuilder(title: Text("60"), content: Text("""
                            - оценка **сознания, дыхания, пульса** на центральных и периферических артериях, **ЭКГ**
                            """)).buildGrayInHiddenText().padding(.horizontal, -5)
                            MyViewBuilder(title: Text("60"), content: Text("""
                            **Сознание ясное**:
                            """)).buildGrayInText().padding(-5)
                            Spacer(minLength: 5)
                            HStack {
                                
                                MyViewBuilder(title: Text("60"), content: Text("""
                            **Да**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded1)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded1.toggle()
                                            if isTextExpanded2 == true {
                                                isTextExpanded2.toggle()
                                            }
                                            
                                            
                                        }
                                    }
                                MyViewBuilder(title: Text("60"), content: Text("""
                            **Нет**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded2)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded2.toggle()
                                            if isTextExpanded1 == true {
                                                isTextExpanded1.toggle()
                                            }
                                            
                                        }
                                    }
                                
                            }
                        }
                        .padding(5)
                    }
                    if isTextExpanded1 {
                        Image(systemName: "arrow.down")
                           
                        
                        MyViewBuilder(title: Text("60"), content: Text("""
                                **Нормальные показатели гемодинимики и дыхания**
                                """)).buildGrayText()
                        
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("60"), content: Text("""
                        **Доставка в ОИТАР** стационара
                        """)).buildGrayText()
                    }
                    if isTextExpanded2 {
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                
                                MyViewBuilder(title: Text("60"), content: Text("""
                                - отсутствие сознания,
                                - отсутствие спонтанного дыхания,
                                - отсутствие пульса на сонной артерии
                                """)).buildGrayInHiddenText().padding(.horizontal, -5)
                                NavigationLink (destination: Prikaz1030Alg4View()) {
                                    MyViewBuilder(title: Text("1"), content: Text("Алгоритм 4 «Внезапная смерть, сердечно-легочная реанимация»")).buildNavigationText()
                                }
                                
                            }
                            .padding(5)
                        }
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack (spacing:1){
                                
                                MyViewBuilder(title: Text("60"), content: Text("""
                                **При судородах**:
                                """)).buildGrayInText()
                                NavigationLink (destination: Prikaz1030Alg29View()) {
                                    MyViewBuilder(title: Text("1"), content: Text("Алгоритм 29 «Судорожный синдром»")).buildNavigationText().padding(5)
                                }
                                
                            }
                        }
                        Image(systemName: "arrow.down")
                        
                                MyViewBuilder(title: Text("**При аритмии**:"), content: Text("""
                                См. соответствующий алгоритм
                                """)).buildGrayInAndHiddenBlock()
                           
                        Image(systemName: "arrow.down")
                        
                                MyViewBuilder(title: Text("**Нестабильная гемодинамика**:"), content: Text("""
                                - **(САД менее 80 мм рт. ст.)**
                                """)).buildGrayInAndHiddenBlock()
                           
                        Image(systemName: "arrow.down")
                         
                                MyViewBuilder(title: Text("**Неотложная помощь**:"), content: Text("""
                                 - д**опамин 5 мл 4%** раствора (200 мг) в **400 мл 0,9% раствора натрия хлорида** в/в со скоростью, достаточной для поддержания систолического **АД на уровне 80-100 м.рт.ст.**
                                """)).buildGrayInAndHiddenBlock()
                            
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("60"), content: Text("""
                                **Доставка в ОИТАР** стационара
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
                    Text("Алгоритм 60")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Поражение электрическим током»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg60"), title: "Алгоритм 60")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}

#Preview {
    Prikaz1030Alg60View()
}
