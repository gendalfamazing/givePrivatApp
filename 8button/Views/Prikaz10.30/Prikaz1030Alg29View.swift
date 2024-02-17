//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg129View: View {
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
    
    var body: some View {
        NavigationStack {
            ScrollView {
                Spacer()
                VStack {
                    MyViewBuilder(title: Text("29"), content: Text("""
                            1. **Оградить пациента от возможных травм**.
                            2. **Обеспечить проходимость дыхательных путей**.
                            3. **Контроль АД, ЧСС, ЧДД**.
                            """)).buildGrayText()
                    
                    Image(systemName: "arrow.down")
                        .shadow(radius: 2)
                    
                    MyViewBuilder(title: Text("29"), content: Text("""
                            **Провести дифференциальную диагностику**:
                            
                            - ОНМК;
                            - ЧМТ;
                            - острая инфекция ЦНС;
                            - опухоли мозга;
                            - острые нарушения метаболизма; - интоксикации;
                            - нарушения электролитного состава крови;
                            - гипогликемия;
                            - гипопаратиреоз;
                            - эклампсия.
                            """)).buildGrayText()
                    HStack {
                        MyViewBuilder(title: Text("27"), content: Text("""
                            Совпадения **есть**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded9)
                            .onTapGesture {
                                withAnimation (.interpolatingSpring) {
                                    isTextExpanded9.toggle()
                                    if isTextExpanded10 == true {
                                        isTextExpanded10.toggle()
                                    }
                                    if isTextExpanded1 == true {
                                        isTextExpanded1.toggle()
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
                                    if isTextExpanded5 == true {
                                        isTextExpanded5.toggle()
                                    }
                                    if isTextExpanded6 == true {
                                        isTextExpanded6.toggle()
                                    }
                                    if isTextExpanded7 == true {
                                        isTextExpanded7.toggle()
                                    }
                                    if isTextExpanded8 == true {
                                        isTextExpanded8.toggle()
                                    }
                                    
                                    
                                }
                            }
                        MyViewBuilder(title: Text("27"), content: Text("""
                            Совпадений **нет**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded10)
                            .onTapGesture {
                                withAnimation (.interpolatingSpring) {
                                    isTextExpanded10.toggle()
                                    if isTextExpanded9 == true {
                                        isTextExpanded9.toggle()
                                    }
                                    if isTextExpanded1 == true {
                                        isTextExpanded1.toggle()
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
                                    if isTextExpanded5 == true {
                                        isTextExpanded5.toggle()
                                    }
                                    if isTextExpanded6 == true {
                                        isTextExpanded6.toggle()
                                    }
                                    if isTextExpanded7 == true {
                                        isTextExpanded7.toggle()
                                    }
                                    if isTextExpanded8 == true {
                                        isTextExpanded8.toggle()
                                    }
                                    
                                }
                            }
                    }
                    
                    if isTextExpanded9 {
                        MyViewBuilder(title: Text("29"), content: Text("""
                                **Оказать медицинскую помощь по соответствующим алгоритмам**
                                """)).buildGrayText()
                    }
                    if isTextExpanded10 {
                        MyViewBuilder(title: Text("29"), content: Text("""
                                Клинические признаки острой дыхательной недостаточности – ЧДД более 40 или менее 8 в 1 мин
                                """)).buildGrayText()
                        HStack {
                            MyViewBuilder(title: Text("27"), content: Text("""
                                Признаки **ОДН есть**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded1)
                                .onTapGesture {
                                    withAnimation (.interpolatingSpring) {
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
                                        if isTextExpanded7 == true {
                                            isTextExpanded7.toggle()
                                        }
                                        if isTextExpanded8 == true {
                                            isTextExpanded8.toggle()
                                        }
                                        
                                        
                                    }
                                }
                            MyViewBuilder(title: Text("27"), content: Text("""
                                Признаков **ОДН нет**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded2)
                                .onTapGesture {
                                    withAnimation (.interpolatingSpring) {
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
                                        if isTextExpanded7 == true {
                                            isTextExpanded7.toggle()
                                        }
                                        if isTextExpanded8 == true {
                                            isTextExpanded8.toggle()
                                        }
                                        
                                    }
                                }
                        }
                        if isTextExpanded1 {
                            NavigationLink (destination: Prikaz1030Alg3View()) {
                                MyViewBuilder(title: Text("29"), content: Text("Алгоритм 3 «Острая дыхательная недостаточность»")).buildNavigationText()
                            }
                        }
                        if isTextExpanded2 {
                            MyViewBuilder(title: Text("29"), content: Text("""
                                    **Купирование судорожного синдрома**:
                                    
                                    - **диазепам 0,5%–2-4 мл в/в**,
                                    При **некупировавшемся** судорожном синдроме в течение 15 минут **повторное введение диазепама в той же дозе**;
                                    
                                    -при **повышенном АД**– **25% раствор магния сульфата 5-10 мл** в/в.
                                    """)).buildGrayText()
                            Image(systemName: "arrow.down")
                                .shadow(radius: 2)
                            MyViewBuilder(title: Text("29"), content: Text("""
                                    – глюкометрия
                                    – ЭКГ-мониторирование
                                    – пульсоксиметрия
                                    """)).buildGrayText()
                            HStack {
                                Spacer()
                                Image(systemName: "arrow.down")
                                    .shadow(radius: 2)
                                Spacer()
                                Image(systemName: "arrow.down")
                                    .shadow(radius: 2)
                                Spacer()
                                Image(systemName: "arrow.down")
                                    .shadow(radius: 2)
                                Spacer()
                                Image(systemName: "arrow.down")
                                    .shadow(radius: 2)
                                Spacer()
                            }
                            HStack {
                                VStack {
                                    MyViewBuilder(title: Text("27"), content: Text("""
                                    Оценка эффекта
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded3)
                                        .onTapGesture {
                                            withAnimation (.interpolatingSpring) {
                                                isTextExpanded3.toggle()
                                                
                                                
                                                if isTextExpanded4 == true {
                                                    isTextExpanded4.toggle()
                                                }
                                                if isTextExpanded5 == true {
                                                    isTextExpanded5.toggle()
                                                }
                                                if isTextExpanded6 == true {
                                                    isTextExpanded6.toggle()
                                                }
                                                if isTextExpanded7 == true {
                                                    isTextExpanded7.toggle()
                                                }
                                                if isTextExpanded8 == true {
                                                    isTextExpanded8.toggle()
                                                }
                                                
                                            }
                                        }
                                    MyViewBuilder(title: Text("27"), content: Text("""
                                    Гипогликемия (< 3 ммоль/л)
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded4)
                                        .onTapGesture {
                                            withAnimation (.interpolatingSpring) {
                                                isTextExpanded4.toggle()
                                                
                                                if isTextExpanded3 == true {
                                                    isTextExpanded3.toggle()
                                                }
                                                if isTextExpanded5 == true {
                                                    isTextExpanded5.toggle()
                                                }
                                                if isTextExpanded6 == true {
                                                    isTextExpanded6.toggle()
                                                }
                                                if isTextExpanded7 == true {
                                                    isTextExpanded7.toggle()
                                                }
                                                if isTextExpanded8 == true {
                                                    isTextExpanded8.toggle()
                                                }
                                                
                                            }
                                        }
                                }
                                VStack {
                                    MyViewBuilder(title: Text("27"), content: Text("""
                                    Отек головного мозга
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded5)
                                        .onTapGesture {
                                            withAnimation (.interpolatingSpring) {
                                                isTextExpanded5.toggle()
                                                
                                                if isTextExpanded3 == true {
                                                    isTextExpanded3.toggle()
                                                }
                                                if isTextExpanded4 == true {
                                                    isTextExpanded4.toggle()
                                                }
                                                
                                                if isTextExpanded6 == true {
                                                    isTextExpanded6.toggle()
                                                }
                                                if isTextExpanded7 == true {
                                                    isTextExpanded7.toggle()
                                                }
                                                if isTextExpanded8 == true {
                                                    isTextExpanded8.toggle()
                                                }
                                                
                                                
                                            }
                                        }
                                    MyViewBuilder(title: Text("27"), content: Text("""
                                    Эпилептический статус
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded6)
                                        .onTapGesture {
                                            withAnimation (.interpolatingSpring) {
                                                isTextExpanded6.toggle()
                                                
                                                if isTextExpanded3 == true {
                                                    isTextExpanded3.toggle()
                                                }
                                                if isTextExpanded4 == true {
                                                    isTextExpanded4.toggle()
                                                }
                                                if isTextExpanded5 == true {
                                                    isTextExpanded5.toggle()
                                                }
                                                if isTextExpanded7 == true {
                                                    isTextExpanded7.toggle()
                                                }
                                                if isTextExpanded8 == true {
                                                    isTextExpanded8.toggle()
                                                }
                                                
                                            }
                                        }
                                }
                            }
                        }
                        if isTextExpanded3 {
                            MyViewBuilder(title: Text("29"), content: Text("""
                                    **Достигнут эффект**:
                                    
                                    - судорожный синдром купирован,
                                    - САД ≥ 90 мм рт. ст.,
                                    - SpO2 ≥ 90%
                                    """)).buildGrayText()
                            HStack {
                                MyViewBuilder(title: Text("27"), content: Text("""
                                    Да
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded7)
                                    .onTapGesture {
                                        withAnimation (.interpolatingSpring) {
                                            isTextExpanded7.toggle()
                                            
                                            if isTextExpanded8 == true {
                                                isTextExpanded8.toggle()
                                            }
                                            
                                            
                                        }
                                    }
                                MyViewBuilder(title: Text("27"), content: Text("""
                                    Нет
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded8)
                                    .onTapGesture {
                                        withAnimation (.interpolatingSpring) {
                                            isTextExpanded8.toggle()
                                            
                                            if isTextExpanded7 == true {
                                                isTextExpanded7.toggle()
                                            }
                                            
                                        }
                                    }
                            }
                            if isTextExpanded7 {
                                MyViewBuilder(title: Text("29"), content: Text("""
                                        **Актив невролога поликлиники по месту жительства** при быстром восстановлении сознания и отсутствии общемозговой и очаговой неврологической симптоматики при установленном диагнозе
                                        """)).buildGrayText()
                            }
                            if isTextExpanded8 {
                                MyViewBuilder(title: Text("29"), content: Text("""
                                        **Доставка в стационар** по профилю основного заболевания
                                        """)).buildGrayText()
                            }
                        }
                        if isTextExpanded4 {
                            MyViewBuilder(title: Text("29"), content: Text("""
                                    **40-60 мл 40% раствора глюкозы в/в**
                                    """)).buildGrayText()
                            Image(systemName: "arrow.down")
                                .shadow(radius: 2)
                            MyViewBuilder(title: Text("29"), content: Text("""
                                    **Доставка в стационар** по профилю основного заболевания
                                    """)).buildGrayText()
                        }
                        if isTextExpanded5 {
                            MyViewBuilder(title: Text("29"), content: Text("""
                                    **Отек головного мозга**:
                                    
                                    наличие рвоты, патологических рефлексов, гиперэстезия, гипертермия, коллапс, брадикардия, нарушения дыхания
                                    """)).buildGrayText()
                            Image(systemName: "arrow.down")
                                .shadow(radius: 2)
                            MyViewBuilder(title: Text("29"), content: Text("""
                                    **Оксигенотерапия** под контролем SpO2 **(≥90%)**.
                                    **Фуросемид 1 % 2-4 мл в/в**
                                    """)).buildGrayText()
                            Image(systemName: "arrow.down")
                                .shadow(radius: 2)
                            MyViewBuilder(title: Text("29"), content: Text("""
                                    **ОИТАР стационара**
                                    """)).buildGrayText()
                        }
                        if isTextExpanded6 {
                            MyViewBuilder(title: Text("29"), content: Text("""
                                    **Эпилептический статус**:
                                    
                                    эпилептический припадок продолжается более 30 минут или отмечаются повторные припадки, между которыми больной не приходит в сознание
                                    """)).buildGrayText()
                            Image(systemName: "arrow.down")
                                .shadow(radius: 2)
                            MyViewBuilder(title: Text("29"), content: Text("""
                                    **Натрия оксибутират 20% – 15-20 мл (70 мг/кг) в/в капельно**
                                    """)).buildGrayText()
                            Image(systemName: "arrow.down")
                                .shadow(radius: 2)
                            MyViewBuilder(title: Text("29"), content: Text("""
                                    Отсутствие эффекта
                                    """)).buildGrayText()
                            Image(systemName: "arrow.down")
                                .shadow(radius: 2)
                            MyViewBuilder(title: Text("29"), content: Text("""
                                    **Восстановить проходимость дыхательных путей** (интубационная трубка, ларингиальная маска, комбитюб),
                                    **ИВЛ 100% кислородом** под контролем SpO2
                                    """)).buildGrayText()
                            Image(systemName: "arrow.down")
                                .shadow(radius: 2)
                            MyViewBuilder(title: Text("29"), content: Text("""
                                    **ОИТАР стационара**
                                    """)).buildGrayText()
                        }
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
                    Text("Алгоритм 29")
                        .font(.headline)
                        .bold()
                    Text("«Судорожный синдром»")
                        .font(.caption2)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg29"), title: "Алгоритм 29")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}

#Preview {
    Prikaz1030Alg129View()
}
