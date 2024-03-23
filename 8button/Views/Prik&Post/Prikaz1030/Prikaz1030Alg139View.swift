//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg39View: View {
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
                    MyViewBuilder(title: Text("38"), content: Text("""
                    Сбор анамнеза, уточнение травматогенеза. Обследование.
                    **Выявление повреждений головы и шеи** (ушибы, ссадины, раны, переломы).
                    **Исключение политравмы**.
                    """)).buildGrayText()
                    Image(systemName: "arrow.down")
                       
                    MyViewBuilder(title: Text("38"), content: Text("""
                    **Иммобилизация шейного отдела позвоночника**.
                    **Обеспечение проходимости дыхательных путей**.
                    **Оценка основных витальных функций** (сознания, АД, ЧСС, состояние кожных покровов, SpO2).
                    """)).buildGrayText()
                    Image(systemName: "arrow.down")
                       
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack {
                            MyViewBuilder(title: Text("38"), content: Text("""
                            **Определение степени тяжести ЧМТ**:
                            """)).buildGrayInText().padding(-5)
                            
                            HStack {
                                MyViewBuilder(title: Text("38"), content: Text("""
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
                                            if isTextExpanded4 == true {
                                                isTextExpanded4.toggle()
                                            }
                                            
                                            
                                        }
                                    }
                                MyViewBuilder(title: Text("38"), content: Text("""
                                **Средняя**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded2)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded2.toggle()
                                            if isTextExpanded4 == false {
                                                isTextExpanded4.toggle()
                                            }
                                            if isTextExpanded1 == false && isTextExpanded2 == false && isTextExpanded3 == false{
                                                isTextExpanded4.toggle()
                                            }
                                            if isTextExpanded1 == true {
                                                isTextExpanded1.toggle()
                                            }
                                            if isTextExpanded3 == true {
                                                isTextExpanded3.toggle()
                                            }
                                            
                                        }
                                    }
                                MyViewBuilder(title: Text("38"), content: Text("""
                                **Тяжелая**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded3)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded3.toggle()
                                            if isTextExpanded4 == false {
                                                isTextExpanded4.toggle()
                                            }
                                            if isTextExpanded1 == false && isTextExpanded2 == false && isTextExpanded3 == false{
                                                isTextExpanded4.toggle()
                                            }
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
                        
                                MyViewBuilder(title: Text("**Клиническая картина**:"), content: Text("""
                                - **кратовременная потеря сознания**.
                                - **ретроградная амнезия**.
                                - головная боль, тошнота, рвота.
                                """)).buildGrayInAndHiddenBlock()
                           
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("38"), content: Text("""
                        **Положение тела сидя или лёжа на боку**
                        """)).buildGrayText()
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("38"), content: Text("""
                        **Доставка в стационар** по профилю заболевания
                        """)).buildGrayText()
                    }
                    if isTextExpanded2{
                        Image(systemName: "arrow.down")
                        
                                MyViewBuilder(title: Text("**Клиническая картина**:"), content: Text("""
                                - **сопор**.
                                - **анизокория**.
                                - **кровотечение из наружного слухового прохода**.
                                - **гемипарез**.
                                """)).buildGrayInAndHiddenBlock()
                           
                    }
                    if isTextExpanded3{
                        Image(systemName: "arrow.down")
                        
                                MyViewBuilder(title: Text("**Клиническая картина**:"), content: Text("""
                                - **кома**.
                                - **нарушение дыхания**.
                                """)).buildGrayInAndHiddenBlock()
                            
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("38"), content: Text("""
                        **Обеспечить респираторную поддержку**. **Интубация трахеи или комбитьюб** (ларингиальная маска, ИВЛ)
                        """)).buildGrayText()
                    }
                    if isTextExpanded4{
                        Image(systemName: "arrow.down")
                         
                                MyViewBuilder(title: Text("**Неотложная медицинская помощь**:"), content: Text("""
                                – **положение тела на боку**;
                                – **оксигенотерапия** под контролем SpO2 (**не менее 90%**);
                                – **венозный доступ с инфузионной терапией** под контролем АД (**САД не менее 90 мм.рт.ст.**).
                                
                                **Симптоматическая терапия**:
                                
                                - **гипотензивная** (5-10 мл 25% раствора **магния сульфата** в/в);
                                - **противосудорожная** (20-40 мг (0,5% - 4-8 мл) **диазепама** в/в).
                                """)).buildGrayInAndHiddenBlock()
                            
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("38"), content: Text("""
                        **Доставка в стационар** по профилю основного заболевания (**ОИТАР**, минуя приемное отделение)
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
                    Text("Алгоритм 39")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Черепно-мозговая травма»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg39"), title: "Алгоритм 39")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}

#Preview {
    Prikaz1030Alg39View()
}
