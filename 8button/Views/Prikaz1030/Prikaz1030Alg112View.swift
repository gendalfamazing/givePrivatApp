//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg12View: View {
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
    
    @State private var isTextExpanded71 = false
    
    var body: some View {
        NavigationStack {
            ScrollView {
                Spacer()
                VStack {
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack (spacing: 5){
                            MyViewBuilder(title: Text("12"), content: Text("""
                    **Анамнез, осмотр, контроль АД, ЭКГ**
                    """)).buildGrayInText()
                            MyViewBuilder(title: Text("12"), content: Text("""
                    **Хроническое течение заболевания**
                    """)).buildBlue591Text(isTextExpanded: isTextExpanded)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded.toggle()
                                        if isTextExpanded1 == true {
                                            isTextExpanded1.toggle()
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
                                    }
                                }
                            
                            MyViewBuilder(title: Text("12"), content: Text("""
                    **Частая или политопная в острейшей фазе ИМ**
                    """)).buildBlue591Text(isTextExpanded: isTextExpanded1)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded1.toggle()
                                        if isTextExpanded == true {
                                            isTextExpanded.toggle()
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
                                    }
                                }
                            
                            MyViewBuilder(title: Text("12"), content: Text("""
                    **Частые групповые** экстрасистолы **гемодинамически значимые** или **субъективно плохо переносимые**
                    """)).buildBlue591Text(isTextExpanded: isTextExpanded2)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded2.toggle()
                                        if isTextExpanded71 == false {
                                            isTextExpanded71.toggle()
                                        }
                                        if isTextExpanded1 == true {
                                            isTextExpanded1.toggle()
                                        }
                                        if isTextExpanded == true {
                                            isTextExpanded.toggle()
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
                        .padding(5)
                    }
                    if isTextExpanded {
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("12"), content: Text("""
                        **Лидокаин 2% – 2-4 мл** или **амиодарон 5% – 4-6 мл** в/в
                        """)).buildGrayText()
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("12"), content: Text("""
                        **При отсутствии эффекта** от медицинской помощи **доставка в стационар** по профилю основного заболевания
                        """)).buildGrayText()
                    }
                    
                    if isTextExpanded1 {
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("12"), content: Text("""
                        **Лидокаин 2% – 2-4 мл** или **амиодарон 5% – 4-6 мл** в/в
                        """)).buildGrayText()
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("12"), content: Text("""
                        **При сохраняющейся экстрасистолии** во время транспортировки **лидокаин 2% – 2-4 мл** или **амиодарон 5% – 4-6 мл в/в капельно на 200 мл 0,9 % раствора натрия хлорида**
                        """)).buildGrayText()
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("12"), content: Text("""
                        **Доставка в стационар** по профилю основного заболевания
                        """)).buildGrayText()
                    }
                    if isTextExpanded2 {
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack (spacing:5){
                                MyViewBuilder(title: Text("12"), content: Text("""
                        **Признаки кардиогенного шока**:
                        """)).buildGrayInText()
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded71.toggle()
                                        }
                                    }
                                if isTextExpanded71 {
                                    MyViewBuilder(title: Text("12"), content: Text("""
                                - нарушение сознания;
                                - бледность и влажность кожных покровов;
                                - акроцианоз;
                                - тахикардия;
                                - олигурия;
                                - холодные конечности.
                                """)).buildGrayInHiddenText()
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded71.toggle()
                                            }
                                        }
                                }
                                HStack {
                                    MyViewBuilder(title: Text("12"), content: Text("""
                            **Есть**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded3)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded3.toggle()
                                                if isTextExpanded71 == true {
                                                    isTextExpanded71.toggle()
                                                }
                                                if isTextExpanded3 == false && isTextExpanded4 == false {
                                                    isTextExpanded71.toggle()
                                                }
                                                if isTextExpanded4 == true {
                                                    isTextExpanded4.toggle()
                                                }
                                            }
                                        }
                                    
                                    MyViewBuilder(title: Text("12"), content: Text("""
                            **Нет**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded4)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded4.toggle()
                                                if isTextExpanded71 == true {
                                                    isTextExpanded71.toggle()
                                                }
                                                
                                                if isTextExpanded3 == false && isTextExpanded4 == false {
                                                    isTextExpanded71.toggle()
                                                }
                                                if isTextExpanded3 == true {
                                                    isTextExpanded3.toggle()
                                                }
                                            }
                                        }
                                }.padding(5.0)
                            }
                        }
                    }
                    if isTextExpanded3 {
                        Image(systemName: "arrow.down")
                           
                        NavigationLink (destination: Prikaz1030Alg16View()) {
                            MyViewBuilder(title: Text("12"), content: Text("Алгоритм 16 «Кардиогенный шок»")).buildNavigationText()
                        }
                    }
                    if isTextExpanded4 {
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("12"), content: Text("""
                        **Лидокаин 2% – 2-4 мл** или **амиодарон 5% – 4-6 мл** в/в
                        """)).buildGrayText()
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("12"), content: Text("""
                        **При сохраняющейся экстрасистолии** во время транспортировки **лидокаин 2% – 2-4 мл** или **амиодарон 5% – 4-6 мл в/в капельно на 200 мл 0,9 % раствора натрия хлорида**
                        """)).buildGrayText()
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("12"), content: Text("""
                        **Доставка в стационар** по профилю основного заболевания
                        """)).buildGrayText()
                    }
                }
                .textSelection(.enabled)
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
                    Text("Алгоритм 12")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Желудочковая экстрасистолия (злокачественная)»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg12"), title: "Алгоритм 12")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}



#Preview {
    Prikaz1030Alg12View()
}
