//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg21View: View {
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
    
    var body: some View {
        NavigationStack {
            ScrollView {
                Spacer()
                VStack {
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack (spacing:1){
                            MyViewBuilder(title: Text("21"), content: Text("""
                    **Анамнез, осмотр, контроль АД, ЭКГ**
                    """)).buildGrayInText()
                            HStack {
                                MyViewBuilder(title: Text("21"), content: Text("""
                        **Осложненный ГК**
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
                                
                                MyViewBuilder(title: Text("21"), content: Text("""
                        **Неосложненный ГК**
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
                            VStack (spacing:1){
                                MyViewBuilder(title: Text("21"), content: Text("""
                        **Осложнённый**:
                        """)).buildGrayInText()
                                MyViewBuilder(title: Text("21"), content: Text("""
                                - острое расслоение аорты;
                                - острый ИМ;
                                - тяжёлое носовое кровотечение;
                                - гипертоническая энцефалопатия;
                                - ОНМК;
                                - субарахноидальное кровоизлияние;
                                - феохромоцитома;
                                - черепно-мозговая травма;
                                - ОЛЖН.
                                """)).buildGrayInHiddenText()
                            }
                        }
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("21"), content: Text("""
                        **Быстрое снижение АД в пределах часа на 15-25 % под контролем АД**:
                        
                        - **ОИМ** : см. алгоритм 15 **«Острый коронарный синдром»**;
                        - **Гипертоническая энцефалопатия** :
                        **фуросемид 1 % – 2-4 мл**, **магния сульфат 25 % – 10 мл** в/в;
                        
                        - **ОЛЖН** :
                        **нитроглицерин 0,5 мг в/в** (изосорбид динитрат 0,1 % – 10 мл в 200 мл 0,9 % раствора натрия хлорида), **морфин 1 % – 1 мл** в/в, **фуросемид 1 % – 2-4 мл** в/в, **каптоприл 25-50 мг**;
                        
                        - **ОНМК, субарахноидальное кровоизлияние, травма черепа** :
                        **5 мл 3% раствора эмоксипина** в/в струйно,
                        в зависимости от цифр АД – **клонидин 0,01 % – 1 мл** в/в, **магния сульфат 25 % – 10 мл** в/в, **каптоприл 25-50 мг**,
                        при нарастании отёка мозга – **фуросемид 1 % – 2 мл** в/в;
                        
                        - **Феохромоцитома** : **дроперидол 0,25 % – 2-4 мл** в/в;
                        - **Носовое кровотечение** : **тампонада носа**,
                        в зависимости от цифр АД – **клонидин 0,01 % – 1 мл** в/в, **магния сульфат 25 % – 10 мл** в/в, **фуросемид 1 % – 2мл** в/в, **каптоприл 25-50 мг** (под язык).
                        """)).buildGrayInHiddenText()
                                NavigationLink (destination: Prikaz1030Alg15View()) {
                                    MyViewBuilder(title: Text("21"), content: Text("Алгоритм 15 «Острый коронарный синдром»")).buildNavigationText()
                                }
                            }
                            .padding(5)
                        }
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("21"), content: Text("""
                        **Экстренная доставка в стационар** по профилю основного заболевания
                        """)).buildGrayText()
                    }
                    if isTextExpanded2{
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                HStack {
                                    MyViewBuilder(title: Text("21"), content: Text("""
                            **Гипокинетический**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded3)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded3.toggle()
                                                
                                                if isTextExpanded1 == true {
                                                    isTextExpanded1.toggle()
                                                }
                                                
                                                if isTextExpanded4 == true {
                                                    isTextExpanded4.toggle()
                                                }
                                            }
                                        }
                                    
                                    MyViewBuilder(title: Text("21"), content: Text("""
                            **Гиперкинетическй**
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
                                                
                                            }
                                        }
                                }
                            }
                            .padding(5)
                        }
                    }
                    if isTextExpanded3 {
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("21"), content: Text("""
                        **Ингибиторы АПФ (каптоприл 25- 50 мг)**, при наличии **признаков застоя** мочегонные в/в **(фуросемид 2 мл)**
                        """)).buildGrayText()
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("21"), content: Text("""
                        **При длительном лечении, отсутствии эффекта от терапии – доставка в стационар**
                        """)).buildGrayText()
                    }
                    if isTextExpanded4 {
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("21"), content: Text("""
                        **β-блокаторы (пропранолол 0,04 – 1-2 таб.**, или **пропранолол 2-3 мг** в/в), **ингибиторы АПФ**, **клонидин 0,01% – 1 мл** в/в, при **эмоциональной лабильности диазепам 0,25 % – 1-2 мл** в/в
                        """)).buildGrayText()
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("21"), content: Text("""
                        **Амбулаторное лечение**
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
                    Text("Алгоритм 21")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Гипертонический криз»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg21"), title: "Алгоритм 21")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}

#Preview {
    Prikaz1030Alg21View()
}
