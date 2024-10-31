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
                
                Scales()
                .padding(.horizontal, 10)
                Spacer(minLength: 10)
                
                Tables()
                .padding(.horizontal, 10)
                .padding(.bottom, 55)
            }
            //        .padding(.horizontal, 200)
//            .edgesIgnoringSafeArea(.bottom)
            .background(Color.back)
        
        .navigationBarBackButtonHidden(false)
        .navigationBarTitle("", displayMode: .inline)
        .toolbar {
            ToolbarItem(placement: .principal) {
                VStack {
                    Text("Шкалы и таблицы")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("""
                    «Различные шкалы, полезные для СМП»
                    """)
                    .font(.caption2)
                    .foregroundStyle(Color.toolBar)
                }
            }
            
        }
    }
    
}
#Preview {
    ScalesTables()
}

struct TableGraceView: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
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
                    HStack (alignment: .bottom){
                        Text("""
                            САД
                            (мм рт.ст.)
                            """)
                            .lineLimit(2)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .font(.footnote)
                            .bold()
                            .padding(3)
                        Spacer()
                        VStack {
                            Spacer()
                            Text("Баллы")
                                .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                                .frame(maxWidth: 50)
                                .font(.footnote)
                                .bold()
                                .padding(3)
                        }
                        
                    }
                    .padding(2)
                    .background(Color.grayButton)
                    ForEach(Table59OKSSmall.getTable59GRACE2(), id: \.id) { name in
                        MyViewBuilder(title: Text(name.name), content: Text(name.code)).buildTableGRACE()
                    }
                }
                VStack (spacing:1){
                    HStack (alignment: .bottom){
                        Text("""
                            Креатинин
                            (мкмоль/л)
                            """)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .font(.footnote)
                            .bold()
                            .padding(3)
                        Spacer()
                        VStack {
                            Spacer()
                            Text("Баллы")
                                .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                                .frame(maxWidth: 50)
                                .font(.footnote)
                                .bold()
                                .padding(3)
                        }
                        
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
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .font(.footnote)
                    .bold()
                    .padding(.horizontal, 3)
                    .padding(.vertical, 2)
                
                Spacer()
                VStack {
                    Spacer()
                    Text("Баллы")
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                        .frame(maxWidth: 50)
                        .font(.footnote)
                        .bold()
                        .padding(3)
                }
                
            }
            .frame(alignment: .bottom)
            .padding(.horizontal, 2)
            .background(Color.grayButton)
            ForEach(Table59OKSSmall.getTable59GRACE3(), id: \.id) { name in
                MyViewBuilder(title: Text(name.name), content: Text(name.code)).buildTableGRACE()
            }
        }
            .frame(maxHeight: .infinity)
            VStack (spacing:1){
                ForEach(Table59OKSSmall.getTable59GRACE6(), id: \.id) { name in
                    MyViewBuilder(title: Text(name.name), content: Text(name.code)).buildTableGRACE()
                }
            }
        }
        }
        
    }
}

struct TablesGlazgoView: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    
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
        
        MyViewBuilder(title: Text("Глазго (Взрослые)"), content: Text("Шкала для оценки степени нарушения сознания и комы")).buildBlue591TextScales(isTextExpanded: isTextExpanded1)
            .onTapGesture {
                withAnimation (.snappy) {
                    isTextExpanded1.toggle()
                }
            }
        if isTextExpanded1{
            MyViewBuilder(title: Text(""), content: Text("""
                                            **Шкала комы Глазго (GCS)** - шкала для оценки степени нарушения сознания и комы
                                            """)).buildGrayText()
                .onTapGesture {
                    withAnimation (.snappy) {
                        isTextExpanded1.toggle()
                    }
                }
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
                .background(Color.backtables)
                .cornerRadius(10)
                .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                )
                .onTapGesture {
                    withAnimation (.snappy) {
                        isTextExpanded1.toggle()
                    }
                }
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
            MyViewBuilder(title: Text("Глазго (Дети)"), content: Text("Шкала для оценки степени нарушения сознания и комы")).buildBlue591TextScales(isTextExpanded: isTextExpanded2)
                .onTapGesture {
                    withAnimation (.snappy) {
                        isTextExpanded2.toggle()
                    }
                }
            if isTextExpanded2{
                MyViewBuilder(title: Text(""), content: Text("""
                                                **Шкала комы Глазго (GCS)** - шкала для оценки степени нарушения сознания и комы
                                                """)).buildGrayText()
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded2.toggle()
                        }
                    }
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
                    .background(Color.backtables)
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 10)
        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
)
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
                    .overlay(RoundedRectangle(cornerRadius: 10)
        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
)
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded2.toggle()
                        }
                    }
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
    }
}

