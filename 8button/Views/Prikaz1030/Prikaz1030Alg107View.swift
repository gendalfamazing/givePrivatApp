//
//  Prikaz1030Alg7View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg7View: View {
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
                    MyViewBuilder(title: Text("7"), content: Text("""
                    **Осуществлять основные реанимационные мероприятия** (ИВЛ мешком Амбу, закрытый массаж сердца).
                    **Интубация трахеи** (комбитюб, ларингиальная маска).
                    **Венозный доступ**.
                    **ЭКГ** (подтвердить отсутствие электрической активности **не менее чем в двух отведениях**).
                    """)).buildGrayText()
                    Image(systemName: "arrow.down")
                        
                    
                    MyViewBuilder(title: Text("7"), content: Text("""
                    **Наружная ЭКС с одновременным введением лекарств** (при наличии соответствующего оборудования)
                    """)).buildGrayText()
                    Image(systemName: "arrow.down")
                        
                    
                    MyViewBuilder(title: Text("7"), content: Text("""
                    **Атропин 1 мг** (1 мл 0,1% раствора) в/в струйно (но **не более 3-х раз**), чередовать с **эпинефрином 1 мг** (1 мл 0,18% раствора) в/в струйно **быстро каждые 3-5 минут**.
                    **Повторная запись ЭКГ**.
                    """)).buildGrayText()
                    Image(systemName: "arrow.down")
                        
                    
                    
                    
                    MyViewBuilder(title: Text("7"), content: Text("""
                    **Искать устранимую причину и попытаться её купировать**:
                    - **гипоксия** (оксигенотерапия под контролем SpO2);
                    - **ацидоз** (алкогольное отравление тяжелое, **длительная СЛР более 20 мин**) – **8,4 %** раствор **натрия гидрокарбоната в/в по 20 мл**;
                    - **передозировка лекарственных средств** (при уточнении введение имеющихся антидотов);
                    - **гипотермия** (согревание теплыми инфузионными растворами в/в, внешнее обогревание).
                    """)).buildGrayText()
                    Image(systemName: "arrow.down")
                        
                    
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack (spacing: 5){
                            MyViewBuilder(title: Text("7"), content: Text("""
                    **Достигнутый эффект**:
                    """)).buildGrayInText()
                            
                            
                            MyViewBuilder(title: Text("7"), content: Text("""
                        Асистолия
                        """)).buildBlue591Text(isTextExpanded: isTextExpanded1)
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
                            if isTextExpanded1 {
                                MyViewBuilder(title: Text("6"), content: Text("**Констатация биологической смерти** при неэффективности СЛР")).buildGrayInHiddenText()
                            }
                            MyViewBuilder(title: Text("7"), content: Text("""
                        Появление эффективного ритма
                        """)).buildBlue591Text(isTextExpanded: isTextExpanded2)
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
                            if isTextExpanded2 {
                                NavigationLink (destination: Prikaz1030Alg9View()) {
                                    MyViewBuilder(title: Text("7"), content: Text("Алгоритм 9 «Постреанимационная поддержка», устранение вновь выявленных причин")).buildNavigationText()
                                }
                            }
                            MyViewBuilder(title: Text("7"), content: Text("""
                        Электрическая активность (фибрилляция)
                        """)).buildBlue591Text(isTextExpanded: isTextExpanded3)
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
                            if isTextExpanded3 {
                                NavigationLink (destination: Prikaz1030Alg6View()) {
                                    MyViewBuilder(title: Text("7"), content: Text("Алгоритм 6 «Фибрилляция желудочков, желудочковая тахикардия с острой сердечной недостаточностью»")).buildNavigationText()
                                }
                            }
                            
                            
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
                    Text("Алгоритм 7")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Асистолия»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg7"), title: "Алгоритм 7")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}



#Preview {
    Prikaz1030Alg7View()
}
