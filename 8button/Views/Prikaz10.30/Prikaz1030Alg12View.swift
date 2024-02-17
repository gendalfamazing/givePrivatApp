//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg112View: View {
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
    
    var body: some View {
        NavigationStack {
            ScrollView {
                Spacer()
                VStack {
                    MyViewBuilder(title: Text("12"), content: Text("""
                    **Анамнез, осмотр, контроль АД, ЭКГ**
                    """)).buildGrayText()
                    Image(systemName: "arrow.down")
                        .shadow(radius: 2)
                    MyViewBuilder(title: Text("12"), content: Text("""
                    **Хроническое течение заболевания**
                    """)).buildBlue1Text(isTextExpanded: isTextExpanded)
                        .onTapGesture {
                            withAnimation (.interpolatingSpring) {
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
                    if isTextExpanded {
                        MyViewBuilder(title: Text("12"), content: Text("""
                        **Лидокаин 2% – 2-4 мл** или **амиодарон 5% – 4-6 мл** в/в
                        """)).buildGrayText()
                        Image(systemName: "arrow.down")
                            .shadow(radius: 2)
                        MyViewBuilder(title: Text("12"), content: Text("""
                        **При отсутствии эффекта** от медицинской помощи **доставка в стационар** по профилю основного заболевания
                        """)).buildGrayText()
                    }
                    MyViewBuilder(title: Text("12"), content: Text("""
                    **Частая или политопная в острейшей фазе ИМ**
                    """)).buildBlue1Text(isTextExpanded: isTextExpanded1)
                        .onTapGesture {
                            withAnimation (.interpolatingSpring) {
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
                    if isTextExpanded1 {
                        MyViewBuilder(title: Text("12"), content: Text("""
                        **Лидокаин 2% – 2-4 мл** или **амиодарон 5% – 4-6 мл** в/в
                        """)).buildGrayText()
                        Image(systemName: "arrow.down")
                            .shadow(radius: 2)
                        MyViewBuilder(title: Text("12"), content: Text("""
                        **При сохраняющейся экстрасистолии** во время транспортировки **лидокаин 2% – 2-4 мл** или **амиодарон 5% – 4-6 мл в/в капельно на 200 мл 0,9 % раствора натрия хлорида**
                        """)).buildGrayText()
                        Image(systemName: "arrow.down")
                            .shadow(radius: 2)
                        MyViewBuilder(title: Text("12"), content: Text("""
                        **Доставка в стационар** по профилю основного заболевания
                        """)).buildGrayText()
                    }
                    MyViewBuilder(title: Text("12"), content: Text("""
                    **Частые групповые** экстрасистолы **гемодинамически значимые** или **субъективно плохо переносимые**
                    """)).buildBlue1Text(isTextExpanded: isTextExpanded2)
                        .onTapGesture {
                            withAnimation (.interpolatingSpring) {
                                isTextExpanded2.toggle()
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
                    if isTextExpanded2 {
                        MyViewBuilder(title: Text("12"), content: Text("""
                        **Признаки кардиогенного шока**:
                        - нарушение сознания;
                        - бледность и влажность кожных покровов;
                        - акроцианоз;
                        - тахикардия;
                        - олигурия;
                        - холодные конечности.
                        """)).buildGrayText()
                        HStack {
                            MyViewBuilder(title: Text("12"), content: Text("""
                            Признаки ГШ **есть**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded3)
                                .onTapGesture {
                                    withAnimation (.interpolatingSpring) {
                                        isTextExpanded3.toggle()
                                        if isTextExpanded4 == true {
                                            isTextExpanded4.toggle()
                                        }
                                    }
                                }
                            
                            MyViewBuilder(title: Text("12"), content: Text("""
                            Признаков ГШ **нет**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded4)
                                .onTapGesture {
                                    withAnimation (.interpolatingSpring) {
                                        isTextExpanded4.toggle()
                                        if isTextExpanded3 == true {
                                            isTextExpanded3.toggle()
                                        }
                                    }
                                }
                        }
                        
                    }
                    if isTextExpanded3 {
                        NavigationLink (destination: Prikaz1030Alg16View()) {
                            MyViewBuilder(title: Text("12"), content: Text("Алгоритм 16 «Кардиогенный шок»")).buildNavigationText()
                        }
                    }
                    if isTextExpanded4 {
                        MyViewBuilder(title: Text("12"), content: Text("""
                        **Лидокаин 2% – 2-4 мл** или **амиодарон 5% – 4-6 мл** в/в
                        """)).buildGrayText()
                        Image(systemName: "arrow.down")
                            .shadow(radius: 2)
                        MyViewBuilder(title: Text("12"), content: Text("""
                        **При сохраняющейся экстрасистолии** во время транспортировки **лидокаин 2% – 2-4 мл** или **амиодарон 5% – 4-6 мл в/в капельно на 200 мл 0,9 % раствора натрия хлорида**
                        """)).buildGrayText()
                        Image(systemName: "arrow.down")
                            .shadow(radius: 2)
                        MyViewBuilder(title: Text("12"), content: Text("""
                        **Доставка в стационар** по профилю основного заболевания
                        """)).buildGrayText()
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
                Text("Алгоритм 12")
                    .font(.headline)
                    .bold()
                Text("«Желудочковая экстрасистолия (злокачественная)»")
                    .font(.caption2)
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
    Prikaz1030Alg112View()
}
