//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg53View: View {
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
                            MyViewBuilder(title: Text("53"), content: Text("""
                            **Бригада СНМП должна выехать на вызов в кратчайшие сроки**
                            """)).buildGrayInText()
                            
                        }
                        .padding(5)
                    }
                    Image(systemName: "arrow.down")
                       
                    MyViewBuilder(title: Text("53"), content: Text("""
                    1. **Сообщить врачу оперативного отдела о прибытии на место и указать примерное число пострадавших**.
                    2. **Возглавить и организовать оказание медицинской помощи на месте ДТП**.
                    """)).buildGrayText()
                    Image(systemName: "arrow.down")
                       
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack {
                            MyViewBuilder(title: Text("53"), content: Text("""
                            **По прибытию на место вызова быстро оценить ситуацию**:
                            """)).buildGrayInText()
                            MyViewBuilder(title: Text("53"), content: Text("""
                            - определить **число пострадавших**;
                            - **произвести первичную сортировку** по тяжести состояния.
                            """)).buildGrayInHiddenText()
                        }
                        .padding(5)
                    }
                    Image(systemName: "arrow.down")
                       
                    
                    MyViewBuilder(title: Text("53"), content: Text("""
                    **Сообщить врачу оперативного отдела информацию о количестве пострадавших, в том числе детей, тяжести их состояния и необходимости дополнительных бригад СНМП**
                    """)).buildGrayText()
                    Image(systemName: "arrow.down")
                       
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack {
                            MyViewBuilder(title: Text("53"), content: Text("""
                            **Обследование пострадавшего**:
                            """)).buildGrayInText()
                            MyViewBuilder(title: Text("53"), content: Text("""
                            1. **первичный осмотр** для оценки нарушения витальных функций;
                            2. **углубленный осмотр проводится в салоне автомобиля СНМП**:
                            - **оценить состояние** пострадавшего,
                            - **уровень сознания** (шкала Глазго),
                            - **ЧСС, АД, ЧДД**,
                            - **величину зрачков и их реакцию на свет**;
                            - выяснить **механизм травмы**, события, предшествующие травме;
                            3. **определить время, прошедшее с момента травмы**;
                            4. сбор **анамнеза жизни** (при возможности);
                            5. **провести осмотр, аускультацию, пальпацию, пульсоксиметрию**;
                            6. **установить предварительный диагноз**, **оценить тяжесть функциональных нарушений**.
                            """)).buildGrayInHiddenText()
                            MyViewBuilder(title: Text("53"), content: Text("""
                            **Предполагать наличие политравмы в следующих случаях**:
                            """)).buildGrayInText()
                            MyViewBuilder(title: Text("53"), content: Text("""
                            - **смерть пассажиров или водителя** транспортного средства;
                            - если пострадавшего **выбросило из машины**;
                            - деформация транспортного средства **превышает 50%**;
                            - **сдавлении** пациента;
                            - аварии на **высокой скорости**;
                            - **наезде на пешехода или велосипедиста**;
                            - **падении с высоты более 3 метров**;
                            - **взрыве**;
                            - **завале сыпучими материалами**.
                            """)).buildGrayInHiddenText()
                        }
                        .padding(5)
                    }
                    Image(systemName: "arrow.down")
                       
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack {
                            MyViewBuilder(title: Text("53"), content: Text("""
                            **Выполнить все необходимые мероприятия по подготовке пострадавшего к транспортировке**:
                            """)).buildGrayInText()
                            MyViewBuilder(title: Text("53"), content: Text("""
                            - обеспечить **респираторную поддержку** (**SpO2 более 90%**),
                            - **венозный доступ и инфузионную терапию** (**САД ≥ 90 мм.рт.ст.**),
                            - адекватное **обезболивание**,
                            - **симптоматическую терапию**
                            """)).buildGrayInHiddenText()
                            
                        }
                        .padding(5)
                    }
                    Image(systemName: "arrow.down")
                       
                    MyViewBuilder(title: Text("53"), content: Text("""
                    **Максимально быстрая доставка в стационар** по профилю основного заболевания (отделение сочетанной травмы),
                    при необходимости – **в ОИТАР**, минуя приемное отделение.
                    **Осуществлять в пути монторинг витальных функций: АД, ЧСС, ЧДД, SpO2**.
                    """)).buildGrayText()
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
                    Text("Алгоритм 53")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Действия бригады СНМП при ДТП»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg53"), title: "Алгоритм 53")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}

#Preview {
    Prikaz1030Alg53View()
}
