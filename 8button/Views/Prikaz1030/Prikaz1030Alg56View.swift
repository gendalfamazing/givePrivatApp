//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg56View: View {
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
                            MyViewBuilder(title: Text("56"), content: Text("""
                            **Исключить**:
                            """)).buildGrayInText()
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded71.toggle()
                                        
                                    }
                                }
                            if isTextExpanded71 {
                                MyViewBuilder(title: Text("56"), content: Text("""
                            - расслаивающую аневризму аорты;
                            - инфаркт миокарда;
                            - субарахноидальное кровоизлияние;
                            - травматическое повреждение;
                            - «острый живот».
                            """)).buildGrayInHiddenText()
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded71.toggle()
                                            
                                        }
                                    }
                            }
                            HStack {
                                
                                MyViewBuilder(title: Text("56"), content: Text("""
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
                                            if isTextExpanded71 == true {
                                                isTextExpanded71.toggle()
                                            }
                                            if isTextExpanded1 == false && isTextExpanded2 == false {
                                                isTextExpanded71 = true
                                            }
                                            
                                        }
                                    }
                                MyViewBuilder(title: Text("56"), content: Text("""
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
                                            if isTextExpanded71 == true {
                                                isTextExpanded71.toggle()
                                            }
                                            if isTextExpanded1 == false && isTextExpanded2 == false {
                                                isTextExpanded71 = true
                                            }
                                        }
                                    }
                                
                            }
                        }
                        .padding(5)
                    }
                    if isTextExpanded1 {
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("56"), content: Text("""
                                **См. алгоритмы**:
                                """)).buildGrayInText()
                                NavigationLink (destination: Prikaz1030Alg15View()) {
                                    MyViewBuilder(title: Text("56"), content: Text("Алгоритм 15 «Острый коронарный синдром»")).buildNavigationText()
                                }
                                NavigationLink (destination: Prikaz1030Alg19View()) {
                                    MyViewBuilder(title: Text("56"), content: Text("Алгоритм 19 «Расслаивающая аневризма аорты»")).buildNavigationText()
                                }
                                NavigationLink (destination: Prikaz1030Alg30View()) {
                                    MyViewBuilder(title: Text("56"), content: Text("Алгоритм 30 «Острое нарушение мозгового кровообращения»")).buildNavigationText()
                                }
                                NavigationLink (destination: Prikaz1030Alg38View()) {
                                    MyViewBuilder(title: Text("56"), content: Text("Алгоритм 38 «Острая хирургическая патология органов брюшной полости».")).buildNavigationText()
                                }
                                NavigationLink (destination: Prikaz1030Alg40View()) {
                                    MyViewBuilder(title: Text("56"), content: Text("Алгоритм 40 «Травма позвоночника»")).buildNavigationText()
                                }
                            }
                            .padding(5)
                        }
                    }
                    if isTextExpanded2 {
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("56"), content: Text("""
                                **Мероприятия**:
                                """)).buildGrayInText()
                                MyViewBuilder(title: Text("56"), content: Text("""
                                - сбор анамнеза;
                                - осмотр и пальпация позвоночника;
                                - определение подвижности позвоночника;
                                - оценка симптомов натяжения;
                                - оценка силы мышц;
                                - оценка функции тазовых органов;
                                - оценка очаговых симптомов.
                                """)).buildGrayInHiddenText()
                            }
                            .padding(5)
                        }
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("56"), content: Text("""
                                **Неотложная помощь**:
                                """)).buildGrayInText()
                                MyViewBuilder(title: Text("56"), content: Text("""
                                - **метамизол 50% – 2-4 мл** в/в с 1 мл **1% раствора дифенгидрамина** или **кеторолак 30 мг (3% - 1 мл)** в/м или в/в, или **трамадол 50-100 мг** (1-2 мл 5% раствора) в/м или в/в;
                                - **при интенсивной боли** дополнительно **диазепам 5-10 мг** (1-2 мл 0,5% раствора) в/м.
                                """)).buildGrayInHiddenText()
                            }
                            .padding(5)
                        }
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("56"), content: Text("""
                                **Выраженный болевой синдром**:
                                """)).buildGrayInText()
                                MyViewBuilder(title: Text("56"), content: Text("""
                                - нарушение функции тазовых органов.
                                - компрессия спино-мозговых корешков (пара- или тетрапарезы).
                                """)).buildGrayInHiddenText()
                                HStack {
                                    
                                    MyViewBuilder(title: Text("56"), content: Text("""
                                **Да**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded3)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded3.toggle()
                                                
                                                if isTextExpanded4 == true {
                                                    isTextExpanded4.toggle()
                                                }
                                                
                                            }
                                        }
                                    MyViewBuilder(title: Text("56"), content: Text("""
                                **Нет**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded4)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded4.toggle()
                                                if isTextExpanded3 == true {
                                                    isTextExpanded3.toggle()
                                                }
                                            }
                                        }
                                    
                                }
                            }
                            .padding(5)
                        }
                    }
                    if isTextExpanded3 {
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("56"), content: Text("""
                                **Доставка в стационар** по профилю основного заболевания
                                """)).buildGrayText()
                    }
                    if isTextExpanded4 {
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("56"), content: Text("""
                                **Рекомендовать дообследование** и лечение у невролога в поликлинике по месту жительства
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
                    Text("Алгоритм 56")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Вертеброгенный болевой синдром (боль в позвоночнике, иррадиация, тоническое напряжение мышц)»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg56"), title: "Алгоритм 56")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}

#Preview {
    Prikaz1030Alg56View()
}
