//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg75View: View {
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
                            
                            MyViewBuilder(title: Text("75"), content: Text("""
                            **Осмотр**:
                            """)).buildGrayInText()
                            MyViewBuilder(title: Text("75"), content: Text("""
                            1. Оценка сознания.
                            2. АД, ЧСС, ЧДД.
                            3. ЭКГ.
                            4. Неврологический осмотр.
                            """)).buildGrayInHiddenText()
                        }
                        .padding(5)
                    }
                    Image(systemName: "arrow.down")
                       
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack {
                            
                            MyViewBuilder(title: Text("75"), content: Text("""
                            **Степень тяжести**:
                            """)).buildGrayInText()
                            HStack{
                                MyViewBuilder(title: Text("75"), content: Text("""
                            **Легкая**
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
                                        }
                                    }
                                MyViewBuilder(title: Text("75"), content: Text("""
                            **Средняя**
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
                                        }
                                    }
                                MyViewBuilder(title: Text("75"), content: Text("""
                            **Тяжелая**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded3)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded3.toggle()
                                            if isTextExpanded1 == true {
                                                isTextExpanded1.toggle()
                                            }
                                            if isTextExpanded2 == true {
                                                isTextExpanded2.toggle()
                                            }
                                        }
                                    }
                            }
                        }
                        .padding(5)
                    }
                    
                    if isTextExpanded1{
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                
                                MyViewBuilder(title: Text("75"), content: Text("""
                                **Клиническая картина**:
                                """)).buildGrayInText()
                                MyViewBuilder(title: Text("75"), content: Text("""
                                - тремор языка, век, рук;
                                - головная боль; бессонница;
                                - небольшая артериальная гипертензия;
                                - синусовая тахикардия, без патологических изменений ЭКГ
                                """)).buildGrayInHiddenText()
                            }
                            .padding(5)
                        }
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                
                                MyViewBuilder(title: Text("75"), content: Text("""
                                **Неотложная помощь**:
                                """)).buildGrayInText()
                                MyViewBuilder(title: Text("75"), content: Text("""
                                1. **Магния сульфат 25% - 5-10 мл** в/м.
                                2. **Пропранолол 20-40 мг** внутрь.
                                3. **Карбамазепин 400 мг** внутрь.
                                """)).buildGrayInHiddenText()
                            }
                            .padding(5)
                        }
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                
                                MyViewBuilder(title: Text("75"), content: Text("""
                                **Рекомендовать**:
                                """)).buildGrayInText()
                                MyViewBuilder(title: Text("75"), content: Text("""
                                - пероральную регидратацию;
                                - обратиться к наркологу.
                                """)).buildGrayInHiddenText()
                            }
                            .padding(5)
                        }
                    }
                    if isTextExpanded2{
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                
                                MyViewBuilder(title: Text("75"), content: Text("""
                                **Клиническая картина**:
                                """)).buildGrayInText()
                                MyViewBuilder(title: Text("75"), content: Text("""
                                - значительное увеличение ЧСС,
                                - снижение тургора кожи,
                                - повышение температуры тела,
                                - повышенная потливость,
                                - нистагм,
                                - возможны судорожные припадки,
                                - дисметаболические изменения ЭКГ
                                """)).buildGrayInHiddenText()
                            }
                            .padding(5)
                        }
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                
                                MyViewBuilder(title: Text("75"), content: Text("""
                                **При развитии судорожного синдрома** см. алгоритм 29 «Судорожный синдром»
                                """)).buildGrayInHiddenText()
                                NavigationLink (destination: Prikaz1030Alg29View()) {
                                    MyViewBuilder(title: Text("75"), content: Text("Алгоритм 29 «Судорожный синдром»")).buildNavigationText()
                                }
                            }
                            .padding(5)
                        }
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                
                                MyViewBuilder(title: Text("75"), content: Text("""
                                **Неотложная помощь**:
                                """)).buildGrayInText()
                                MyViewBuilder(title: Text("75"), content: Text("""
                                1. **Тиамин до 100 мг**, ввести в/венно.
                                2. **Диазепам 10-40 мг** в/м (0,5% р-р 2-8 мл) **по 2 мл через 30 мин до достижения седации** под контролем дыхания и АД.
                                3. **Магния сульфат 5-10 мл 25%** раствора в/в капельно **в 400 мл 5% раствора глюкозы**.
                                4. **Пероральная регидратация** при отсутствии рвоты, **при рвоте – глюкоза 200 мл 5% раствора** в/в, **растворы электролитов 250 мл** в/венно.
                                """)).buildGrayInHiddenText()
                            }
                            .padding(5)
                        }
                        Image(systemName: "arrow.down")
                           
                        
                        
                        MyViewBuilder(title: Text("75"), content: Text("""
                                **Доставка в стационар** по профилю основного заболевания
                                """)).buildGrayText()
                        
                    }
                    if isTextExpanded3{
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                
                                MyViewBuilder(title: Text("75"), content: Text("""
                                **Клиническая картина**:
                                """)).buildGrayInText()
                                MyViewBuilder(title: Text("75"), content: Text("""
                                - угнетение сознания вплоть до делирия,
                                - многократная рвота,
                                - снижение на 20% АД от адаптационного,
                                - одышка,
                                - возможны судорожные припадки,
                                - дисметаболические изменения ЭКГ,
                                - нарушения ритма
                                """)).buildGrayInHiddenText()
                            }
                            .padding(5)
                        }
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                
                                MyViewBuilder(title: Text("75"), content: Text("""
                                **При развитии судорожного синдрома** см. алгоритм 29 «Судорожный синдром»
                                """)).buildGrayInHiddenText()
                                NavigationLink (destination: Prikaz1030Alg29View()) {
                                    MyViewBuilder(title: Text("75"), content: Text("Алгоритм 29 «Судорожный синдром»")).buildNavigationText()
                                }
                            }
                            .padding(5)
                        }
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                
                                MyViewBuilder(title: Text("75"), content: Text("""
                                **Неотложная помощь**:
                                """)).buildGrayInText()
                                MyViewBuilder(title: Text("75"), content: Text("""
                                1. **Тиамин до 100 мг**, ввести в/венно.
                                2. **Диазепам 10-40 мг** (0,5% раствор 2-8 мл) в **10 мл 40% раствора глюкозы в/в медленно до достижения седации** под контролем дыхания и АД.
                                3. **Магния сульфат 5-10 мл 25%** раствора в/в капельно в **400 мл 5% раствора глюкозы**.
                                4. **Глюкоза 400 мл 5% раствора** в/в **с 10 мл калия и магния аспартата**.
                                5. **Растворы электролитов 250 мл** в/венно.
                                
                                **При развитии алкогольного психоза** – алгоритм 62.
                                **При опасных для жизни нарушениях ритма** см. соответсвующие алгоритмы.
                                """)).buildGrayInHiddenText()
                                NavigationLink (destination: Prikaz1030Alg62View()) {
                                    MyViewBuilder(title: Text("75"), content: Text("Алгоритм 62 «Острые психотические расстройства при употреблении психоактивных веществ (ПАВ)»")).buildNavigationText()
                                }
                            }
                            .padding(5)
                        }
                        Image(systemName: "arrow.down")
                           
                        
                        
                        MyViewBuilder(title: Text("75"), content: Text("""
                                **Доставка в стационар** по профилю основного заболевания
                                """)).buildGrayText()
                        
                    }
                    
                    
                    
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
                            MyViewBuilder(title: Text("1"), content: Text("""
                            **Примечание**.
                            """)).buildGrayInText()
                            MyViewBuilder(title: Text("1"), content: Text("""
                                    **При наличии малейших подозрений (данные анамнеза) на ЧМТ – доставка в стационар по профилю**.
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
                    Text("Алгоритм 75")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Алкогольный абстинентный синдром»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg75"), title: "Алгоритм 75")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}

#Preview {
    Prikaz1030Alg75View()
}
