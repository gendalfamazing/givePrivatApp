//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct Postanovlenie59Alg3View: View {
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
    //  ¹²³⁴⁵
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack (spacing: 5) {
                    MyViewBuilder(title: Text("""
                                              Последовательность действий на этапах оказания медицинской помощи пациентам с острым коронарным синдромом
                                              """),
                                  content: Text(LocalizedStringKey("Post59Alg3B0G0S1"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded1)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded1.toggle()
                            }
                        }
                    Spacer(minLength: 15)
                    MyViewBuilder(title: Text("""
                                              """),
                                  content: Text("""
                                                **Этап I. Догоспитальный этап**
                                                """)).buildBlue591Text(isTextExpanded: isTextExpanded2)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded2.toggle()
                            }
                        }
                    if isTextExpanded2 {
                        MyViewBuilder(title: Text("""
                                              I А. Фельдшерско-акушерский пункт
                                              """),
                                      content: Text(LocalizedStringKey("Post59Alg3B0G0S2"))).buildDualBlockBlueGrayLowLevel(isTextExpanded: isTextExpanded3)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded3.toggle()
                                }
                            }
                        
                        MyViewBuilder(title: Text("""
                                              I Б. Врач общей практики, участковый врач вне амбулаторно-поликлинической организации здравоохранения
                                              """),
                                      content: Text(LocalizedStringKey("Post59Alg3B0G0S3"))).buildDualBlockBlueGrayLowLevel(isTextExpanded: isTextExpanded4)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded4.toggle()
                                }
                            }//  ¹²³⁴⁵
                        MyViewBuilder(title: Text("""
                                              I В. Врачи в условиях амбулаторно-поликлинических организаций здравоохранения
                                              """),
                                      content: Text(LocalizedStringKey("Post59Alg3B0G0S4"))).buildDualBlockBlueGrayLowLevel(isTextExpanded: isTextExpanded5)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded5.toggle()
                                }
                            }
                    }
                    MyViewBuilder(title: Text("""
                                              """),
                                  content: Text("""
                                                **Этап II. Врач/ фельдшер бригады скорой медицинской помощи**
                                                """)).buildBlue591Text(isTextExpanded: isTextExpanded6)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded6.toggle()
                            }
                        }
                    if isTextExpanded6 {
                        
                        MyViewBuilder(title: Text("""
                                                  Общие мероприятия
                                                  """),
                                      content: Text(LocalizedStringKey("Post59Alg3B0G0S5"))).buildDualBlockBlueGrayLowLevel(isTextExpanded: isTextExpanded7)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded7.toggle()
                                }
                            }
                        MyViewBuilder(title: Text("""
                                                  Острый коронарный синдром со стойким подъемом сегмента ST
                                                  """),
                                      content: Text(LocalizedStringKey("Post59Alg3B0G0S6"))).buildDualBlockBlueGrayLowLevel(isTextExpanded: isTextExpanded8)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded8.toggle()
                                }
                            }
                        MyViewBuilder(title: Text("""
                                                  Острый коронарный синдром без подъема сегмента ST
                                                  """),
                                      content: Text(LocalizedStringKey("Post59Alg3B0G0S7"))).buildDualBlockBlueGrayLowLevel(isTextExpanded: isTextExpanded9)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded9.toggle()
                                }
                            }
                    }
                    
                    MyViewBuilder(title: Text("""
                                              """),
                                  content: Text("""
                                                Этап III. Приемное отделение
                                                """)).buildBlue591Text(isTextExpanded: isTextExpanded10)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded10.toggle()
                            }
                        }
                    if isTextExpanded10 {
                        MyViewBuilder(title: Text("""
                                                  Острый коронарный синдром со стойким подъемом сегмента ST
                                                  """),
                                      content: Text(LocalizedStringKey("Post59Alg3B0G0S8"))).buildDualBlockBlueGrayLowLevel(isTextExpanded: isTextExpanded11)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded11.toggle()
                                }
                            }
                        
                        MyViewBuilder(title: Text("""
                                                  Острый коронарный синдром без подъема сегмента ST
                                                  """),
                                      content: Text(LocalizedStringKey("Post59Alg3B0G0S9"))).buildDualBlockBlueGrayLowLevel(isTextExpanded: isTextExpanded12)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded12.toggle()
                                }
                            }
                    }
                    
                    //¹²³⁴⁵
                    
                    MyViewBuilder(title: Text("""
                                              Примечание⁰
                                              """),
                                  content: Text(LocalizedStringKey("Post59Alg3B0G0S10"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded13)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded13.toggle()
                            }
                        }
                    Spacer(minLength: 15)
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        VStack  {
                            MyViewBuilder(title: Text("1"), content: Text("Оказание медицинской помощи пациентам с острым коронарным синдромом со стойким подъемом сегмента ST")).buildBlue59Text(isTextExpanded: isTextExpanded14)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded14.toggle()
                                    }
                                }
                            
                            if isTextExpanded14{
                                MyViewBuilder(title: Text("1"), content: Text(LocalizedStringKey("Post59Alg3B0G0S11"))).buildGrayInHiddenText()
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded14.toggle()
                                        }
                                    }
                                
                                VStack (spacing: 1){
                                    
                                    
                                    ForEach(Table59OKS.getTable59OKS1(), id: \.id) { name in
                                        MyViewBuilder59(title1: name.content1,title2: name.content2,title3: name.content3,title4: name.content4,title5: name.content5,title6: name.content6,title7: name.content7,title8: name.content8,title9: name.content9,title10: name.content10,title11: name.content11,title12: name.content12,title13: name.content13,title14: name.content14, title15: name.content15,title16: name.content16,title17: name.content17,title18: name.content18,title19: name.content19,title20: name.content20,title21: name.content21,title22: name.content22,title23: name.content23,title24: name.content24,title25: name.content25,title26: name.content26,title27: name.content27,title28: name.content28).buildTable59OKS()
                                    }
                                    
                                }
                                .cornerRadius(10)
                                //                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded14.toggle()
                                    }
                                }
                                NavigationLink (destination: Prikaz1030Alg2View()) {
                                    MyViewBuilder(title: Text("1"), content: Text("Приложение 2")).buildNavigationText().padding(.horizontal, 5)
                                }
                                NavigationLink (destination: Prikaz1030Alg2View()) {
                                    MyViewBuilder(title: Text("1"), content: Text("Приложение 4")).buildNavigationText().padding(.horizontal, 5)
                                }
                                NavigationLink (destination: Prikaz1030Alg2View()) {
                                    MyViewBuilder(title: Text("1"), content: Text("Приложение 5")).buildNavigationText().padding(.horizontal, 5)
                                }
                                NavigationLink (destination: Prikaz1030Alg2View()) {
                                    MyViewBuilder(title: Text("1"), content: Text("Приложение 6")).buildNavigationText().padding(.horizontal, 5)
                                }
                                Spacer(minLength: 15)
                                
                                MyViewBuilder(title: Text("3"), content: Text("""
                                        * Данный вид диагностики (лечения), консультация врачей-специалистов осуществляется в условиях межрайонных (при наличии необходимого оборудования и врачей-специалистов), областных и республиканских организаций здравоохранения.
                                        """)).buildGrayInHiddenText().onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded14.toggle()
                                    }
                                }
                                
                                
                            }
                            
                        }
                    }
                    
                    
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        VStack  {
                            MyViewBuilder(title: Text("1"), content: Text("Оказание медицинской помощи пациентам с острым коронарным синдромом без подъема сегмента st")).buildBlue59Text(isTextExpanded: isTextExpanded15)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded15.toggle()
                                    }
                                }
                            
                            if isTextExpanded15{
                                MyViewBuilder(title: Text("1"), content: Text(LocalizedStringKey("Post59Alg3B0G0S12"))).buildGrayInHiddenText()
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded15.toggle()
                                        }
                                    }
                                
                                VStack (spacing: 1){
                                    
                                    
                                    ForEach(Table59OKS.getTable59OKS2(), id: \.id) { name in
                                        MyViewBuilder59(title1: name.content1,title2: name.content2,title3: name.content3,title4: name.content4,title5: name.content5,title6: name.content6,title7: name.content7,title8: name.content8,title9: name.content9,title10: name.content10,title11: name.content11,title12: name.content12,title13: name.content13,title14: name.content14, title15: name.content15,title16: name.content16,title17: name.content17,title18: name.content18,title19: name.content19,title20: name.content20,title21: name.content21,title22: name.content22,title23: name.content23,title24: name.content24,title25: name.content25,title26: name.content26,title27: name.content27,title28: name.content28).buildTable59OKS1()
                                    }
                                    
                                }
                                .cornerRadius(10)
                                //                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded15.toggle()
                                    }
                                }
                                NavigationLink (destination: Prikaz1030Alg2View()) {
                                    MyViewBuilder(title: Text("1"), content: Text("Приложение 2")).buildNavigationText().padding(.horizontal, 5)
                                }
                                NavigationLink (destination: Prikaz1030Alg2View()) {
                                    MyViewBuilder(title: Text("1"), content: Text("Приложение 4")).buildNavigationText().padding(.horizontal, 5)
                                }
                                NavigationLink (destination: Prikaz1030Alg2View()) {
                                    MyViewBuilder(title: Text("1"), content: Text("Приложение 5")).buildNavigationText().padding(.horizontal, 5)
                                }
                                NavigationLink (destination: Prikaz1030Alg2View()) {
                                    MyViewBuilder(title: Text("1"), content: Text("Приложение 6")).buildNavigationText().padding(.horizontal, 5)
                                }
                                Spacer(minLength: 15)
                                
                                MyViewBuilder(title: Text("3"), content: Text("""
                                        * Данный вид диагностики (лечения), консультация врачей-специалистов осуществляется в условиях межрайонных (при наличии необходимого оборудования и врачей-специалистов), областных и республиканских организаций здравоохранения.
                                        """)).buildGrayInHiddenText()
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded15.toggle()
                                        }
                                    }
                                
                                
                            }
                            
                        }
                    }
                    
                    Spacer(minLength: 15)
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        VStack  {
                            NavigationLink (destination: Postanovlenie59Alg3P1View()) {
                                MyViewBuilder(title: Text("1"), content: Text("""
                                    Приложение 1. Рекомендации по выбору стратегии ведения пациентов с ОКС с подъемом сегмента ST
                                    """)).buildBlue59NavigationText()
                            }
                        }
                    }
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        VStack  {
                            NavigationLink (destination: Postanovlenie59Alg3P2View()) {
                                MyViewBuilder(title: Text("1"), content: Text("""
                                    Приложение 2. Протокол выбора и проведения тромболитической терапии при ОКС с подъемом сегмента ST
                                    """)).buildBlue59NavigationText()
                            }
                        }
                    }
                }
                .padding(.horizontal, 10)
                .padding(.bottom, 95)
            }
            //        .padding(.horizontal, 200)
            .edgesIgnoringSafeArea(.bottom)
            .background(Color.back)
        }
        .navigationBarBackButtonHidden(false)
        .navigationBarTitle("",displayMode: .inline)
        .toolbar {
            ToolbarItem(placement: .principal) {
                VStack {
                    Text("Приложение 2")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("""
                    «Лечение ИМ, нестабильной стенокардии»
                    """)
                    .font(.caption2)
                    .foregroundStyle(Color.toolBar)
                }
            }
            
        }
    }
    
}
#Preview {
    Postanovlenie59Alg3View()
}

