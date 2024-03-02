//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg44View: View {
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
                            MyViewBuilder(title: Text("44"), content: Text("""
                                    **Политравма всегда предполагается**:
                                    """)).buildGrayInText()
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded71.toggle()
                                    }
                                }
                            if isTextExpanded71{
                                MyViewBuilder(title: Text("44"), content: Text("""
                                    - при **смерти** пассажиров или водителя транспортного средства;
                                    - если пострадавшего **выбросило из машины**;
                                    - **деформация транспортного средства превышает 50 см**;
                                    - при аварии на **высокой скорости**;
                                    - при **наезде на пешехода** (велосипедиста);
                                    - при **падении с высоты более 3 м**;
                                    - при **сдавлении**;
                                    - при **взрыве**;
                                    - при **завале сыпучими материалами**.
                                    """)).buildGrayInHiddenText()
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded71.toggle()
                                        }
                                    }
                            }
                        }
                        .padding(5)
                    }
                    Image(systemName: "arrow.down")
                       
                    MyViewBuilder(title: Text("44"), content: Text("""
                            **Временная остановка наружного кровотечения** (пальцевое прижатие, давящая повязка, тугая тампонада раны, в крайнем случае – **жгут**; **при отрывах конечностей – жгут**).
                            **Иммобилизация шейного отдела позвоночника** с фиксацией **на жестких носилках** (R-негативные доски, «ковшовые» носилки, каркасные носилки и т.п.).
                            """)).buildGrayText()
                    Image(systemName: "arrow.down")
                       
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack {
                            HStack {
                                MyViewBuilder(title: Text("44"), content: Text("""
                                **Признаки ОДН**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded1)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded1.toggle()
                                            
                                            if isTextExpanded2 == true {
                                                isTextExpanded2.toggle()
                                            }
                                            
                                        }
                                    }
                                MyViewBuilder(title: Text("44"), content: Text("""
                                **Признаки ГШ**
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
                            if isTextExpanded1{
                                Image(systemName: "arrow.down")
                                   
                                
                                MyViewBuilder(title: Text("44"), content: Text("""
                                        **Клинические признаки острой дыхательной недостаточности**:
                                        """)).buildGrayInText()
                                MyViewBuilder(title: Text("44"), content: Text("""
                                        - ЧДД **более 40 или менее 8** в 1 мин;
                                        - **SpО2 менее 90%** при дыхании атмосферным воздухом.
                                        """)).buildGrayInHiddenText()
                                
                                NavigationLink (destination: Prikaz1030Alg3View()) {
                                    MyViewBuilder(title: Text("44"), content: Text("Алгоритм 3 «Острая дыхательная недостаточность»")).buildNavigationText()
                                }
                                
                            }
                            if isTextExpanded2{
                                Image(systemName: "arrow.down")
                                   
                                
                                MyViewBuilder(title: Text("44"), content: Text("""
                                    **Клинические признаки гиповолемического шока**:
                                    """)).buildGrayInText()
                                MyViewBuilder(title: Text("44"), content: Text("""
                                    - холодная, бледная, влажная кожа;
                                    - **САД менее 90 мм.рт.ст.**,
                                    - **ЧСС более 100** в 1 мин,
                                    - шоковый индекс **более 0,7**;
                                    - **SpО2 менее 90%**.
                                    """)).buildGrayInHiddenText()
                                
                                NavigationLink (destination: Prikaz1030Alg5View()) {
                                    MyViewBuilder(title: Text("44"), content: Text("Алгоритм 5 «Гиповолемический шок»")).buildNavigationText()
                                }
                                
                            }
                        }
                        .padding(5)
                    }
                    Image(systemName: "arrow.down")
                       
                    MyViewBuilder(title: Text("44"), content: Text("""
                            **Оказание медицинской помощи на месте и в пути следования**
                            """)).buildGrayText()
                    
                    Image(systemName: "arrow.down")
                       
                    MyViewBuilder(title: Text("44"), content: Text("""
                            Положение тела **на боку**, **установка воздуховода**, при необходимости – **интубация трахеи**.
                            Установка периферического **катетера наибольшего диаметра** (при необходимости 2-х и более);
                            **Пульсоксиметрия**.
                            """)).buildGrayText()
                    
                    Image(systemName: "arrow.down")
                       
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack {
                            MyViewBuilder(title: Text("44"), content: Text("""
                            **Неотложная помощь**:
                            """)).buildGrayInText()
                            MyViewBuilder(title: Text("44"), content: Text("""
                            1.**Инфузионная терапия** под контролем АД (**САД ≥ 90 мм.рт.ст.**).
                            2.**Оксигенотерапия** (под контролем SpО2 – **не менее 90%**).
                            3.**Обезболивание** анальгетиками в/в :
                            - ненаркотическими (**1 мл 3% раствора кеторолака**, **1-2 мл 5% раствора трамадола**)
                            - наркотическими (**1 мл 0,005% раствора фентанила**, **1 мл 2% раствора тримеперидина**)
                            4.**При судорожном синдроме и возбуждении – диазепам 2-4 мл 0,5%** раствора в/в.
                            5.**Преднизолон 60-120 мг или метилпреднизолон в дозе 30 мг/кг в/в**.
                            """)).buildGrayInHiddenText()
                            
                        }
                        .padding(5)
                    }
                    Image(systemName: "arrow.down")
                       
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack {
                            MyViewBuilder(title: Text("44"), content: Text("""
                            **Состояние стабилизировалось**:
                            """)).buildGrayInText()
                            MyViewBuilder(title: Text("44"), content: Text("""
                            - отсутствие нарушений сознания;
                            - отсутствие нарушений дыхания;
                            - **САД более 90 мм.рт.ст.**,
                            - **SpО2 ≥90%**.
                            """)).buildGrayInHiddenText()
                            HStack{
                                
                                    MyViewBuilder(title: Text("44"), content: Text("""
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
                                    MyViewBuilder(title: Text("44"), content: Text("""
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
                    if isTextExpanded3{
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("44"), content: Text("""
                        **Доставка в стационар** по профилю основного заболевания (отделение сочетанной травмы)
                        """)).buildGrayText()
                    }
                    if isTextExpanded4{
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("44"), content: Text("""
                        **Доставка в стационар** по профилю основного заболевания (отделение сочетанной травмы), (**ОИТАР** минуя приемное отделение)
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
                    Text("Алгоритм 44")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Политравма»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg44"), title: "Алгоритм 44")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}

#Preview {
    Prikaz1030Alg44View()
}
