//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg49View: View {
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
                    
                    MyViewBuilder(title: Text("49"), content: Text("""
                            **Коррекция угрожаемых жизни нарушений дыхания** (обеспечить проходимость верхних дыхательных путей) и **кровообращения** (при необходимости – ЛСР)
                            """)).buildGrayText()
                    
                    
                    Image(systemName: "arrow.down")
                       
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack {
                            MyViewBuilder(title: Text("49"), content: Text("""
                            **Прекратить дальнейшее поступление яда в организм**:
                            """)).buildGrayInText()
                            MyViewBuilder(title: Text("49"), content: Text("""
                            - **при ингаляционных отравлениях** – удалить пострадавшего из заражённой атмосферы (сотрудник МЧС);
                            - **при пероральном** – промыть желудок через зонд, ввести энтеросорбент;
                            - **при накожном** – обмывание поражённых участков кожи водой (температура не выше 18°С).
                            """)).buildGrayInHiddenText()
                            
                        }
                        .padding(5)
                    }
                    Image(systemName: "arrow.down")
                       
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack {
                            MyViewBuilder(title: Text("49"), content: Text("""
                            **Неотложная помощь**:
                            """)).buildGrayInText()
                            MyViewBuilder(title: Text("49"), content: Text("""
                            - **положение** – в зависимости от уровня сознания
                            - **контроль вены, 0,9% р-р натрия хлорида 250-500 мл** в/в,
                            - **пульсоксиметрия**
                            - **ингаляция кислорода – 4-6 л/мин**
                            - **симптоматическая терапия**
                            """)).buildGrayInHiddenText()
                            
                        }
                        .padding(5)
                    }
                    Image(systemName: "arrow.down")
                       
                    MyViewBuilder(title: Text("49"), content: Text("""
                    **Доставка в ОИТАР** стационара
                    """)).buildGrayText()
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
                            MyViewBuilder(title: Text("49"), content: Text("""
                            **Примечание.**
                            """)).buildGrayInText()
                            MyViewBuilder(title: Text("49"), content: Text("""
                                    1. **Помнить о самозащите** (работать в перчатках и маске).
                                    2. **При подозрении на отравление** – немедленное решение вопроса об **интубации** трахеи или комбитьюб (ларингиальная маска).
                                    3. При необходимости – **СЛР**.
                                    4. **Активированный уголь – противопоказан при отравлении кислотами и щелочами**.
                                    5. Чётко **собрать токсикологический анамнез**, проанализировать токсикологическую ситуацию, **при возможности собрать и сохранить остатки ядовитого вещества**.
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
                    Text("Алгоритм 49")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Отравление неизвестным ядом»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg49"), title: "Алгоритм 49")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}

#Preview {
    Prikaz1030Alg49View()
}
