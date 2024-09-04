//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct Postanovlenie99Alg10View: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
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
    @State private var isTextExpanded18 = false
    @State private var isTextExpanded19 = false
    @State private var isTextExpanded20 = false
    @State private var isTextExpanded21 = false
    @State private var isTextExpanded22 = false
    @State private var isTextExpanded23 = false
    @State private var isTextExpanded24 = false
    @State private var isTextExpanded25 = false
    @State private var isTextExpanded26 = false
    @State private var isTextExpanded27 = false
    var body: some View {
            ScrollView {
                Spacer()
                VStack {
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack {
                            MyViewBuilder(title: Text("6"),
                                          content: Text("""
                                                **Пациент без сознания или в критическом состоянии**
                                                """)).buildGrayInText()
                        }
                        .padding(5.0)
                    }
                    Image(systemName: "arrow.down")
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack {
                            MyViewBuilder(title: Text("6"),
                                          content: Text("""
                                                **Вызвать ПОМОЩЬ и оценить состояние пациента**
                                                """)).buildGrayInText()
                        }
                        .padding(5.0)
                    }
                    Image(systemName: "arrow.down")
                    
                        VStack {
                            
                            MyViewBuilder(title: Text("6"), content: Text("**Признаки жизни**")).buildGrayInText()
                            HStack {
                                MyViewBuilder(title: Text("Алгоритм 1"), content: Text("**Есть**")).buildGreen1Text(isTextExpanded: isTextExpanded1)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded1.toggle()
                                            
                                            if isTextExpanded2 == true {
                                                isTextExpanded2.toggle()
                                            }
                                            
                                            
                                        }
                                    }
                                MyViewBuilder(title: Text("Алгоритм 1"), content: Text("**Нет**")).buildGreen1Text(isTextExpanded: isTextExpanded2)
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
                        .padding(5.0)
                        .background(Color.grayButton)
                        .cornerRadius(10)
                        .overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                        )
                    
                    
                    if isTextExpanded1 {
                        Image(systemName: "arrow.down")
                        
                            VStack {
                                MyViewBuilder(title: Text("6"),
                                              content: Text("""
                                                    Использовать алгоритм **ABCDE**, диагностировать и лечить причину ухудшения состояния.
                                                    """)).buildGrayInText()
                                MyViewBuilder(title: Text("6"),
                                              content: Text("""
                                                             **Обеспечить**:
                                                            - кислородотерапию,
                                                            - мониторинг,
                                                            - внутривенный доступ или внутрикостный доступ.
                                                            """)).buildGrayInHiddenText()
                            }
                            .background(Color.grayButton)
                            .cornerRadius(10)
                            .overlay(RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                            )
                        
                        Image(systemName: "arrow.down")
                        MyViewBuilder(title: Text("6"),
                                      content: Text("""
                                                    **Вызвать реаниматолога/СМП**
                                                    """)).buildGrayText()
                        Image(systemName: "arrow.down")
                        MyViewBuilder(title: Text("6"),
                                      content: Text("""
                                                    **Передача пациента врачам-анестезиологам-реаниматологам/СМП**
                                                    """)).buildGrayText()
                    }
                    if isTextExpanded2 {
                        Image(systemName: "arrow.down")
                        MyViewBuilder(title: Text("6"),
                                      content: Text("""
                                                    **Вызвать врача-анестезиолога-реаниматолога/СМП**
                                                    """)).buildGrayText()
                        Image(systemName: "arrow.down")
                        
                            VStack {
                                MyViewBuilder(title: Text("6"),
                                              content: Text("""
                                                    **СЛР 30:2**
                                                    """)).buildGrayInText()
                                MyViewBuilder(title: Text("6"),
                                              content: Text("""
                                                            **Обеспечить**:
                                                            - проходимость ДП
                                                            - внутривенный доступ или внутрикостный доступ
                                                            """)).buildGrayInHiddenText()
                            }
                            .background(Color.grayButton)
                            .cornerRadius(10)
                            .overlay(RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                            )
                        
                        Image(systemName: "arrow.down")
                        MyViewBuilder(title: Text("6"),
                                      content: Text("""
                                                    **Наложить электроды дефибриллятора/монитора**. Выполнить дефибрилляцию, если есть медицинские показания
                                                    """)).buildGrayText()
                        Image(systemName: "arrow.down")
                        MyViewBuilder(title: Text("6"),
                                      content: Text("""
                                                    **Продолжить СЛР совместно с врачами-анестезиологами-реаниматоогами/СМП**
                                                    """)).buildGrayText()
                        
                    }
                }
                .padding(.horizontal, 10)
                .padding(.bottom, 55)
            }
            //        .padding(.horizontal, 200)
//            .edgesIgnoringSafeArea(.bottom)
            .background(Color.back)
        
        .navigationBarBackButtonHidden(false)
        .navigationBarTitle("",displayMode: .inline)
        .toolbar {
            ToolbarItem(placement: .principal) {
                VStack {
                    Text("Приложение 2")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Алгоритм базовой СЛР»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Post99Pril2"), title: "Алгоритм базовой СЛР")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
    }
    
}
#Preview {
    Postanovlenie99Alg10View()
}