struct Scales: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    
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
        VStack (alignment: .leading, spacing: 5){
            VStack (alignment: .leading, spacing: 1){
                Text("""
                    Шкалы:
                    """)
                    .font(.footnote)
                    .bold()
                    .padding(.leading, 10)
                    .opacity(0.5)
            }
            TablesGlazgoView()
            
            Geneva()
            
            MyViewBuilder(title: Text("GRACE"), content: Text("Расчет риска у больных с ОКС без подъема ST")).buildBlue591TextScales(isTextExpanded: isTextExpanded3)
                .onTapGesture {
                    withAnimation (.snappy) {
                        isTextExpanded3.toggle()
                    }
                }
            if isTextExpanded3{
                MyViewBuilder(title: Text(""), content: Text("""
                                                **Шкала GRACE (Global Registry of Acute Coronary Events) для расчета риска у больных с ОКС БП ST.**
                                                С помощью данной шкалы можно оценить риск внутрибольничной летальности, смертности и развития ИМ, а также смерти и развития ИМ в течение полугода (в том числе после выписки из больницы); определить наиболее подходящий для данного пациента с ОКС способ лечения и его интенсивность.
                                                """)).buildGrayText()
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded3.toggle()
                        }
                    }
                VStack {
                    
                    TableGraceView()
                    .background(Color.backtables)
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                            )
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded3.toggle()
                        }
                    }
                    
                        
                        VStack (spacing: 1) {
                            MyViewBuilder(title: Text(""), content: Text("**Определение риска по шкале GRACE**")).buildGrayInText()
                                .background(Color.grayButton)
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
                            .background(Color.grayButton)
                            ForEach(Table59OKSSmall.getTable59GRACE7(), id: \.id) { name in
                                MyViewBuilder(title: Text(name.name), content: Text(name.code)).buildTableGRACEKey()
                            }
                        }
                    
                    .background(Color.backtables)
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                            )
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded3.toggle()
                            }
                        }
                }
            }
            
            MyViewBuilder(title: Text("""
                                      CHA2DS2-VASc
                                      """),
                          content: Text("""
                                        Расчет риска тромбоэмболических осложнений
                                        """)).buildBlue591TextScales(isTextExpanded: isTextExpanded4)
                .onTapGesture {
                    withAnimation (.snappy) {
                        isTextExpanded4.toggle()
                    }
                }
            if isTextExpanded4 {
                MyViewBuilder(title: Text("""
                                          ----
                                          """),
                              content: Text("""
                                            **Стратификация риска тромбоэмболических осложнений**.
                                            """)).buildGrayTextCenter()
                
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
                .background(Color.backtables)
                .cornerRadius(10)
                .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                )
                .onTapGesture {
                    withAnimation (.snappy) {
                        isTextExpanded4.toggle()
                    }
                }
                 
                
                MyViewBuilder(title: Text("""
                                          ----
                                          """),
                              content: Text("""
                                            **Использование шкалы CHA2DS2-VASc**:
                                            
                                            **Антикоагулянтная терапия** для профилактики тромбоэмболии рекомендуется для всех пациентов с ФП **≥ 1 балла** по шкале CHA2DS2-VASc, за исключением тех (как мужчины, так и женщины), которые имеют низкий риск (в возрасте <65 лет и только ФП), или при наличии противопоказаний.
                                            **Выбор антикоагулянтной** терапии должен быть основан на абсолютном риске инсульта/ тромбоэмболии, кровотечений и клиническом преимуществе для данного пациента.
                                            **CHA2DS2-VASc рекомендуется в качестве средства оценки риска инсульта в неклапанной ФП**.
                                            **Терапия анитромбоцитарными препаратами**: комбинация аспирина и клопидогреля или, что менее эффективно, аспирин должна быть рассмотрена только в случае, если пациент отказывается от приема любого из возможных ОАК: и антагонистов витамина К и новых оральных антикоагулянтов, а также при невозможности приема оральных антикоагулянтов, которая не связана с геморрагическими осложнениями.
                                            """)).buildGrayText()
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded4.toggle()
                        }
                    }
                VStack(alignment: .center ,spacing: 1) {
                    VStack {
                        Text("**Скорректированные величины риска инсульта**")
                            .frame(minWidth: 70, maxWidth: .infinity, alignment: .center)
                            .font(.caption)
                            .bold()
                            .padding(10)
                    }
                    .background(Color.grayButton)
                    HStack (alignment: .bottom){
                        Text("Баллы")
                            .frame(minWidth: 70, maxWidth: .infinity, alignment: .center)
                            .font(.caption)
                            .bold()
                            .padding(3)
                        Spacer()
                        Text("""
                            % в год
                            """)
                            .frame(minWidth: 88, maxWidth: .infinity, alignment: .center)
                            .font(.caption)
                            .bold()
                            .padding(3)
                        
                        Spacer()
                        
                    }
                    .background(Color.grayButton)
                    ForEach(TablePamyatki.getTableScaleCHA2DS2(), id: \.id) { name in
                        MyViewBuilder59(title1: name.content1,title2: name.content2,title3: name.content3,title4: name.content4,title5: name.content5,title6: name.content6,title7: name.content7,title8: name.content8,title9: name.content9,title10: name.content10,title11: name.content11,title12: name.content12,title13: name.content13,title14: name.content14, title15: name.content15,title16: name.content16,title17: name.content17,title18: name.content18,title19: name.content19,title20: name.content20,title21: name.content21,title22: name.content22,title23: name.content23,title24: name.content24,title25: name.content25,title26: name.content26,title27: name.content27,title28: name.content28).buildTableScaleCHA2DS2()
                    }
                }
                .background(Color.backtables)
                .cornerRadius(10)
                .overlay(RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                        )
                .onTapGesture {
                    withAnimation (.snappy) {
                        isTextExpanded4.toggle()
                    }
                }
            }
            
            MyViewBuilder(title: Text("""
                                      HAS-BLED
                                      """),
                          content: Text("""
                                        Стратификация риска кровотечеия
                                        """)).buildBlue591TextScales(isTextExpanded: isTextExpanded5)
                .onTapGesture {
                    withAnimation (.snappy) {
                        isTextExpanded5.toggle()
                    }
                }
            if isTextExpanded5 {
                MyViewBuilder(title: Text("""
                                          ----
                                          """),
                              content: Text("""
                                            **Стратификация риска кровотечеия**.
                                            """)).buildGrayTextCenter()
                
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
                .background(Color.backtables)
                .cornerRadius(10)
                .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                )
                .onTapGesture {
                    withAnimation (.snappy) {
                        isTextExpanded5.toggle()
                    }
                }
                    }
                
                MyViewBuilder(title: Text("""
                                          ----
                                          """),
                              content: Text("""
                                            **Использование шкалы HAS-BLED**
                                            
                                            Значение **≥ 3 баллов** говорит о высоком риске кровотечения. Высокое значение балла по шкале HAS-BLED само по себе не является показанием к отмене или не назначению антикоагулянтов, а должно служить поиску и модификации управляемых факторов риска (гипертензия, использование НПВС, лабильные значения МНО). Требует осторожности и более частого контроля пациентов на терапии оральными антикоагулянтами.
                                            """)).buildGrayText()
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded5.toggle()
                        }
                    }
            }
            MyViewBuilder(title: Text("""
                                      Острая дыхательная недостаточность
                                      """),
                          content: Text("""
                                        Оценка степени тяжести ОДН
                                        """)).buildBlue591TextScales(isTextExpanded: isTextExpanded6)
                .onTapGesture {
                    withAnimation (.snappy) {
                        isTextExpanded6.toggle()
                    }
                }
            if isTextExpanded6{
                MyViewBuilder(title: Text("""
                                          ----
                                          """),
                              content: Text("""
                                            **Диагностировать ОДН и ее степень можно только на основании совокупности признаков**.
                                            """)).buildGrayText()
                VStack(spacing: 1) {
                    HStack {
                            Text("Норма (ДН 0)")
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                            .font(.subheadline)
                            .bold()
                            .padding(3)
                        
                    Spacer()
                    }
                    .padding(2)
                    .background(Color.grayButton)
                    ForEach(TableODN.getTableODN0(), id: \.id) { name in
                        MyViewBuilder(title: Text(name.name), content: Text(name.code)).buildTable59OKSSmall()
                    }
                    HStack {
                            Text("ОДН I ст.")
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                            .font(.subheadline)
                            .bold()
                            .padding(3)
                        
                    Spacer()
                    }
                    .padding(2)
                    .background(Color.grayButton)
                    ForEach(TableODN.getTableODN1(), id: \.id) { name in
                        MyViewBuilder(title: Text(name.name), content: Text(name.code)).buildTable59OKSSmall()
                    }
                    HStack {
                            Text("ОДН II ст.")
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                            .font(.subheadline)
                            .bold()
                            .padding(3)
                        
                    Spacer()
                    }
                    .padding(2)
                    .background(Color.grayButton)
                    ForEach(TableODN.getTableODN2(), id: \.id) { name in
                        MyViewBuilder(title: Text(name.name), content: Text(name.code)).buildTable59OKSSmall()
                    }
                    HStack {
                            Text("ОДН III ст.")
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                            .font(.subheadline)
                            .bold()
                            .padding(3)
                        
                    Spacer()
                    }
                    .padding(2)
                    .background(Color.grayButton)
                    ForEach(TableODN.getTableODN3(), id: \.id) { name in
                        MyViewBuilder(title: Text(name.name), content: Text(name.code)).buildTable59OKSSmall()
                    }
                    HStack {
                            Text("ОДН IV ст.")
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                            .font(.subheadline)
                            .bold()
                            .padding(3)
                        
                    Spacer()
                    }
                    .padding(2)
                    .background(Color.grayButton)
                    ForEach(TableODN.getTableODN4(), id: \.id) { name in
                        MyViewBuilder(title: Text(name.name), content: Text(name.code)).buildTable59OKSSmall()
                    }
                }
                .background(Color.backtables)
                .cornerRadius(10)
                .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                )
                .onTapGesture {
                    withAnimation (.easeInOut) {
                        isTextExpanded6.toggle()
                    }
                }
            }
            MyViewBuilder(title: Text("""
                                      Wells
                                      """),
                          content: Text("""
                                        Оценка клинической вероятности ТЭЛА
                                        """)).buildBlue591TextScales(isTextExpanded: isTextExpanded7)
                .onTapGesture {
                    withAnimation (.snappy) {
                        isTextExpanded7.toggle()
                    }
                }
            if isTextExpanded7{
                MyViewBuilder(title: Text("""
                                          ----
                                          """),
                              content: Text("""
                                            **Шкала для оценки клинической вероятности ТЭЛА**.
                                            """)).buildGrayTextCenter()
                VStack(spacing: 1) {
                    HStack {
                            Text("Симптомы")
                            .frame(minWidth: 250, maxWidth: .infinity, alignment: .center)
                            .font(.subheadline)
                            .bold()
                            .padding(3)
                        Spacer()
                            Text("Баллы")
                            .frame(minWidth: 50, maxWidth: .infinity, alignment: .center)
                            .font(.subheadline)
                            .bold()
                            .padding(3)
                    }
                    .padding(2)
                    .background(Color.grayButton)
                    ForEach(TableWells.getTableWells(), id: \.id) { name in
                        MyViewBuilder(title: Text(name.name), content: Text(name.code)).buildTableWells()
                    }
                    
                }
                .background(Color.backtables)
                .cornerRadius(10)
                .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                )
                .onTapGesture {
                    withAnimation (.easeInOut) {
                        isTextExpanded7.toggle()
                    }
                }
                MyViewBuilder(title: Text("""
                                          ----
                                          """),
                              content: Text("""
                                            **Интерпретация полученных результатов**
                                            **0-1 балл** — низкая
                                            **2-6 баллов** — умеренная
                                            **более 6 баллов** — высокая
                                            """)).buildGrayText()
                    .onTapGesture {
                        withAnimation (.easeInOut) {
                            isTextExpanded7.toggle()
                        }
                    }
            }
            MyViewBuilder(title: Text("""
                                      Хр. сердечная недостаточность
                                      """),
                          content: Text("""
                                        Оценка клинического состояния при ХСН
                                        """)).buildBlue591TextScales(isTextExpanded: isTextExpanded8)
                .onTapGesture {
                    withAnimation (.snappy) {
                        isTextExpanded8.toggle()
                    }
                }
            if isTextExpanded8{
                MyViewBuilder(title: Text("""
                                          ----
                                          """),
                              content: Text("""
                                            **Шкала оценки клинического состояния при ХСН (модификация Матвеева В.Ю., 2000).**
                                            """)).buildGrayTextCenter()
                VStack(spacing: 1) {
                    HStack {
                            Text("Симптомы")
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                            .font(.subheadline)
                            .bold()
                            .padding(3)
                        Spacer()
                        Spacer()
                            Text("Баллы")
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                            .font(.subheadline)
                            .bold()
                            .padding(3)
                    }
                    .padding(2)
                    .background(Color.grayButton)
                    ForEach(TableHSN.getTableHSN(), id: \.id) { name in
                        MyViewBuilder(title: Text(name.name), content: Text(name.code)).buildTable59OKSSmall()
                    }
                    
                }
                .background(Color.backtables)
                .cornerRadius(10)
                .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                )
                .onTapGesture {
                    withAnimation (.easeInOut) {
                        isTextExpanded8.toggle()
                    }
                }
                MyViewBuilder(title: Text("""
                                          ----
                                          """),
                              content: Text("""
                                            **Интерпретация полученных результатов**
                                            **0 баллов** — отсутствие клинических признаков СН
                                            **<3 баллов** — пациенты с 1 ФК СН
                                            **4-6 баллов** — пациенты со 2 ФК СН
                                            **7-8 баллов** — пациенты с 3 ФК СН
                                            **>9 баллов** — пациенты с 4 ФК СН

                                            Максимальное количество **20 баллов** — соответствует терминальной стадии сердечной недостаточности.
                                            """)).buildGrayText()
                    .onTapGesture {
                        withAnimation (.easeInOut) {
                            isTextExpanded8.toggle()
                        }
                    }
            }
            MyViewBuilder(title: Text("""
                                      ШОРС
                                      """),
                          content: Text("""
                                        Оценка риска суицида
                                        """)).buildBlue591TextScales(isTextExpanded: isTextExpanded9)
                .onTapGesture {
                    withAnimation (.snappy) {
                        isTextExpanded9.toggle()
                    }
                }
            if isTextExpanded9{
                MyViewBuilder(title: Text("""
                                          ----
                                          """),
                              content: Text("""
                                            **Шкала оценки риска суицида (ШОРС, The SAD PERSONS Scale, 1983)** — предназначена для экспресс-диагностики суицидального риска. Шкала содержит 10 пунктов, характеризующих факторы риска суицида и оцениваемых клиницистом как 0 (отсутствует), либо 1 (присутствует)
                                            """)).buildGrayText()
                VStack(spacing: 1) {
                    HStack {
                            Text("Фактор")
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                            .font(.subheadline)
                            .bold()
                            .padding(3)
                        Spacer()
                        Spacer()
                            Text("Значение")
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                            .font(.subheadline)
                            .bold()
                            .padding(3)
                    }
                    .padding(2)
                    .background(Color.grayButton)
                    ForEach(TableSuicide.getTableSuicide(), id: \.id) { name in
                        MyViewBuilder(title: Text(name.name), content: Text(name.code)).buildTable59OKSSmall()
                    }
                    
                }
                .background(Color.backtables)
                .cornerRadius(10)
                .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                )
                .onTapGesture {
                    withAnimation (.easeInOut) {
                        isTextExpanded9.toggle()
                    }
                }
                MyViewBuilder(title: Text("""
                                          ----
                                          """),
                              content: Text("""
                                            **Интерпретация полученных результатов**
                                            **0-2 балла** — низкий риск, амбулаторное наблюдение
                                            **3-4 балла** — средний риск, амбулаторное наблюдение с частыми встречами (1-3 р/неделю); дневной стационар; рассмотреть возможность госпитализации
                                            **5-6 баллов** — высокий риск, рекомендовать госпитализацию, если нет уверенности в качественном амбулаторном наблюдении (психиатрическая и социальная служба, родственники)
                                            **7-10 баллов** — очень высокий риск, госпитализация (в том числе принудительная)
                                            """)).buildGrayText()
                    .onTapGesture {
                        withAnimation (.easeInOut) {
                            isTextExpanded9.toggle()
                        }
                    }
            }
    }
    }
}

