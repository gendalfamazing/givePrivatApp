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
                                        .padding(.vertical, 1.5)
                                    
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

