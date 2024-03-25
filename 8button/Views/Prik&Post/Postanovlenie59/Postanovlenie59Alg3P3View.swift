//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct Postanovlenie59Alg3P3View: View {
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
    var body: some View {
            ScrollView {
                VStack (spacing: 5) {
                    MyViewBuilder(title: Text("3"), content: Text("""
                    **Рекомендации по выбору стратегии ведения пациентов с ОКС с подъемом сегмента ST**
                    """)).buildGrayTextCenter()
                        .multilineTextAlignment(.center)
                    MyViewBuilder(title: Text("""
                                              Варианты стратегии ведения пациентов при ОКС без подъема сегмента ST
                                              """),
                                  content: Text("""
                                                **Инвазивная стратегия показана у пациентов с**:
                                                - наличием, по крайней мере, одного критерия высокого/очень высокого риска
                                                - возобновляющимися симптомами
                                                - стресс-индуцированной ишемией
                                                
                                                **Консервативная стратегия должна быть выбрана у пациентов с**:
                                                - низким кардиоваскулярным риском;
                                                - высоким риском осложнений при выполнении коронарографии или ЧКВ
                                                """)).buildDualBlockBlueGray(isTextExpanded: isTextExpanded1)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded1.toggle()
                            }
                        }
                    MyViewBuilder(title: Text("""
                                              Критерии высокого риска для оценки показаний к ЧКВ
                                              """),
                                  content: Text("""
                                                **Первичные**:
                                                - диагностически значимое повышение уровня тропонинов T или I, МВ-КФК;
                                                - стойкая/рецидивирующая депрессия сегмента ST на ЭКГ;
                                                - преходящие подъемы сегмента ST на ЭКГ;
                                                - сохраняющийся/возобновляющийся болевой синдром в грудной клетке/эквивалентные симптомы.
                                                
                                                **Вторичные**:
                                                - сахарный диабет;
                                                - почечная недостаточность (клиренс креатинина <60 mL/min/1,73 m2);
                                                - нарушение функции левого желудочка (фракция выброса <40%);
                                                - ранняя постинфарктная стенокардия;
                                                - недавнее ЧКВ;
                                                - предшествующее АКШ.
                                                """)).buildDualBlockBlueGray(isTextExpanded: isTextExpanded2)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded2.toggle()
                            }
                        }
                    MyViewBuilder(title: Text("""
                                              Экстренная инвазивная стратегия (< 2 часов)
                                              """),
                                  content: Text("""
                                                **Экстренная инвазивная стратегия (< 2 часов) показана пациентам с очень высоким риском развития неблагоприятных ишемических событий** (наличие по крайней мере одного из следующих критериев):
                                                
                                                -рефрактерная / продолжающаяся / рецидивирующаяся ишемия миокарда;
                                                - отрицательная динамика сегмента ST;
                                                - нестабильность гемодинамики;
                                                - наличие жизнеугрожающих желудочковых аритмий (ЖТ, ФЖ).
                                                """)).buildDualBlockBlueGray(isTextExpanded: isTextExpanded3)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded3.toggle()
                            }
                        }
                    MyViewBuilder(title: Text("""
                                              Ранняя инвазивная стратегия (< 24 часов)
                                              """),
                                  content: Text("""
                                                **Ранняя инвазивная стратегия (< 24 часов) показана пациентам с высоким риском развития неблагоприятных ишемических событий** (наличие по крайней мере одного из следующих критериев):
                                                
                                                - высокий риск по шкале GRACE (более 140 баллов);
                                                - повышенный уровень тропонинов или КФК-МВ;
                                                - изменения сегмента ST в динамике: депрессия > 1 мм или транзиторный подъем (менее 30 мин) > 1 мм от изолинии;
                                                - наличие ишемической депрессии сегмента ST в отведениях V2-V6.
                                                """)).buildDualBlockBlueGray(isTextExpanded: isTextExpanded4)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded4.toggle()
                            }
                        }
                    MyViewBuilder(title: Text("""
                                              Поздняя инвазивная стратегия (в пределах 72 часов)
                                              """),
                                  content: Text("""
                                                **Поздняя инвазивная стратегия (в пределах 72 часов) показана пациентам при наличии следующих критериев**:
                                                
                                                - умеренный риск по шкале GRACE (109 – 140 баллов); -ранняя постинфарктная стенокардия;
                                                - сниженная сократительная функция ЛЖ (ФВ < 40%);
                                                - сахарный диабет;
                                                - ранее выполненные процедуры реваскуляризации миокарда (коронарное шунтирование в анамнезе или ЧКВ в течение последних 6 месяцев);
                                                - почечная недостаточность (клиренс креатинина < 60мл/мин/1,73м2);
                                                - стресс-индуцированная ишемия.
                                                """)).buildDualBlockBlueGray(isTextExpanded: isTextExpanded5)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded5.toggle()
                            }
                        }
                    MyViewBuilder(title: Text("1"), content: Text("Шкала GRACE")).buildBlue59Text(isTextExpanded: isTextExpanded6)
                        .shadow(color: .shadowGrayRectangle, radius: 0.5)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded6.toggle()
                            }
                        }
                    if isTextExpanded6{
                        VStack {
                            
                            VStack (spacing: 1){
                                HStack (spacing: 1){
                                    VStack (spacing: 1){
                                        HStack (alignment: .center){
                                            Text("Возраст (годы)")
                                                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                                .font(.footnote)
                                                .bold()
                                                .padding(3)
                                            Spacer()
                                            Text("Баллы")
                                                .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                                                .frame(maxWidth: 50)
                                                .font(.footnote)
                                                .bold()
                                                .padding(3)
                                            
                                        }
                                        .padding(2)
                                        .background(Color.grayButton)
                                        ForEach(Table59OKSSmall.getTable59GRACE1(), id: \.id) { name in
                                            MyViewBuilder(title: Text(name.name), content: Text(name.code)).buildTableGRACE()
                                        }
                                    }
                                    VStack (spacing: 1){
                                        HStack (alignment: .center){
                                            Text("ЧСС (уд/мин)")
                                                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                                .font(.footnote)
                                                .bold()
                                                .padding(3)
                                            Spacer()
                                            Text("Баллы")
                                                .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                                                .frame(maxWidth: 50)
                                                .font(.footnote)
                                                .bold()
                                                .padding(3)
                                            
                                        }
                                        .padding(2)
                                        .background(Color.grayButton)
                                        ForEach(Table59OKSSmall.getTable59GRACE4(), id: \.id) { name in
                                            MyViewBuilder(title: Text(name.name), content: Text(name.code)).buildTableGRACE()
                                        }
                                    }
                                }
                                HStack (spacing:1){
                                    VStack (spacing:1){
                                        HStack (alignment: .center){
                                            Text("""
                                                САД
                                                (мм рт.ст.)
                                                """)
                                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                                .font(.footnote)
                                                .bold()
                                                .padding(3)
                                            Spacer()
                                            Text("Баллы")
                                                .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                                                .frame(maxWidth: 50)
                                                .font(.footnote)
                                                .bold()
                                                .padding(3)
                                            
                                        }
                                        .padding(2)
                                        .background(Color.grayButton)
                                        ForEach(Table59OKSSmall.getTable59GRACE2(), id: \.id) { name in
                                            MyViewBuilder(title: Text(name.name), content: Text(name.code)).buildTableGRACE()
                                        }
                                    }
                                    VStack (spacing:1){
                                        HStack (alignment: .center){
                                            Text("""
                                                Креатинин
                                                (мкмоль/л)
                                                """)
                                                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                                .font(.footnote)
                                                .bold()
                                                .padding(3)
                                            Spacer()
                                            Text("Баллы")
                                                .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                                                .frame(maxWidth: 50)
                                                .font(.footnote)
                                                .bold()
                                                .padding(3)
                                            
                                        }
                                        .padding(2)
                                        .background(Color.grayButton)
                                        ForEach(Table59OKSSmall.getTable59GRACE5(), id: \.id) { name in
                                            MyViewBuilder(title: Text(name.name), content: Text(name.code)).buildTableGRACE()
                                        }
                                    }
                                }
                                
                                HStack (spacing:1){
                                VStack (spacing:1){
                                HStack (alignment: .center){
                                    Text("Класс тяжести Killip")
                                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                        .font(.footnote)
                                        .bold()
                                        .padding(.horizontal, 3)
                                        .padding(.vertical, 2.5)
                                    
                                    Spacer()
                                    Text("Баллы")
                                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                                        .frame(maxWidth: 50)
                                        .font(.footnote)
                                        .bold()
                                        .padding(3)
                                    
                                }
                                .padding(2)
                                .background(Color.grayButton)
                                ForEach(Table59OKSSmall.getTable59GRACE3(), id: \.id) { name in
                                    MyViewBuilder(title: Text(name.name), content: Text(name.code)).buildTableGRACE()
                                }
                            }
                                VStack (spacing:1){
                                    ForEach(Table59OKSSmall.getTable59GRACE6(), id: \.id) { name in
                                        MyViewBuilder(title: Text(name.name), content: Text(name.code)).buildTableGRACE()
                                    }
                                }
                            }
                            }
                            .cornerRadius(10)
                            .shadow(color: .shadowGrayRectangle, radius: 0.5)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded6.toggle()
                                }
                            }
                            Spacer(minLength: 10)
                            ZStack {
                                MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                                VStack (spacing: 1) {
                                    MyViewBuilder(title: Text(""), content: Text("**Определение риска по шкале GRACE**")).buildGrayInText()
                                    HStack (alignment: .bottom){
                                        Text("Риск по шкале GRACE")
                                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                                            .font(.subheadline)
                                            .bold()
                                            .padding(3)
                                        
                                        Spacer()
                                        Text("Категории риска")
                                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                                            .font(.subheadline)
                                            .bold()
                                            .padding(3)
                                        
                                    }
                                    ForEach(Table59OKSSmall.getTable59GRACE7(), id: \.id) { name in
                                        MyViewBuilder(title: Text(name.name), content: Text(name.code)).buildTableGRACEKey()
                                    }
                                }
                            }
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded6.toggle()
                                    }
                                }
                        }
                    }
                }
                .padding(.horizontal, 10)
                .padding(.bottom, 55)
            }
            //        .padding(.horizontal, 200)
//            .edgesIgnoringSafeArea(.bottom)
            .background(Color.back)
        
        .navigationBarBackButtonHidden(false)
        .navigationBarTitle("",displayMode: .inline)
        .toolbar {
            ToolbarItem(placement: .principal) {
                VStack {
                    Text("Приложение 3")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("""
                    «Выбор стратегии ведения пациентов при ОКС»
                    """)
                    .font(.caption2)
                    .foregroundStyle(Color.toolBar)
                }
            }
            
        }
    }
    
}
#Preview {
    Postanovlenie59Alg3P3View()
}

