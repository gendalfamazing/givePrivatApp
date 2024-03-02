//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg52View: View {
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
                            MyViewBuilder(title: Text("52"), content: Text("""
                            **Неадекватное поведение в связи с возможным психическим расстройством**
                            """)).buildGrayInText()
                            
                        }
                        .padding(5)
                    }
                    Image(systemName: "arrow.down")
                       
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack {
                            MyViewBuilder(title: Text("52"), content: Text("""
                            **Подозрение на острый психоз.
                            Оценка степени тяжести.**
                            """)).buildGrayInText()
                            MyViewBuilder(title: Text("52"), content: Text("""
                            1. **Непосредственная опасность для самого пациента или окружающих**
                            2. **Возможен существенный вред здоровью пациента вследствие ухудшения психического состояния** если больной не получит психиатрической помощи
                            3. **Беспомощность пациента**, т.е. неспособность самостоятельно удовлетворять основные жизненные потребности
                            """)).buildGrayInHiddenText()
                            HStack {
                                
                                MyViewBuilder(title: Text("52"), content: Text("""
                            **Совпадения есть**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded1)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded1.toggle()
                                            
                                            if isTextExpanded2 == true {
                                                isTextExpanded2.toggle()
                                            }
                                            
                                            if isTextExpanded71 == true {
                                                isTextExpanded71.toggle()
                                            }
                                            if isTextExpanded1 == false && isTextExpanded2 == false {
                                                isTextExpanded71 = true
                                            }
                                        }
                                    }
                                MyViewBuilder(title: Text("52"), content: Text("""
                            **Совпадений нет**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded2)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded2.toggle()
                                            
                                            if isTextExpanded1 == true {
                                                isTextExpanded1.toggle()
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
                           
                        MyViewBuilder(title: Text("52"), content: Text("""
                        При **отказе больного от добровольной госпитализации** любой врач может сделать **заявление о недобровольном психиатрическом освидетельствовании** в установленном законом порядке
                        """)).buildGrayText()
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("52"), content: Text("""
                        **Доставка в стационар по профилю основного заболевания** (**вопрос о недобровольной госпитализации решается после психиатрического освидетельствования** больного в установленном законодательством порядке)
                        """)).buildGrayText()
                    }
                    if isTextExpanded2 {
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("52"), content: Text("""
                        **Выявлены нетяжелые психические расстройства**, не представляющие опасности для больного и окружающих
                        """)).buildGrayText()
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("52"), content: Text("""
                        **Рекомендации добровольной госпитализации** или **направление на консультацию к врачу-психиатру** по месту жительства (**актив**)
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
                            MyViewBuilder(title: Text("52"), content: Text("""
                            **Примечание.**
                            """)).buildGrayInText()
                            MyViewBuilder(title: Text("52"), content: Text("""
                                    1. По показаниям **симптоматическая терапия**.
                                    2. **Использование психотропных средств** на догоспитальном этапе **может затруднить диагностику и принятие адекватного решения о необходимости госпитализации** в приемном отделении стационара.
                                    """)).buildGrayInHiddenText()
                        }
                        .padding(5.0)
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
                    Text("Алгоритм 52")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Острый реактивный психоз»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg52"), title: "Алгоритм 52")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}

#Preview {
    Prikaz1030Alg52View()
}
