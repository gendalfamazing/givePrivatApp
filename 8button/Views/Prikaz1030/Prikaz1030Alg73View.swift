//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg73View: View {
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
                            
                            MyViewBuilder(title: Text("73"), content: Text("""
                            **Анамнез и осмотр**:
                            """)).buildGrayInText()
                        
                            
                            VStack {
                                
                                MyViewBuilder(title: Text("73"), content: Text("""
                            **Абсцесс и флегмона, острый дакриоаденит и дакриоцистит**
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
                                            if isTextExpanded5 == true {
                                                isTextExpanded5.toggle()
                                            }
                                            if isTextExpanded6 == true {
                                                isTextExpanded6.toggle()
                                            }
                                            if isTextExpanded7 == false {
                                                isTextExpanded7.toggle()
                                            }
                                            if isTextExpanded8 == true {
                                                isTextExpanded8.toggle()
                                            }
                                            if isTextExpanded1 == false && isTextExpanded2 == false && isTextExpanded3 == false && isTextExpanded4 == false && isTextExpanded5 == false && isTextExpanded6 == false   {
                                                isTextExpanded8 = false
                                                isTextExpanded7 = false
                                            }
                                        }
                                    }
                                MyViewBuilder(title: Text("73"), content: Text("""
                            **Острый иридоциклит**
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
                                            if isTextExpanded5 == true {
                                                isTextExpanded5.toggle()
                                            }
                                            if isTextExpanded6 == true {
                                                isTextExpanded6.toggle()
                                            }
                                            if isTextExpanded7 == false {
                                                isTextExpanded7.toggle()
                                            }
                                            if isTextExpanded8 == true {
                                                isTextExpanded8.toggle()
                                            }
                                            if isTextExpanded1 == false && isTextExpanded2 == false && isTextExpanded3 == false && isTextExpanded4 == false && isTextExpanded5 == false && isTextExpanded6 == false   {
                                                isTextExpanded8 = false
                                                isTextExpanded7 = false
                                            }
                                        }
                                    }
                                MyViewBuilder(title: Text("73"), content: Text("""
                            **Острый гнойный кератит (язва роговицы)**
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
                                            if isTextExpanded4 == true {
                                                isTextExpanded4.toggle()
                                            }
                                            if isTextExpanded5 == true {
                                                isTextExpanded5.toggle()
                                            }
                                            if isTextExpanded6 == true {
                                                isTextExpanded6.toggle()
                                            }
                                            if isTextExpanded7 == false {
                                                isTextExpanded7.toggle()
                                            }
                                            if isTextExpanded8 == true {
                                                isTextExpanded8.toggle()
                                            }
                                            if isTextExpanded1 == false && isTextExpanded2 == false && isTextExpanded3 == false && isTextExpanded4 == false && isTextExpanded5 == false && isTextExpanded6 == false   {
                                                isTextExpanded8 = false
                                                isTextExpanded7 = false
                                            }
                                        }
                                    }
                                MyViewBuilder(title: Text("73"), content: Text("""
                            **Острый приступ глаукомы**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded4)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded4.toggle()
                                            if isTextExpanded1 == true {
                                                isTextExpanded1.toggle()
                                            }
                                            if isTextExpanded3 == true {
                                                isTextExpanded3.toggle()
                                            }
                                            if isTextExpanded2 == true {
                                                isTextExpanded2.toggle()
                                            }
                                            if isTextExpanded5 == true {
                                                isTextExpanded5.toggle()
                                            }
                                            if isTextExpanded6 == true {
                                                isTextExpanded6.toggle()
                                            }
                                            if isTextExpanded7 == false {
                                                isTextExpanded7.toggle()
                                            }
                                            if isTextExpanded8 == true {
                                                isTextExpanded8.toggle()
                                            }
                                            if isTextExpanded1 == false && isTextExpanded2 == false && isTextExpanded3 == false && isTextExpanded4 == false && isTextExpanded5 == false && isTextExpanded6 == false   {
                                                isTextExpanded8 = false
                                                isTextExpanded7 = false
                                            }
                                        }
                                    }
                                MyViewBuilder(title: Text("73"), content: Text("""
                            **Острый эписклерит**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded5)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded5.toggle()
                                            if isTextExpanded1 == true {
                                                isTextExpanded1.toggle()
                                            }
                                            if isTextExpanded3 == true {
                                                isTextExpanded3.toggle()
                                            }
                                            if isTextExpanded4 == true {
                                                isTextExpanded4.toggle()
                                            }
                                            if isTextExpanded2 == true {
                                                isTextExpanded2.toggle()
                                            }
                                            if isTextExpanded6 == true {
                                                isTextExpanded6.toggle()
                                            }
                                            if isTextExpanded7 == true {
                                                isTextExpanded7.toggle()
                                            }
                                            if isTextExpanded8 == false {
                                                isTextExpanded8.toggle()
                                            }
                                            if isTextExpanded1 == false && isTextExpanded2 == false && isTextExpanded3 == false && isTextExpanded4 == false && isTextExpanded5 == false && isTextExpanded6 == false   {
                                                isTextExpanded8 = false
                                                isTextExpanded7 = false
                                            }
                                        }
                                    }
                                MyViewBuilder(title: Text("73"), content: Text("""
                            **Конъюнктивит**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded6)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded6.toggle()
                                            if isTextExpanded1 == true {
                                                isTextExpanded1.toggle()
                                            }
                                            if isTextExpanded3 == true {
                                                isTextExpanded3.toggle()
                                            }
                                            if isTextExpanded4 == true {
                                                isTextExpanded4.toggle()
                                            }
                                            if isTextExpanded5 == true {
                                                isTextExpanded5.toggle()
                                            }
                                            if isTextExpanded2 == true {
                                                isTextExpanded2.toggle()
                                            }
                                            if isTextExpanded7 == true {
                                                isTextExpanded7.toggle()
                                            }
                                            if isTextExpanded8 == false {
                                                isTextExpanded8.toggle()
                                            }
                                            if isTextExpanded1 == false && isTextExpanded2 == false && isTextExpanded3 == false && isTextExpanded4 == false && isTextExpanded5 == false && isTextExpanded6 == false   {
                                                isTextExpanded8 = false
                                                isTextExpanded7 = false
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
                                
                                MyViewBuilder(title: Text("73"), content: Text("""
                                **Клиническая картина**:
                                """)).buildGrayInText()
                                MyViewBuilder(title: Text("73"), content: Text("""
                                Боль и отек, гиперемия в области слезной железы, возможно смещение глазного яблока, ограничение его подвижности
                                """)).buildGrayInHiddenText()
                            }
                            .padding(5)
                        }
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                
                                MyViewBuilder(title: Text("73"), content: Text("""
                                **Неотложная помощь**:
                                """)).buildGrayInText()
                                MyViewBuilder(title: Text("73"), content: Text("""
                                - **глюкоза 40% раствор по 20 мл** в/в;
                                - **фуросемид 1% 1-2 мл** в/м.
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
                                
                                MyViewBuilder(title: Text("73"), content: Text("""
                                **Клиническая картина**:
                                """)).buildGrayInText()
                                MyViewBuilder(title: Text("73"), content: Text("""
                                Боль в глазу, слезотечение, светобоязнь, снижение зрения, перикорнеальная инъекция, изменение цвета радужки, сужение зрачка, зрачок может иметь неправильную форму
                                """)).buildGrayInHiddenText()
                            }
                            .padding(5)
                        }
                    }
                    if isTextExpanded3{
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                
                                MyViewBuilder(title: Text("73"), content: Text("""
                                **Клиническая картина**:
                                """)).buildGrayInText()
                                MyViewBuilder(title: Text("73"), content: Text("""
                                Светобоязнь, слезотечение, боль в глазу, покраснение конъюнктивы вокруг роговицы, инфильтраты роговицы, язва роговицы
                                """)).buildGrayInHiddenText()
                            }
                            .padding(5)
                        }
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                
                                MyViewBuilder(title: Text("73"), content: Text("""
                                **Неотложная помощь**:
                                """)).buildGrayInText()
                                MyViewBuilder(title: Text("73"), content: Text("""
                                1. **Инстилляции 0,5% раствора прокаина**;
                                - **при выраженных болях метамизол 50% 1-2 мл** в/в или **кеторолак 10-30 мг** в/в (или в/м).
                                2. **Промывание конъюнктивальной полости 0,9% раствором хлорида натрия**.
                                """)).buildGrayInHiddenText()
                            }
                            .padding(5)
                        }
                    }
                    if isTextExpanded4{
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                
                                MyViewBuilder(title: Text("73"), content: Text("""
                                **Клиническая картина**:
                                """)).buildGrayInText()
                                MyViewBuilder(title: Text("73"), content: Text("""
                                Резкая боль в глазу, тошнота (иногда рвота), отек век, застойная инъекция глазного яблока, отек роговицы, зрачок широкий, реакция на свет отсутствует, зрение резко снижено, глазное яблоко при пальпации болезненное, твердое
                                """)).buildGrayInHiddenText()
                            }
                            .padding(5)
                        }
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                
                                MyViewBuilder(title: Text("73"), content: Text("""
                                **Неотложная помощь**:
                                """)).buildGrayInText()
                                MyViewBuilder(title: Text("73"), content: Text("""
                                1. **Фуросемид 1% 2-4 мл** в/в.
                                2. **При выраженном болевом синдроме**:
                                – **трамадол 5% - 1 мл** или **тримепередин 2% - 1 мл** в/в или в/м **с дифенгидрамином 1% - 1 мл**.
                                """)).buildGrayInHiddenText()
                            }
                            .padding(5)
                        }
                    }
                    if isTextExpanded5{
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                
                                MyViewBuilder(title: Text("73"), content: Text("""
                                **Клиническая картина**:
                                """)).buildGrayInText()
                                MyViewBuilder(title: Text("73"), content: Text("""
                                Ограниченная припухлость красно-фиолетового цвета на склере, чаще с 2 сторон
                                """)).buildGrayInHiddenText()
                            }
                            .padding(5)
                        }
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                
                                MyViewBuilder(title: Text("73"), content: Text("""
                                **Неотложная помощь**:
                                """)).buildGrayInText()
                                MyViewBuilder(title: Text("73"), content: Text("""
                                - **метамизол 50% раствор 1 - 2 мл** в/в или **кеторолак 10-30 мг** в/в (в/м);
                                - **преднизолон 30 мг** или **дексаметазон 4 мг** в/м.
                                """)).buildGrayInHiddenText()
                            }
                            .padding(5)
                        }
                    }
                    if isTextExpanded6{
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                
                                MyViewBuilder(title: Text("73"), content: Text("""
                                **Клиническая картина**:
                                """)).buildGrayInText()
                                MyViewBuilder(title: Text("73"), content: Text("""
                                Резь в глазах, светобоязнь, слезотечение, отек век, отек и гиперемия конъюнктивы, слизисто-гнойное или гнойное отделяемое
                                """)).buildGrayInHiddenText()
                            }
                            .padding(5)
                        }
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                
                                MyViewBuilder(title: Text("73"), content: Text("""
                                **Неотложная помощь**:
                                """)).buildGrayInText()
                                MyViewBuilder(title: Text("73"), content: Text("""
                                Пациенту **рекомендовать частые** (через каждые 2 ч) **инстилляции 20-30% раствора сульфацетамида**
                                """)).buildGrayInHiddenText()
                            }
                            .padding(5)
                        }
                    }
                    
                    if isTextExpanded7{
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("73"), content: Text("""
                        **Доставка в стационар** по профилю основного заболевания
                        """)).buildGrayText()
                    }
                    if isTextExpanded8{
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("73"), content: Text("""
                        **Рекомендовать срочно обратиться к офтальмологу**
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
                    Text("Алгоритм 73")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Заболевания глаза, века»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg73"), title: "Алгоритм 73")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}

#Preview {
    Prikaz1030Alg73View()
}
