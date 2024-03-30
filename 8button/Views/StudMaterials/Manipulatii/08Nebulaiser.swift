//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct _8Nebulaiser: View {
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
    @State private var isTextExpanded15 = true
    @State private var isTextExpanded16 = false
    @State private var isTextExpanded17 = true
    @State private var isTextExpanded18 = false
    @State private var isTextExpanded19 = false
    @State private var isTextExpanded20 = false
    @State private var isTextExpanded21 = false
    @State private var isTextExpanded22 = false
    @State private var isTextExpanded23 = false
    @State private var isTextExpanded24 = false
    @State private var isTextExpanded25 = false
    @State private var isTextExpanded26 = false
    @State private var isTextExpanded27 = false
    @State private var isTextExpanded28 = false
    @State private var isTextExpanded29 = false
    @State private var isTextExpanded30 = false
    
    var body: some View {
        ScrollView {
            VStack (spacing:5) {
                MyViewBuilder(title: Text("Факты"),
                              content: Text("""
                                            **Применение небулайзера 
                                            в условиях скорой помощи**
                                            """
                                           )).buildGrayTextCenter()
                    .multilineTextAlignment(.center)
                VStack {
                    Image("nebulaiser1")
                        .resizable()
                        .scaledToFit()
                        .clipShape(Rectangle())
                        .cornerRadius(10)
                        .shadow(color: .shadowGrayRectangle, radius: 0.5)
                        .padding(10)
                }
                .onTapGesture {
                    withAnimation (.snappy) {
                        isTextExpanded1.toggle()
                    }
                }
                //                    ZStack {
                //                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                //                        VStack (spacing: 1) {
               
                MyViewBuilder(title: Text("Преимущества небулайзерной терапии"),
                              content: Text("""
                                                – **безболезненный способ введения лекарства**;
                                                – **создание высоких концентраций ЛС непосредственно в очаге поражения**;
                                                – **всасывание через слизистую дыхательных путей происходит гораздо быстрее, чем через слизистую ЖКТ**;
                                                – **ЛС попадают в малый круг, минуя печень** – т.е. в неизменном виде;
                                                – **терапевтическая концентрация медикаментов в крови после ингаляции держится вдвое дольше, чем при внутримышечном их введении**.
                                                """
                                           )).buildDualBlockBlueGray(isTextExpanded: isTextExpanded2)
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded2.toggle()
                        }
                    }
                MyViewBuilder(title: Text("Правила применения препаратов"),
                              content: Text("""
                                                **Рекомендуемую дозу препарата следует разбавить 0.9% раствором натрия хлорида до достижения объема препарата 3-4 мл, залить в небулайзер и сделать ингаляцию**.
                                                
                                                Препарат следует разбавлять 0.9% раствором натрия хлорида каждый раз непосредственно перед применением. Оставшийся после ингаляции раствор выливают.
                                                """
                                           )).buildDualBlockBlueGray(isTextExpanded: isTextExpanded3)
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded3.toggle()
                        }
                    }
                MyViewBuilder(title: Text("Факты"),
                              content: Text("""
                                            **Применяемые препараты:**
                                            """
                                           )).buildGrayTextCenter()
                    .multilineTextAlignment(.center)
                MyViewBuilder(title: Text("Беротек (Фенотерол)"),
                              content: Text("""
                                                **Класс препарата**: 
                                                бета-адреномиметик
                                                
                                                **Форма выпуска**: 
                                                раствор для ингаляций 0.1% 20 мл
                                                
                                                **Дозировка**:
                                                – **дети до 6 лет** (с массой тела менее 22 кг): 1 капля/кг массы тела, но не более 0.5 мл (10 капель) на одну дозу
                                                – **дети от 6 до 12 лет** (с массой тела около 22-36 кг): 0.25-0.5 мл (5-10 капель), в тяжелых случаях - 1 мл (20 капель)
                                                – **взрослые и дети старше 12 лет**: 0.5 мл (10 капель); в тяжелых случаях - 1-1.25 мл (20-25 капель)
                                                
                                                **Противопоказания к применению**:
                                                – тахиаритмия;
                                                – гипертрофическая обструктивная кардиомиопатия;
                                                """
                                           )).buildDualBlockBlueGray(isTextExpanded: isTextExpanded4)
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded4.toggle()
                        }
                    }
                MyViewBuilder(title: Text("Атровент (Ипратропия бромид)"),
                              content: Text("""
                                                **Класс препарата**: 
                                                М-холиноблокатор
                                                
                                                **Форма выпуска**: 
                                                раствор для ингаляций 0.025% 20 мл
                                                
                                                **Показания**: 
                                                бронхиальная астма, ХОБЛ
                                                
                                                **Дозировка**:
                                                – **дети до 6 лет**: 0,4-1 мл (8-20 капель)
                                                – **дети от 6 до 12 лет**: 1 мл (20 капель)
                                                – **взрослые и дети старше 12 лет**: 2 мл (40 капель)
                                                
                                                **Противопоказания к применению**:
                                                – тахиаритмия;
                                                – гипертрофическая обструктивная кардиомиопатия;
                                                """
                                           )).buildDualBlockBlueGray(isTextExpanded: isTextExpanded5)
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded5.toggle()
                        }
                    }
                MyViewBuilder(title: Text("Беродуал / Пульмовент Комби (Фенотерол + Ипратропия бронид)"),
                              content: Text("""
                                                **Класс препарата**: 
                                                бета-адреномиметик + М-холиноблокатор
                                                
                                                **Форма выпуска**: 
                                                раствор для ингаляций (0.5 мг+0.25 мг)/мл 20 мл
                                                
                                                **Показания**: 
                                                бронхиальная астма, ХОБЛ
                                                
                                                **Дозировка**:
                                                – **дети до 6 лет**: 0,1 мл (2 капли) на кг массы тела, но не более 0,5 мл (10 капель)
                                                – **дети от 6 до 12 лет**: от 0,5 мл (10 капель) до 2 мл (40 капель)
                                                – **взрослые и дети старше 12 лет**: от 1 мл (20 капель) до 2.5 мл (50 капель)
                                                """
                                           )).buildDualBlockBlueGray(isTextExpanded: isTextExpanded6)
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded6.toggle()
                        }
                    }
                MyViewBuilder(title: Text("Пульмикорт / Будесонид Интели (Будесонид)"),
                              content: Text("""
                                                **Класс препарата**:
                                                ингаляционный ГКС
                                                
                                                **Форма выпуска**:
                                                суспензия для ингаляций
                                                
                                                **Показания**:
                                                обострения ХОБЛ, бронхиальная астма, стенозирующий ларинготрахеит (ложный круп)
                                                
                                                **Дозировка**:
                                                – **дети от 6 месяцев до 12 лет**: 1-2 мл
                                                – **взрослые и дети старше 12 лет**: 2-4 мл
                                                
                                                **Особые указания**:
                                                – после ингаляции следует прополоскать рот водой для снижения риска развития кандидоза ротоглотки;
                                                – для предотвращения раздражения кожи после использования маски следует промыть кожу лица водой;
                                                
                                                **Противопоказания к применению**:
                                                – детский возраст до 6 мес
                                                """
                                           )).buildDualBlockBlueGray(isTextExpanded: isTextExpanded7)
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded7.toggle()
                        }
                    }
                MyViewBuilder(title: Text("Не описан ингаляционный путь, но возможно применение"),
                              content: Text("""
                                                **Адреналин**
                                                **Показания**: бронхоспазм, аллергический отек гортани, стенозирующий ларинготрахеит (ложный круп), декомпенсированный стеноз гортани
                                                **Дозировка**: 0,5-1 мл адреналина + 3 мл 0,9% натрия хлорида
                                                **Противопоказания к применению**: выраженная тахикардия

                                                **Магния сульфат**
                                                Бронходилатирующий эффект
                                                **Дозировка**: 25% сульфата магния 1 мл + 2 мл 0,9% натрия хлорида

                                                **Фуросемид**
                                                Бронходилатирующий эффект
                                                **Дозировка**: 1% фуросемид 1-2 мл + 2-3 мл 0,9% натрия хлорида

                                                **Лидокаин**
                                                **Показания**: навязчивый непродуктивный рефрактерный кашель, вирусный трахеит, ларинготрахеит, рак легких
                                                **Дозировка**: 2% лидокаин 1-2 мл + 2-3 мл 0,9% натрия хлорида
                                                """
                                           )).buildDualBlockBlueGray(isTextExpanded: isTextExpanded8)
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded8.toggle()
                        }
                    }
                MyViewBuilder(title: Text("Не применяются препараты"),
                              content: Text("""
                                                **Эуфиллин** – категорически не применяется из-за полного отсутствия эффекта. Не имеет точек положения действия на дыхательных путях, подходит только для внутривенного капельного/струйного введения.

                                                **Преднизолон / Дексаметазон** – бессмысленно ингалировать, оказывают только системное действие. Т.е. проще ввести внутривенно/внутримышечно.
                                                """
                                           )).buildDualBlockBlueGray(isTextExpanded: isTextExpanded9)
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded9.toggle()
                        }
                    }
                
                //                        }
                //                    }
                
            }
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
                    Text("Манипуляции")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("""
                    «Применение небулайзера»
                    """)
                    .font(.caption2)
                    .foregroundStyle(Color.toolBar)
                }
            }
            
        }
    }
    
}
#Preview {
    _8Nebulaiser()
}


