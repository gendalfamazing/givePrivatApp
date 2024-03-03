//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct ScalesTables: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    
    @State private var isTextExpanded1 = false
    @State private var isTextExpanded2 = false
    @State private var isTextExpanded3 = false
    @State private var isTextExpanded4 = false
    @State private var isTextExpanded5 = false
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack (spacing: 5){
                Spacer()
                MyViewBuilder(title: Text("1"), content: Text("Шкала комы Глазго (Взрослые)")).buildBlue59Text(isTextExpanded: isTextExpanded1)
                        .shadow(color: .shadowGrayRectangle, radius: 0.5)
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded1.toggle()
                        }
                    }
                if isTextExpanded1{
                    VStack {
                        
                        VStack (spacing: 1){
                            
                            HStack {
                                Spacer()
                                Text("Открывание глаз (E, Eye response)")
                                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                                    .font(.subheadline)
                                    .bold()
                                    .padding(3)
                                Spacer()
                            }
                            .padding(2)
                            .background(Color.grayButton)
                            ForEach(TableGlazgo.getTableGlazgoAdultE(), id: \.id) { name in
                                MyViewBuilderTables(title1: Text(name.content1), title2: Text(name.content2), title3: Text(name.content3), title4: Text("")).buildTableGlazgo()
                            }
                            HStack {
                                Spacer()
                                Text("Речевая реакция (V, Verbal response)")
                                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                                    .font(.subheadline)
                                    .bold()
                                    .padding(3)
                                Spacer()
                            }
                            .padding(2)
                            .background(Color.grayButton)
                            ForEach(TableGlazgo.getTableGlazgoAdultV(), id: \.id) { name in
                                MyViewBuilderTables(title1: Text(name.content1), title2: Text(name.content2), title3: Text(name.content3), title4: Text("")).buildTableGlazgo()
                            }
                            HStack {
                                Spacer()
                                Text("Двигательная реакция (M, Motor response)")
                                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                                    .font(.subheadline)
                                    .bold()
                                    .padding(3)
                                Spacer()
                            }
                            .padding(2)
                            .background(Color.grayButton)
                            ForEach(TableGlazgo.getTableGlazgoAdultM(), id: \.id) { name in
                                MyViewBuilderTables(title1: Text(name.content1), title2: Text(name.content2), title3: Text(name.content3), title4: Text("")).buildTableGlazgo()
                            }
                        }
                        .cornerRadius(10)
                        .shadow(color: .shadowGrayRectangle, radius: 0.5)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded1.toggle()
                            }
                        }
                        Spacer(minLength: 20)
                        MyViewBuilder(title: Text(""), content: Text("""
                                                        **Результаты по количеству баллов**:
                                                        
                                                        **15 баллов** — сознание ясное.
                                                        **14-13 баллов** — умеренное оглушение.
                                                        **12—11 баллов** — глубокое оглушение.
                                                        **10—8 баллов** — сопор.
                                                        **7-6 баллов** — умеренная кома.
                                                        **5-4 баллов** — глубокая кома.
                                                        **3 балла** — терминальная кома, смерть мозга.
                                                        
                                                        **Примечание**: если пациент без сознания, интубирован или еще не умеет говорить, то наиболее важной частью этой шкалы является двигательная реакция, ее следует оценить более тщательно.
                                                        """)).buildGrayText()
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded1.toggle()
                                }
                            }
                    }
                }
                    MyViewBuilder(title: Text("1"), content: Text("Шкала комы Глазго (Дети)")).buildBlue59Text(isTextExpanded: isTextExpanded2)
                        .shadow(color: .shadowGrayRectangle, radius: 0.5)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded2.toggle()
                            }
                        }
                    if isTextExpanded2{
                        VStack {
                            
                            VStack (spacing: 1){
                                
                                HStack {
                                    Spacer()
                                    Text("Дети старше 1 года")
                                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                                        .font(.headline)
                                        .bold()
                                        .padding(3)
                                    Spacer()
                                }
                                .padding(2)
                                .background(Color.grayButton)
                                HStack {
                                    Spacer()
                                    Text("Открывание глаз (E, Eye response)")
                                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                                        .font(.subheadline)
                                        .bold()
                                        .padding(3)
                                    Spacer()
                                }
                                .padding(2)
                                .background(Color.grayButton)
                                ForEach(TableGlazgo.getTableGlazgoChildE(), id: \.id) { name in
                                    MyViewBuilderTables(title1: Text(name.content1), title2: Text(name.content2), title3: Text(name.content3), title4: Text("")).buildTableGlazgo()
                                }
                                HStack {
                                    Spacer()
                                    Text("Речевая реакция (V, Verbal response)")
                                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                                        .font(.subheadline)
                                        .bold()
                                        .padding(3)
                                    Spacer()
                                }
                                .padding(2)
                                .background(Color.grayButton)
                                ForEach(TableGlazgo.getTableGlazgoChildV(), id: \.id) { name in
                                    MyViewBuilderTables(title1: Text(name.content1), title2: Text(name.content2), title3: Text(name.content3), title4: Text("")).buildTableGlazgo()
                                }
                                HStack {
                                    Spacer()
                                    Text("Двигательная реакция (M, Motor response)")
                                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                                        .font(.subheadline)
                                        .bold()
                                        .padding(3)
                                    Spacer()
                                }
                                .padding(2)
                                .background(Color.grayButton)
                                ForEach(TableGlazgo.getTableGlazgoChildM(), id: \.id) { name in
                                    MyViewBuilderTables(title1: Text(name.content1), title2: Text(name.content2), title3: Text(name.content3), title4: Text("")).buildTableGlazgo()
                                }
                            }
                            .cornerRadius(10)
                            .shadow(color: .shadowGrayRectangle, radius: 0.5)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded2.toggle()
                                }
                            }
                            Spacer(minLength: 20)
                           
                            VStack (spacing: 1){
                                HStack {
                                    Spacer()
                                    Text("Дети до 1 года")
                                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                                        .font(.headline)
                                        .bold()
                                        .padding(3)
                                    Spacer()
                                }
                                .padding(2)
                                .background(Color.grayButton)
                                HStack {
                                    Spacer()
                                    Text("Открывание глаз (E, Eye response)")
                                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                                        .font(.subheadline)
                                        .bold()
                                        .padding(3)
                                    Spacer()
                                }
                                .padding(2)
                                .background(Color.grayButton)
                                ForEach(TableGlazgo.getTableGlazgoChildSmallE(), id: \.id) { name in
                                    MyViewBuilderTables(title1: Text(name.content1), title2: Text(name.content2), title3: Text(name.content3), title4: Text("")).buildTableGlazgo()
                                }
                                HStack {
                                    Spacer()
                                    Text("Речевая реакция (V, Verbal response)")
                                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                                        .font(.subheadline)
                                        .bold()
                                        .padding(3)
                                    Spacer()
                                }
                                .padding(2)
                                .background(Color.grayButton)
                                ForEach(TableGlazgo.getTableGlazgoChildSmallV(), id: \.id) { name in
                                    MyViewBuilderTables(title1: Text(name.content1), title2: Text(name.content2), title3: Text(name.content3), title4: Text("")).buildTableGlazgo()
                                }
                                HStack {
                                    Spacer()
                                    Text("Двигательная реакция (M, Motor response)")
                                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                                        .font(.subheadline)
                                        .bold()
                                        .padding(3)
                                    Spacer()
                                }
                                .padding(2)
                                .background(Color.grayButton)
                                ForEach(TableGlazgo.getTableGlazgoChildSmallM(), id: \.id) { name in
                                    MyViewBuilderTables(title1: Text(name.content1), title2: Text(name.content2), title3: Text(name.content3), title4: Text("")).buildTableGlazgo()
                                }
                            }
                            .cornerRadius(10)
                            .shadow(color: .shadowGrayRectangle, radius: 0.5)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded2.toggle()
                                }
                            }
                            Spacer(minLength: 20)
                            MyViewBuilder(title: Text(""), content: Text("""
                                                            **Результаты по количеству баллов**:
                                                            
                                                            **15 баллов** — сознание ясное.
                                                            **14-13 баллов** — умеренное оглушение.
                                                            **12—11 баллов** — глубокое оглушение.
                                                            **10—8 баллов** — сопор.
                                                            **7-6 баллов** — умеренная кома.
                                                            **5-4 баллов** — глубокая кома.
                                                            **3 балла** — терминальная кома, смерть мозга.
                                                            
                                                            **Примечание**: если пациент без сознания, интубирован или еще не умеет говорить, то наиболее важной частью этой шкалы является двигательная реакция, ее следует оценить более тщательно.
                                                            """)).buildGrayText()
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded2.toggle()
                                    }
                                }
                        }
                    }
                    MyViewBuilder(title: Text("1"), content: Text("Шкала GRACE")).buildBlue59Text(isTextExpanded: isTextExpanded3)
                        .shadow(color: .shadowGrayRectangle, radius: 0.5)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded3.toggle()
                            }
                        }
                    if isTextExpanded3{
                        VStack {
                            
                            VStack (spacing: 1){
                                HStack (spacing: 1){
                                    VStack (spacing: 1){
                                        HStack (alignment: .bottom){
                                            Text("Возраст (годы)")
                                                .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
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
                                        HStack (alignment: .bottom){
                                            Text("ЧСС (уд/мин)")
                                                .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
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
                                        HStack (alignment: .bottom){
                                            Text("""
                                                САД
                                                (мм рт.ст.)
                                                """)
                                                .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
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
                                        HStack (alignment: .bottom){
                                            Text("Креатинин (мкмоль/л)")
                                                .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
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
                                HStack (alignment: .bottom){
                                    Text("Класс тяжести Killip")
                                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
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
                                    isTextExpanded3.toggle()
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
                                        isTextExpanded3.toggle()
                                    }
                                }
                        }
                    }
                    
                    MyViewBuilder(title: Text("""
                                              ----
                                              """),
                                  content: Text("""
                                                Шкала стратификации риска тромбоэмболических осложнений CHA2DS2-VASc
                                                """)).buildBlue591Text(isTextExpanded: isTextExpanded4)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded4.toggle()
                            }
                        }
                    if isTextExpanded4 {
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                            VStack  (spacing: 1){
                        VStack (spacing: 1){
                            HStack (alignment: .bottom){
                                ZStack {
                                    Text(" ")
                                        .padding(.horizontal, 10)
                                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                    
                                        .font(.footnote)
                                        .bold()
                                    
                                }
                                .frame(width: 40)
                                Spacer()
                                Text("""
                                Фактор риска
                                """)
                                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
//                                    .frame(maxWidth: 70)
                                .font(.footnote)
                                .bold()
                                .padding(3)
                                Spacer()
                                Spacer()
                                Text("""
                                Баллы
                                """)
                                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                .frame(width: 50)
                                .font(.footnote)
                                .bold()
                                .padding(3)
                                
                            }
                            Divider()
                                .background(Color.divider)
                                .padding(.horizontal, 5)
                            .padding(2)
                            .background(Color.grayButton)
                            
                            ForEach(Table59AG.getTable59Tahi11(), id: \.id) { name in
                                MyViewBuilder59(title1: name.content1,title2: name.content2,title3: name.content3,title4: name.content4,title5: name.content5,title6: name.content6,title7: name.content7,title8: name.content8,title9: name.content9,title10: name.content10,title11: name.content11,title12: name.content12,title13: name.content13,title14: name.content14, title15: name.content15,title16: name.content16,title17: name.content17,title18: name.content18,title19: name.content19,title20: name.content20,title21: name.content21,title22: name.content22,title23: name.content23,title24: name.content24,title25: name.content25,title26: name.content26,title27: name.content27,title28: name.content28).buildTable59CHA2()
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded4.toggle()
                                        }
                                    }
                            }
                        }
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded4.toggle()
                            }
                        }
                            }
                        }
                        Spacer(minLength: 5)
                        MyViewBuilder(title: Text("""
                                                  ----
                                                  """),
                                      content: Text("""
                                                    **Использование шкалы CHA2DS2-VASc**
                                                    
                                                    **Антикоагулянтная терапия** для профилактики тромбоэмболии рекомендуется для всех пациентов с ФП ≥ 1 балла по шкале CHA2DS2-VASc, за исключением тех (как мужчины, так и женщины), которые имеют низкий риск (в возрасте <65 лет и только ФП), или при наличии противопоказаний.
                                                    **Выбор антикоагулянтной** терапии должен быть основан на абсолютном риске инсульта/ тромбоэмболии, кровотечений и клиническом преимуществе для данного пациента.
                                                    **CHA2DS2-VASc рекомендуется в качестве средства оценки риска инсульта в неклапанной ФП**.
                                                    **Терапия анитромбоцитарными препаратами**: комбинация аспирина и клопидогреля или, что менее эффективно, аспирин должна быть рассмотрена только в случае, если пациент отказывается от приема любого из возможных ОАК: и антагонистов витамина К и новых оральных антикоагулянтов, а также при невозможности приема оральных антикоагулянтов, которая не связана с геморрагическими осложнениями.
                                                    """)).buildGrayText()
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded4.toggle()
                                }
                            }
                    }
                    
                    MyViewBuilder(title: Text("""
                                              ----
                                              """),
                                  content: Text("""
                                                Шкала стратификации риска кровотечения HAS-BLED
                                                """)).buildBlue591Text(isTextExpanded: isTextExpanded5)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded5.toggle()
                            }
                        }
                    if isTextExpanded5 {
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                            VStack  (spacing: 1){
                        VStack (spacing: 1){
                            HStack (alignment: .bottom){
                                ZStack {
                                    Text(" ")
                                        .padding(.horizontal, 10)
                                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                    
                                        .font(.footnote)
                                        .bold()
                                    
                                }
                                .frame(width: 40)
                                Spacer()
                                Text("""
                                Клиническая характеристика
                                """)
                                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
//                                    .frame(maxWidth: 70)
                                .font(.footnote)
                                .bold()
                                .padding(3)
                                Spacer()
                                Spacer()
                                Text("""
                                Баллы
                                """)
                                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                .frame(width: 50)
                                .font(.footnote)
                                .bold()
                                .padding(3)
                                
                            }
                            Divider()
                                .background(Color.divider)
                                .padding(.horizontal, 5)
                            .padding(2)
                            .background(Color.grayButton)
                            
                            ForEach(Table59AG.getTable59Tahi12(), id: \.id) { name in
                                MyViewBuilder59(title1: name.content1,title2: name.content2,title3: name.content3,title4: name.content4,title5: name.content5,title6: name.content6,title7: name.content7,title8: name.content8,title9: name.content9,title10: name.content10,title11: name.content11,title12: name.content12,title13: name.content13,title14: name.content14, title15: name.content15,title16: name.content16,title17: name.content17,title18: name.content18,title19: name.content19,title20: name.content20,title21: name.content21,title22: name.content22,title23: name.content23,title24: name.content24,title25: name.content25,title26: name.content26,title27: name.content27,title28: name.content28).buildTable59HAS()
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded5.toggle()
                                        }
                                    }
                            }
                        }
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded5.toggle()
                            }
                        }
                            }
                        }
                        Spacer(minLength: 5)
                        MyViewBuilder(title: Text("""
                                                  ----
                                                  """),
                                      content: Text("""
                                                    **Использование шкалы HAS-BLED**
                                                    
                                                    Значение ≥ 3 баллов говорит о высоком риске кровотечения. Высокое значение балла по шкале HAS-BLED само по себе не является показанием к отмене или не назначению антикоагулянтов, а должно служить поиску и модификации управляемых факторов риска (гипертензия, использование НПВС, лабильные значения МНО). Требует осторожности и более частого контроля пациентов на терапии оральными антикоагулянтами.
                                                    """)).buildGrayText()
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded5.toggle()
                                }
                            }
                    }
            }
                .padding(.horizontal, 10)
                .padding(.bottom, 85)
            }
            //        .padding(.horizontal, 200)
            .edgesIgnoringSafeArea(.bottom)
            .background(Color.back)
        }
        .navigationBarBackButtonHidden(false)
        .navigationBarTitle("",displayMode: .inline)
        .toolbar {
            ToolbarItem(placement: .principal) {
                VStack {
                    Text("Шкалы и таблицы")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
//                    
                }
            }
            
        }
    }
    
}
#Preview {
    ScalesTables()
}

