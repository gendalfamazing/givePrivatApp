//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg64View: View {
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
                            
                            MyViewBuilder(title: Text("64"), content: Text("""
                            **Клинические признаки**:
                            """)).buildGrayInText()
                            MyViewBuilder(title: Text("64"), content: Text("""
                            - слабость и головокружение;
                            - бледность кожных покровов и конъюнктивы глаз;
                            - частый, мягкий пульс, слабого наполнения, снижение АД.
                            
                            **Объективные признаки**:
                            - **рвота кровью**;
                            - рвота **«кофейной гущей»**;
                            - **мелена**;
                            - **сгустки крови или ярко-красная кровь в кале**.
                            """)).buildGrayInHiddenText()
                            
                        }
                        .padding(5)
                    }
                    Image(systemName: "arrow.down")
                       
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack {
                            
                            MyViewBuilder(title: Text("64"), content: Text("""
                            **Наличие в анамнезе следующих заболеваний**:
                            """)).buildGrayInText()
                            MyViewBuilder(title: Text("64"), content: Text("""
                            - **язвенная болезнь желудка** и двенадцатиперстной кишки;
                            - **острые язвы и эрозии ЖКТ**;
                            - **синдром Маллори — Вейсса**;
                            - **варикозно расширенные вены пищевода**;
                            - **перианальные заболевания** (геморрой, анальные трещины, выпадение ануса), **колоректальные полипы, рак, язвенный колит** или неустановленный источник.
                            """)).buildGrayInHiddenText()
                            
                        }
                        .padding(5)
                    }
                    
                    Image(systemName: "arrow.down")
                       
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack {
                            
                            MyViewBuilder(title: Text("64"), content: Text("""
                            **Диагностические мероприятия**:
                            """)).buildGrayInText()
                            MyViewBuilder(title: Text("64"), content: Text("""
                            - **пальцевое исследование прямой кишки при отсутствии явных объективных признаков кровотечения**;
                            - ЭКГ.
                            """)).buildGrayInHiddenText()
                            
                        }
                        .padding(5)
                    }
                    Image(systemName: "arrow.down")
                       
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack {
                            
                            MyViewBuilder(title: Text("64"), content: Text("""
                            **Неотложная помощь**:
                            """)).buildGrayInText()
                            MyViewBuilder(title: Text("64"), content: Text("""
                            1. **В/в инфузия**:
                            - **декстрана/натрия хлорида**, или
                            - **10% раствора гидросиэтилкрахмала**, или
                            - **раствора электролитов** вначале в/в струйно, затем (**при САД больше 80 мм.рт.ст.**) – капельно.
                            2. **При критической гиповолемии при САД менее 80 мм.рт.ст. дополнительно**:
                            - **1 мл 1% раствора фенилэфрина в 800 мл 5% глюкозы** в/в капельно;
                            - в/в **этамзилат натрия 2-4 мл 12,5%** раствора;
                            - **оксигенотерапия**;
                            - **«холод» на живот**.
                            3. При пищеводном кровотечении **ввести зонд Блекмора**.
                            """)).buildGrayInHiddenText()
                            
                        }
                        .padding(5)
                    }
                    Image(systemName: "arrow.down")
                       
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack {
                            
                            MyViewBuilder(title: Text("64"), content: Text("""
                            **Строгий носилочный режим**.
                            **При коллапсе** – транспортировка в положении **Тренделенбурга**.
                            **Запрещается прием пищи и воды**.
                            **Доставка в стационар** по профилю заболевания.
                            """)).buildGrayInHiddenText()
                            
                        }
                        .padding(5)
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
                    Text("Алгоритм 64")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Острые желудочно-кишечные кровотечения»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg64"), title: "Алгоритм 64")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}

#Preview {
    Prikaz1030Alg64View()
}