struct Tables: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    
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
        VStack (alignment: .leading, spacing: 5) {
            VStack (alignment: .leading, spacing: 1){
                Text("""
                    Таблицы:
                    """)
                    .font(.footnote)
                    .bold()
                    .padding(.leading, 10)
                    .opacity(0.5)
            }
            MyViewBuilder(title: Text("""
                                      Физиологические нормы у детей
                                      """),
                          content: Text("""
                                        Таблица возрастных норм у детей в покое
                                        """)).buildBlue591TextScales(isTextExpanded: isTextExpanded11)
                .onTapGesture {
                    withAnimation (.snappy) {
                        isTextExpanded11.toggle()
                    }
                }
            if isTextExpanded11 {
                VStack(spacing: 1) {
                    HStack {
                        Text("Возраст")
                            .frame(minWidth: 70, maxWidth: .infinity, alignment: .center)
                            .font(.subheadline)
                            .bold()
                            .padding(3)
                        Spacer()
                        Text("""
                            Масса (кг)
                            """)
                            .frame(minWidth: 88, maxWidth: .infinity, alignment: .center)
                            .font(.subheadline)
                            .bold()
                            .padding(3)
                        Spacer()
                        Text("ЧДД")
                            .frame(minWidth: 38, maxWidth: .infinity, alignment: .center)
                            .font(.subheadline)
                            .bold()
                            .padding(3)
                        Spacer()
                        Text("ЧСС")
                            .frame(minWidth: 45, maxWidth: .infinity, alignment: .center)
                            .font(.subheadline)
                            .bold()
                            .padding(3)
                        Spacer()
                        Text("АД")
                            .frame(minWidth: 40, maxWidth: .infinity, alignment: .center)
                            .font(.subheadline)
                            .bold()
                            .padding(3)
                        Spacer()
                        
                    }
                    .padding(2)
                    .background(Color.grayButton)
                    ForEach(TablePamyatki.getTableParametersChild(), id: \.id) { name in
                        MyViewBuilder59(title1: name.content1,title2: name.content2,title3: name.content3,title4: name.content4,title5: name.content5,title6: name.content6,title7: name.content7,title8: name.content8,title9: name.content9,title10: name.content10,title11: name.content11,title12: name.content12,title13: name.content13,title14: name.content14, title15: name.content15,title16: name.content16,title17: name.content17,title18: name.content18,title19: name.content19,title20: name.content20,title21: name.content21,title22: name.content22,title23: name.content23,title24: name.content24,title25: name.content25,title26: name.content26,title27: name.content27,title28: name.content28).buildTableParametersChild()
                    }
                }
                .background(Color.backtables)
                .cornerRadius(10)
                .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                    )
                .onTapGesture {
                    withAnimation (.snappy) {
                        isTextExpanded11.toggle()
                    }
                }
                MyViewBuilder(title: Text("""
                                          ----
                                          """),
                              content: Text("""
                                            **Среднее возрастное АД для детей от 1 года до 10 лет**:
                                            Систолическое = 90 + (возраст в годах) х 2
                                            Диастолическое = 60 + (возраст в годах)
                                            
                                            **Верхнее пограничное**:
                                            Систолическое = 105 + (возраст в годах) х 2
                                            Диастолическое - 75 + (возраст в годах)
                                            
                                            **Нижнее пограничное**:
                                            Систолическое = 75 + (возраст в годах) х 2
                                            Диастолическое = 45 + (возраст в годах)
                                            """)).buildGrayText()
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded11.toggle()
                        }
                    }
            }
            
            
                    MyViewBuilder(title: Text("Промывание желудка"),
                                  content: Text("""
                                    Таблица объемов для промывания желудка у детей
                                    """)).buildBlue591TextScales(isTextExpanded: isTextExpanded12)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded12.toggle()
                            }
                        }
                    if isTextExpanded12{
                        VStack(alignment: .center ,spacing: 1) {
                            HStack (alignment: .bottom){
                                Text("Возраст")
                                    .frame(minWidth: 70, maxWidth: .infinity, alignment: .center)
                                    .font(.caption)
                                    .bold()
                                    .padding(3)
                                Spacer()
                                Text("""
                                    Разовый
                                    объем (мл)
                                    """)
                                    .frame(minWidth: 88, maxWidth: .infinity, alignment: .center)
                                    .font(.caption)
                                    .bold()
                                    .padding(3)
                                Spacer()
                                Text("""
                                    Максимальный
                                    объем (мл)
                                    """)
                                    .frame(minWidth: 38, maxWidth: .infinity, alignment: .center)
                                    .font(.caption)
                                    .bold()
                                    .padding(3)
                                
                                Spacer()
                                
                            }
                            .padding(2)
                            .background(Color.grayButton)
                            ForEach(TablePamyatki.getTableZondPromivanieChild(), id: \.id) { name in
                                MyViewBuilder59(title1: name.content1,title2: name.content2,title3: name.content3,title4: name.content4,title5: name.content5,title6: name.content6,title7: name.content7,title8: name.content8,title9: name.content9,title10: name.content10,title11: name.content11,title12: name.content12,title13: name.content13,title14: name.content14, title15: name.content15,title16: name.content16,title17: name.content17,title18: name.content18,title19: name.content19,title20: name.content20,title21: name.content21,title22: name.content22,title23: name.content23,title24: name.content24,title25: name.content25,title26: name.content26,title27: name.content27,title28: name.content28).buildTableZondPromivanieChild()
                            }
                        }
                        .background(Color.backtables)
                        .cornerRadius(10)
                        .overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                            )
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded12.toggle()
                            }
                        }
                        
                    }
            MyViewBuilder(title: Text("""
                                      Шоковый индекс
                                      """),
                          content: Text("""
                                        Формула расчета шокового индекса и объема необходимой инфузии
                                        """)).buildBlue591TextScales(isTextExpanded: isTextExpanded14)
                .onTapGesture {
                    withAnimation (.snappy) {
                        isTextExpanded14.toggle()
                    }
                }
            if isTextExpanded14 {
                VStack (spacing: 1) {
                    MyViewBuilder(title: Text("""
                                              ----
                                              """),
                                  content: Text("""
                                                **Формула расчета шокового индекса (ШИ)**:
                                                """)).buildGrayInHidden59Text()
                        .background(Color.grayButton)
                    MyViewBuilder(title: Text("""
                                          ----
                                          """),
                                  content: Text("""
                                            **ЧСС**     **/**   **систолическое АД**    **=**   **ШИ**
                                            """)).buildGrayInHidden59TextCenter()
                        .background(Color.grayButton)
                    MyViewBuilder(title: Text("""
                                              ----
                                              """),
                                  content: Text("""
                                                **Нормальная величина ШИ** = 60/120 = **0,5**
                                                """)).buildGrayInHidden59Text()
                        .background(Color.grayButton)
                }
                .background(Color.backtables)
                .cornerRadius(10)
                .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                    )
                .onTapGesture {
                    withAnimation (.snappy) {
                        isTextExpanded14.toggle()
                    }
                }
                VStack(alignment: .center ,spacing: 1) {
                    HStack (alignment: .bottom){
                        Text("""
                            Шоковый
                              индекс
                            """)
                            .frame(minWidth: 70, maxWidth: .infinity, alignment: .center)
                            .font(.subheadline)
                            .bold()
                            .padding(3)
                        Spacer()
                        Text("""
                            Дефицит
                              ОЦК %
                            """)
                            .frame(minWidth: 88, maxWidth: .infinity, alignment: .center)
                            .font(.subheadline)
                            .bold()
                            .padding(3)
                        Spacer()
                        Text("""
                                Объем
                            инфузии (л)
                            """)
                            .frame(minWidth: 38, maxWidth: .infinity, alignment: .center)
                            .font(.subheadline)
                            .bold()
                            .padding(3)
                        
                        Spacer()
                        
                    }
                    .padding(2)
                    .background(Color.grayButton)
                    ForEach(TablePamyatki.getTableShockIndex(), id: \.id) { name in
                        MyViewBuilder59(title1: name.content1,title2: name.content2,title3: name.content3,title4: name.content4,title5: name.content5,title6: name.content6,title7: name.content7,title8: name.content8,title9: name.content9,title10: name.content10,title11: name.content11,title12: name.content12,title13: name.content13,title14: name.content14, title15: name.content15,title16: name.content16,title17: name.content17,title18: name.content18,title19: name.content19,title20: name.content20,title21: name.content21,title22: name.content22,title23: name.content23,title24: name.content24,title25: name.content25,title26: name.content26,title27: name.content27,title28: name.content28).buildTableShockIndex()
                    }
                }
                .background(Color.backtables)
                .cornerRadius(10)
                .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                    )
                .onTapGesture {
                    withAnimation (.snappy) {
                        isTextExpanded14.toggle()
                    }
                }
                
                
            }
            MyViewBuilder(title: Text("""
                                      Расчеты кислорода
                                      """),
                          content: Text("""
                                        Остаточный объем кислорода в баллоне и расчет МОД
                                        """)).buildBlue591TextScales(isTextExpanded: isTextExpanded13)
                .onTapGesture {
                    withAnimation (.snappy) {
                        isTextExpanded13.toggle()
                    }
                }
            if isTextExpanded13 {
                VStack (spacing: 1) {
                    MyViewBuilder(title: Text("""
                                              ----
                                              """),
                                  content: Text("""
                                                **Расчет количества кислорода в баллоне**:
                                                """)).buildGrayInHidden59Text()
                        .background(Color.grayButton)
                    MyViewBuilder(title: Text("""
                                          ----
                                          """),
                                  content: Text("""
                                            Объем                       показания
                                            баллона         **Х**        манометра       **Х**       **10**
                                            в **Литрах**                     в **МПа**
                                            """)).buildGrayInHidden59TextCenter()
                        .background(Color.grayButton)
                    MyViewBuilder(title: Text("""
                                              ----
                                              """),
                                  content: Text("""
                                                Например:
                                                Баллон объемом **2 литра** с показанием манометра **10 МПа** содержит **200 литров 100% кислорода**
                                                """)).buildGrayInHidden59Text()
                        .background(Color.grayButton)
                }
                .background(Color.backtables)
                .cornerRadius(10)
                .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                    )
                .onTapGesture {
                    withAnimation (.snappy) {
                        isTextExpanded13.toggle()
                    }
                }
                VStack (spacing: 1) {
                    MyViewBuilder(title: Text("""
                                              ----
                                              """),
                                  content: Text("""
                                                **Формула Дарбиняна**:
                                                Используется для расчета минутного объема дыхания (**МОД**)
                                                """)).buildGrayInHidden59Text()
                        .background(Color.grayButton)
                    
                    MyViewBuilder(title: Text("""
                                          ----
                                          """),
                                  content: Text("""
                                            Масса тела в **Кг**        **/**        **10**       **+**       **2**
                                            """)).buildGrayInHidden59TextCenter()
                        .background(Color.grayButton)
                        
                    
                    MyViewBuilder(title: Text("""
                                              ----
                                              """),
                                  content: Text("""
                                                Например:
                                                Пациент **80 кг** / 10 + 2 = **10 литров в минуту**
                                                """)).buildGrayInHidden59Text()
                        .background(Color.grayButton)
                }
                .background(Color.backtables)
                .cornerRadius(10)
                .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                    )
                .onTapGesture {
                    withAnimation (.snappy) {
                        isTextExpanded13.toggle()
                    }
                }
                VStack (spacing: 1) {
                    MyViewBuilder(title: Text("""
                                              ----
                                              """),
                                  content: Text("""
                                                **На сколько минут хватит кислорода**:
                                                """)).buildGrayInHidden59Text()
                        .background(Color.grayButton)
                    MyViewBuilder(title: Text("""
                                          ----
                                          """),
                                  content: Text("""
                                                        Количество
                                            оставшегося кислорода         **/**       **МОД**
                                                          в **Литрах**
                                            """)).buildGrayInHidden59TextCenter()
                        .background(Color.grayButton)
                    MyViewBuilder(title: Text("""
                                              ----
                                              """),
                                  content: Text("""
                                                Например:
                                                - Баллон объемом **2 литра** с показанием манометра **15 МПа** содержит **300 литров 100% кислорода**.
                                                - Масса тела пациента **80 кг**.
                                                - **МОД** пациента (исходя из формулы Дарбиняна) равен **10 литрам в минуту**
                                                
                                                **300 л / 10 л в мин. = 30 минут**
                                                """)).buildGrayInHidden59Text()
                        .background(Color.grayButton)
                }
                .background(Color.backtables)
                .cornerRadius(10)
                .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                    )
                .onTapGesture {
                    withAnimation (.snappy) {
                        isTextExpanded13.toggle()
                    }
                }
            }
            
              
        }
    }
}


