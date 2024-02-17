//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg72View: View {
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
                            
                            MyViewBuilder(title: Text("72"), content: Text("""
                            **Анамнез и осмотр**
                            """)).buildGrayInText()
                            
                            
                        }
                        .padding(5)
                    }
                    
                    Image(systemName: "arrow.down")
                       
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack {
                            
                            HStack {
                                
                                MyViewBuilder(title: Text("72"), content: Text("""
                            **Ожоги**
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
                                MyViewBuilder(title: Text("72"), content: Text("""
                            **Травма глаза, век, конъюнктивы**
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
                                
                                HStack {
                                    
                                    MyViewBuilder(title: Text("72"), content: Text("""
                                **Электроофтальмия**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded3)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded3.toggle()
                                                if isTextExpanded2 == true {
                                                    isTextExpanded2.toggle()
                                                }
                                                if isTextExpanded4 == true {
                                                    isTextExpanded4.toggle()
                                                }
                                            }
                                        }
                                    MyViewBuilder(title: Text("72"), content: Text("""
                                **Химический**
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
                    if isTextExpanded2{
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                
                                MyViewBuilder(title: Text("72"), content: Text("""
                                **Неотложная помощь**
                                """)).buildGrayInText()
                                MyViewBuilder(title: Text("72"), content: Text("""
                                1. **Удалить поверхностно располагающиеся инородные тела**.
                                2. **Наложить асептическую повязку**.
                                3. **При болевом синдроме**:
                                - **метамизол в/в 1-2 мл 50%** раствора или
                                - **кеторолак 10-30 мг** в/в (или в/м).
                                """)).buildGrayInHiddenText()
                                
                            }
                            .padding(5)
                        }
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("72"), content: Text("""
                        **Доставка в стационар** по профилю основного заболевания
                        """)).buildGrayText()
                    }
                    if isTextExpanded3{
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                
                                MyViewBuilder(title: Text("72"), content: Text("""
                                **Неотложная помощь**
                                """)).buildGrayInText()
                                MyViewBuilder(title: Text("72"), content: Text("""
                                - **инстилляции 2% раствора лидокаина**
                                - рекомендовать водные примочки.
                                """)).buildGrayInHiddenText()
                                
                            }
                            .padding(5)
                        }
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("72"), content: Text("""
                        **Рекомендовать срочно обратиться к офтальмологу**
                        """)).buildGrayText()
                    }
                    if isTextExpanded4{
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                
                                MyViewBuilder(title: Text("72"), content: Text("""
                                **Неотложная помощь**
                                """)).buildGrayInText()
                                MyViewBuilder(title: Text("72"), content: Text("""
                                1. **Метамизол в/в 1-2 мл 50% раствора** или **кеторолак 10-30 мг** в/в (или в/м).
                                2. Конъюнктивальную полость **обильно промыть раствором 0,9% хлорида натрия**.
                                3. **Инстилляции 0,25% раствора прокаина**.
                                4. **Наложить асептическую повязку**.
                                """)).buildGrayInHiddenText()
                                
                            }
                            .padding(5)
                        }
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("72"), content: Text("""
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
                    Text("Алгоритм 72")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Ожоги и травмы глаза, века, конъюнктивы»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg72"), title: "Алгоритм 72")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}

#Preview {
    Prikaz1030Alg72View()
}
