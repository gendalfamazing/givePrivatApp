//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg20View: View {
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
    
    @State private var isTextExpanded71 = true
    
    var body: some View {
            ScrollView {
                Spacer()
                VStack {
                    
                            MyViewBuilder(title: Text("20"), content: Text("""
                    **Провести обследование пациента**
                    """)).buildGrayTextCenter()
                        
                    Image(systemName: "arrow.down")
                       
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack {
                            MyViewBuilder(title: Text("19"), content: Text("""
                    **При присоединении клинических признаков гиповолемического шока**:
                    """)).buildGrayInText()
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded71.toggle()
                                        
                                    }
                                }
                            if isTextExpanded71 {
                                Spacer(minLength: 1)
                                MyViewBuilder(title: Text("19"), content: Text("""
                    - холодная, бледная, влажная кожа;
                    - САД менее 90 мм рт. ст.,
                    - ЧСС более 100 в 1 мин,
                    - шоковый индекс более 0,7;
                    - SpО2 менее 90%.
                    """)).buildGrayInHiddenText()
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded71.toggle()
                                            
                                        }
                                    }
                            }
                            HStack {
                                MyViewBuilder(title: Text("20"), content: Text("""
                        **Признаки ГШ есть**
                        """)).buildGreen1Text(isTextExpanded: isTextExpanded1)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded1.toggle()
                                            if isTextExpanded71 == true {
                                                isTextExpanded71.toggle()
                                            }
                                            if isTextExpanded1 == false && isTextExpanded2 == false {
                                                isTextExpanded71.toggle()
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
                                
                                MyViewBuilder(title: Text("20"), content: Text("""
                        **Признаков ГШ нет**
                        """)).buildGreen1Text(isTextExpanded: isTextExpanded2)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded2.toggle()
                                            if isTextExpanded71 == true {
                                                isTextExpanded71.toggle()
                                            }
                                            if isTextExpanded1 == false && isTextExpanded2 == false {
                                                isTextExpanded71.toggle()
                                            }
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
                            }.padding(5).padding(.top, -10)
                        }
                    }
                    if isTextExpanded1 {
                        Image(systemName: "arrow.down")
                           
                        NavigationLink (destination: Prikaz1030Alg5View()) {
                            MyViewBuilder(title: Text("20"), content: Text("Алгоритм 5 «Гиповолемический шок»")).buildNavigationText()
                        }
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                HStack {
                                    MyViewBuilder(title: Text("20"), content: Text("""
                            Тромбоз **артерий**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded3)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded3.toggle()
                                                
                                                if isTextExpanded4 == true {
                                                    isTextExpanded4.toggle()
                                                }
                                            }
                                        }
                                    
                                    MyViewBuilder(title: Text("20"), content: Text("""
                            Тромбоз **глубоких вен**
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
                    if isTextExpanded2 {
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                HStack {
                                    MyViewBuilder(title: Text("20"), content: Text("""
                            Тромбоз **артерий**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded3)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded3.toggle()
                                                
                                                if isTextExpanded4 == true {
                                                    isTextExpanded4.toggle()
                                                }
                                            }
                                        }
                                    
                                    MyViewBuilder(title: Text("20"), content: Text("""
                            Тромбоз **глубоких вен**
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
                        MyViewBuilder(title: Text("""
                                                  **Клинические признаки**:
                                                  """),
                                      content: Text("""
                                                    - **Острая боль** в конечности.
                                                    - **Бледность и мраморный оттенок** кожных покровов.
                                                    - **Исчезновение чувствительности** на конечности.
                                                    - **Понижение местной кожной температуры**.
                                                    - **Исчезновение пульсации** периферических артерий.
                                                    """)).buildGrayInAndHiddenBlock()
                        
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("20"), content: Text("""
                        **Венозный доступ (не на пораженной конечности)**, ввести:
                        
                        - **1 мл 1% раствора морфина** или **1 мл 2% раствора тримеперидина** в/в;
                        - в/в **раствор дротаверина 2 мл с 1 мл 1% раствора дифенгидрамина**;
                        - п/к **5000-10000 ЕД гепарина**;
                        - в/в **400 мл раствора декстрана/натрия хлорида** или **5% раствора гидроксиэтилкрахмала** или **0,9% раствора натрия хлорида**.
                        
                        **Иммобилизация конечности, положение лежа**.
                        """)).buildGrayText()
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("19"), content: Text("""
                        **Доставка в стационар** по профилю основного заболевания
                        """)).buildGrayText()
                    }
                    if isTextExpanded4 {
                        Image(systemName: "arrow.down")
                        MyViewBuilder(title: Text("""
                                                  **Клинические признаки**:
                                                  """),
                                      content: Text("""
                                                    - **Острая боль** в конечности.
                                                    - **Отёчность мягких тканей** и **повышение местной кожной температуры.**
                                                    - **Повышение общей температуры**.
                                                    - **Багрово-синюшная окраска** конечности.
                                                    - **Усиление поверхностного венозного рисунка**.
                                                    - **Пульсация периферических артерий ослабевает**.
                                                    """)).buildGrayInAndHiddenBlock()
                        
                        Image(systemName: "arrow.down")
                        
                        
                                
                                MyViewBuilder(title: Text("20"), content: Text("""
                        **Ввести**:
                        
                        - **1мл 1% раствора морфина** или **1 мл 2% раствора тримеперидина** в/в;
                        - в/в **раствор дротаверина 2 мл с 1 мл 1% раствора дифенгидрамина**;
                        - п/к **5000-10000 ЕД гепарина**;
                        
                        **Наложить на конечность тугую повязку. Иммобилизация, возвышенное положение конечности**.
                        """)).buildGrayText()
                           
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("19"), content: Text("""
                        **Доставка в стационар** по профилю основного заболевания
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
                    Text("Алгоритм 20")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Острый тромбоз артерий и глубоких вен»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg20"), title: "Алгоритм 20")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}

#Preview {
    Prikaz1030Alg20View()
}
