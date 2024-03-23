//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct Postanovlenie99Alg14View: View {
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
    var body: some View {
            ScrollView {
                Spacer()
                VStack (spacing: 5) {
                    
                            MyViewBuilder(title: Text("dfdfdf"),content: Text("""
                                        **ЛС для седации пациентов на ИВЛ**
                                        """)
                            ).buildGrayTextCenter()
                      
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        VStack {
                            MyViewBuilder(title: Text("Алгоритм 1"), content: Text("**1. Пропофол**")).buildBlue59Text(isTextExpanded: isTextExpanded1)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded1.toggle()
                                        
                                    }
                                }
                            if isTextExpanded1{
                                VStack(spacing: 1) {
                                    MyViewBuilder(title: Text(""),content: Text("""
                                                        **Концентрация раствора**:
                                                        """)
                                    ).buildGrayInText()
                                    MyViewBuilder(title: Text(""),content: Text("""
                                                1 % раствор
                                                """)
                                    ).buildGrayInHiddenText()
                                    MyViewBuilder(title: Text(""),content: Text("""
                                                        **Дозировка в мл/ч для пациентов 70 кг (в скобках указана дозировка на кг массы тела)**:
                                                        """)
                                    ).buildGrayInHiddenText()
                                    MyViewBuilder(title: Text(""),content: Text("""
                                                5–30 мл/ч (0,5–4 мг/кг/ч)
                                                """)
                                    ).buildGrayInHiddenText()
                                    MyViewBuilder(title: Text(""),content: Text("""
                                                        **Описание**:
                                                        """)
                                    ).buildGrayInText()
                                    MyViewBuilder(title: Text(""),content: Text("""
                                                Средство выбора для кратковременной седации (однако после глубокой седации отмечено более длительное пробуждение, чем после поверхностной седации).
                                                Может вызвать артериальную гипотензию (особенно при гиповолемии) и гипертриглицеридемию.
                                                Не следует превышать максимальную дозу и вводить его в течение > 7 суток; при более продолжительном введении описан «синдром, связанный с инфузией пропофола» (PRIS) – внезапная рефрактерная брадикардия и асистолия
                                                """)
                                    ).buildGrayInHiddenText()
                                }
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded1.toggle()
                                        
                                    }
                                }
                            }
                        }
                    }
                    
                    MyViewBuilder(title: Text("Алгоритм 1"), content: Text("**2. Бензодиазепины**")).buildBlue591Text(isTextExpanded: isTextExpanded2)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded2.toggle()
                                if isTextExpanded2 == false {
                                    isTextExpanded5 = false
                                    isTextExpanded6 = false
                                }
                            }
                        }
                    if isTextExpanded2 {
                        VStack (spacing: 5) {
                            ZStack {
                                MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                                VStack {
                                    MyViewBuilder(title: Text("Алгоритм 1"), content: Text("**2.1 Мидазолам**")).buildBlue591TextLowLevel(isTextExpanded: isTextExpanded5)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded5.toggle()
                                                
                                            }
                                        }
                                    if isTextExpanded5{
                                        VStack (spacing: 1) {
                                            MyViewBuilder(title: Text(""),content: Text("""
                                                                **Концентрация раствора**:
                                                                """)
                                            ).buildGrayInText()
                                            MyViewBuilder(title: Text(""),content: Text("""
                                                        0,5 % раствор
                                                        """)
                                            ).buildGrayInHiddenText()
                                            MyViewBuilder(title: Text(""),content: Text("""
                                                                **Дозировка в мл/ч для пациентов 70 кг (в скобках указана дозировка на кг массы тела)**:
                                                                """)
                                            ).buildGrayInHiddenText()
                                            MyViewBuilder(title: Text(""),content: Text("""
                                                            Нагрузочная доза 0,3–0,6 мл (1,5–3 мг, или 0,1–0,2 мг/кг), поддерживающая инфузия 0,4–4 мл/ч (0,03–0,3 мг/кг/ч) Максимально вводят до 96 мл сутки при необходимости глубокой седации или на фоне использования экстракорпоральных методик лечения
                                                            """)
                                            ).buildGrayInHiddenText()
                                            MyViewBuilder(title: Text(""),content: Text("""
                                                                **Описание**:
                                                                """)
                                            ).buildGrayInText()
                                            MyViewBuilder(title: Text(""),content: Text("""
                                                        ЛС для седации короткого действия; при применении > 48– 72 ч отмечено более длительное пробуждение.
                                                        Может вызвать артериальную гипотензию.
                                                        При сниженной перфузии печени практически не метаболизируется; при почечной недостаточности накапливаются активные метаболиты
                                                        """)
                                            ).buildGrayInHiddenText()
                                        }
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded5.toggle()
                                                
                                            }
                                        }
                                    }
                                }
                            }
                            ZStack {
                                MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                                VStack {
                                    MyViewBuilder(title: Text("Алгоритм 1"), content: Text("**2.2 Диазепам**")).buildBlue591TextLowLevel(isTextExpanded: isTextExpanded6)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded6.toggle()
                                                
                                            }
                                        }
                                    if isTextExpanded6{
                                        VStack (spacing: 1){
                                            MyViewBuilder(title: Text(""),content: Text("""
                                                                **Концентрация раствора**:
                                                                """)
                                            ).buildGrayInText()
                                            MyViewBuilder(title: Text(""),content: Text("""
                                                        0,5 % раствор
                                                        """)
                                            ).buildGrayInHiddenText()
                                            MyViewBuilder(title: Text(""),content: Text("""
                                                                **Дозировка в мл/ч для пациентов 70 кг (в скобках указана дозировка на кг массы тела)**:
                                                                """)
                                            ).buildGrayInHiddenText()
                                            MyViewBuilder(title: Text(""),content: Text("""
                                                            Нагрузочная доза 5–10 мг (1–2 мл); поддерживающая доза по 0,03–0,1 мг/кг каждые 30 мин. – 6 ч или инфузия 0,5–2 мл/ч (0,05–0,1 мг/кг/ч)
                                                            """)
                                            ).buildGrayInHiddenText()
                                            MyViewBuilder(title: Text(""),content: Text("""
                                                                **Описание**:
                                                                """)
                                            ).buildGrayInText()
                                            MyViewBuilder(title: Text(""),content: Text("""
                                                        ЛС выбора для продолжительной седации (длительный период полувыведения ~ 20–120 ч; имеет активные метаболиты); возможно отсроченное угнетение дыхания после прекращения ИВЛ.
                                                        """)
                                            ).buildGrayInHiddenText()
                                        }
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded6.toggle()
                                                
                                            }
                                        }
                                    }
                                    
                                }
                            }
                        }
                    }
                    
                    
                    MyViewBuilder(title: Text("Алгоритм 1"), content: Text("**3. Опиоиды**")).buildBlue591Text(isTextExpanded: isTextExpanded3)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded3.toggle()
                                if isTextExpanded3 == false {
                                    isTextExpanded7 = false
                                    isTextExpanded8 = false
                                }
                            }
                        }
                    if isTextExpanded3 {
                        VStack (spacing: 5) {
                            ZStack {
                                MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                                VStack {
                                    MyViewBuilder(title: Text("Алгоритм 1"), content: Text("**3.1 Фентанил**")).buildBlue591TextLowLevel(isTextExpanded: isTextExpanded7)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded7.toggle()
                                                
                                            }
                                        }
                                    if isTextExpanded7{
                                        VStack (spacing: 1) {
                                            MyViewBuilder(title: Text(""),content: Text("""
                                                                **Концентрация раствора**:
                                                                """)
                                            ).buildGrayInText()
                                            MyViewBuilder(title: Text(""),content: Text("""
                                                        0,005 % раствор
                                                        """)
                                            ).buildGrayInHiddenText()
                                            MyViewBuilder(title: Text(""),content: Text("""
                                                                **Дозировка в мл/ч для пациентов 70 кг (в скобках указана дозировка на кг массы тела)**:
                                                                """)
                                            ).buildGrayInHiddenText()
                                            MyViewBuilder(title: Text(""),content: Text("""
                                                                Нагрузочная доза 50–100 мкг (1–2 мл), поддерживающая инфузия 1–4 мл/ч
                                                                Максимально вводят до 96 мл сутки при необходимости глубокой седации или на фоне использования экстракорпоральных методик лечения
                                                                """)
                                            ).buildGrayInHiddenText()
                                            MyViewBuilder(title: Text(""),content: Text("""
                                                                **Описание**:
                                                                """)
                                            ).buildGrayInText()
                                            MyViewBuilder(title: Text(""),content: Text("""
                                                        Наркотический аналгетик короткого действия со слабым седативным эффектом. Накапливается при длительном введении, а также при нарушении функции печени.
                                                        Вызывает брадикардию и артериальную гипотензию, мышечную ригидность, тошноту и рвоту
                                                        """)
                                            ).buildGrayInHiddenText()
                                        }
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded7.toggle()
                                                
                                            }
                                        }
                                    }
                                    
                                }
                            }
                            ZStack {
                                MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                                VStack {
                                    MyViewBuilder(title: Text("Алгоритм 1"), content: Text("**3.2 Морфин**")).buildBlue591TextLowLevel(isTextExpanded: isTextExpanded8)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded8.toggle()
                                                
                                            }
                                        }
                                    if isTextExpanded8{
                                        VStack (spacing: 1) {
                                            MyViewBuilder(title: Text(""),content: Text("""
                                                                **Концентрация раствора**:
                                                                """)
                                            ).buildGrayInText()
                                            MyViewBuilder(title: Text(""),content: Text("""
                                                        1 % раствор
                                                        """)
                                            ).buildGrayInHiddenText()
                                            MyViewBuilder(title: Text(""),content: Text("""
                                                                **Дозировка в мл/ч для пациентов 70 кг (в скобках указана дозировка на кг массы тела)**:
                                                                """)
                                            ).buildGrayInHiddenText()
                                            MyViewBuilder(title: Text(""),content: Text("""
                                                            Нагрузочная доза 2–10 мг, поддерживающая инфузия 2–10 мг/ч (разводят 2–4 мл до 20 мл до концентрации 1–2 мг/мл)
                                                            """)
                                            ).buildGrayInHiddenText()
                                            MyViewBuilder(title: Text(""),content: Text("""
                                                                **Описание**:
                                                                """)
                                            ).buildGrayInText()
                                            MyViewBuilder(title: Text(""),content: Text("""
                                                        Наркотический аналгетик средней продолжительности действия с умеренным седативным и выраженным угнетающим действием на дыхательный центр. Снижает преднагрузку, (назначают при отеке легких). Активные метаболиты накапливаются при нарушении функции почек.
                                                        Вызывает брадикардию, артериальную гипотензию, тошноту, рвоту и парез желудочно-кишечного тракта; может вызвать зуд вследствие высвобождения гистамина
                                                        """)
                                            ).buildGrayInHiddenText()
                                        }
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded8.toggle()
                                                
                                            }
                                        }
                                    }
                                    
                                }
                            }
                        }
                    }
                    
                    
                    MyViewBuilder(title: Text("Алгоритм 1"), content: Text("**4. Агонисты a2-адренорецепторов**")).buildBlue591Text(isTextExpanded: isTextExpanded4)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded4.toggle()
                                if isTextExpanded4 == false {
                                    isTextExpanded9 = false
                                    isTextExpanded10 = false
                                }
                            }
                        }
                    if isTextExpanded4 {
                        VStack (spacing: 5) {
                            ZStack {
                                MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                                VStack {
                                    MyViewBuilder(title: Text("Алгоритм 1"), content: Text("**4.1 Клонидин** *")).buildBlue591TextLowLevel(isTextExpanded: isTextExpanded9)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded9.toggle()
                                                
                                            }
                                        }
                                    if isTextExpanded9{
                                        VStack (spacing: 1) {
                                            MyViewBuilder(title: Text(""),content: Text("""
                                                                **Концентрация раствора**:
                                                                """)
                                            ).buildGrayInText()
                                            MyViewBuilder(title: Text(""),content: Text("""
                                                        0,01 % раствор
                                                        """)
                                            ).buildGrayInHiddenText()
                                            MyViewBuilder(title: Text(""),content: Text("""
                                                                **Дозировка в мл/ч для пациентов 70 кг (в скобках указана дозировка на кг массы тела)**:
                                                                """)
                                            ).buildGrayInHiddenText()
                                            MyViewBuilder(title: Text(""),content: Text("""
                                                                Разводят 6 мл 0,01 % раствора до 20 мл или 15 мл до 50 мл
                                                                Скорость инфузии:
                                                                2–10 мл/ч (0,8–4 мкг/кг/ч)
                                                                В тяжелых случаях чистый раствор 20 мл 1–2 мл/ч
                                                                Максимальная доза 4,8 мг/сутки (в особо тяжелых случаях синдрома отмены алкоголя, делирия или синдрома отмены опиодов до 10 мг/сутки)
                                                                """)
                                            ).buildGrayInHiddenText()
                                            MyViewBuilder(title: Text(""),content: Text("""
                                                                **Описание**:
                                                                """)
                                            ).buildGrayInText()
                                            MyViewBuilder(title: Text(""),content: Text("""
                                                        Применяют для снижения дозы седативных ЛС и опиоидов при повышенном тонусе вегетативной нервной системы, в том числе при синдроме отмены алкоголя и после длительной седации опиоидами.
                                                        Не вызывает угнетения дыхания. Способствует развитию брадикардии и артериальной гипотензии
                                                        """)
                                            ).buildGrayInHiddenText()
                                        }
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded9.toggle()
                                                
                                            }
                                        }
                                    }
                                    
                                }
                            }
                            ZStack {
                                MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                                VStack {
                                    MyViewBuilder(title: Text("Алгоритм 1"), content: Text("**4.2 Дексмедетомидин**")).buildBlue591TextLowLevel(isTextExpanded: isTextExpanded10)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded10.toggle()
                                                
                                            }
                                        }
                                    if isTextExpanded10{
                                        VStack (spacing: 1) {
                                            MyViewBuilder(title: Text(""),content: Text("""
                                                                **Концентрация раствора**:
                                                                """)
                                            ).buildGrayInText()
                                            MyViewBuilder(title: Text(""),content: Text("""
                                                        0,01 % раствор
                                                        """)
                                            ).buildGrayInHiddenText()
                                            MyViewBuilder(title: Text(""),content: Text("""
                                                                **Дозировка в мл/ч для пациентов 70 кг (в скобках указана дозировка на кг массы тела)**:
                                                                """)
                                            ).buildGrayInHiddenText()
                                            MyViewBuilder(title: Text(""),content: Text("""
                                                            Разводят 2 мл 0,01 % раствора до 50 мл (4 мкг/мл)
                                                            Нагрузочная доза 17 мл/ч (0,7 мкг/кг) в течение 10 мин. (до наступления эффекта), поддерживающая инфузия 3,5–12,5 мл/ч (0,2– 0,7 мкг/кг/ч)
                                                            """)
                                            ).buildGrayInHiddenText()
                                            MyViewBuilder(title: Text(""),content: Text("""
                                                                **Описание**:
                                                                """)
                                            ).buildGrayInText()
                                            MyViewBuilder(title: Text(""),content: Text("""
                                                        Аналогично описанию в пп. 4.1. Селективный агонист альфа-2 адренорецепторов.
                                                        Обладает анальгезирующим эффектом.
                                                        Во время индукции возможна транзиторная гипертензия.
                                                        При нарушении функции почек коррекции дозы не требуется, при нарушении функции печени дозу снижают
                                                        """)
                                            ).buildGrayInHiddenText()
                                        }
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded10.toggle()
                                                
                                            }
                                        }
                                    }
                                    
                                }
                            }
                        }
                    }
                    
                    MyViewBuilder(title: Text("Алгоритм 1"), content: Text("**5. Другие средства**")).buildBlue591Text(isTextExpanded: isTextExpanded13)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded13.toggle()
                                if isTextExpanded13 == false {
                                    isTextExpanded11 = false
                                    isTextExpanded12 = false
                                }
                            }
                        }
                    if isTextExpanded13 {
                        VStack (spacing: 5) {
                            ZStack {
                                MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                                VStack {
                                    MyViewBuilder(title: Text("Алгоритм 1"), content: Text("**5.1 Тиопентал натрия** *")).buildBlue591TextLowLevel(isTextExpanded: isTextExpanded11)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded11.toggle()
                                                
                                            }
                                        }
                                    if isTextExpanded11{
                                        VStack (spacing: 1) {
                                            MyViewBuilder(title: Text(""),content: Text("""
                                                                **Концентрация раствора**:
                                                                """)
                                            ).buildGrayInText()
                                            MyViewBuilder(title: Text(""),content: Text("""
                                                        Порошок лиофилизированный для приготовления раствора для внутривенного введения 0,5 г. Порошок лиофилизированный для приготовления раствора для внутривенного введения 1 г
                                                        """)
                                            ).buildGrayInHiddenText()
                                            MyViewBuilder(title: Text(""),content: Text("""
                                                                **Дозировка в мл/ч для пациентов 70 кг (в скобках указана дозировка на кг массы тела)**:
                                                                """)
                                            ).buildGrayInHiddenText()
                                            MyViewBuilder(title: Text(""),content: Text("""
                                                                Разводят 0,5 г в 20 мл (получают 2,5 % раствор) или 1 г в 50 мл (получают 2 % раствор)
                                                                Скорость инфузии:
                                                                1–3 мг/кг/ч (4–10 мл/ч 2 % раствора или 5–12,5 мл/ч 2,5 % раствора), в нейрохирургии назначают до 5 мкг/кг/ч
                                                                """)
                                            ).buildGrayInHiddenText()
                                            MyViewBuilder(title: Text(""),content: Text("""
                                                                **Описание**:
                                                                """)
                                            ).buildGrayInText()
                                            MyViewBuilder(title: Text(""),content: Text("""
                                                        Используется при невозможности использования других средств седации или отсутствия их эффекта.
                                                        Кумулирует (отмечается замедленное пробуждение; требует снижения доз после длительной инфузии).
                                                        Угнетает дыхание (продолжительное введение требует проведения ИВЛ), оказывает отрицательное инотропное действие (способствует развитию артериальной гипотензии), при длительном назначении повышает частоту развития гнойных осложнений (за счет иммуносупрессии).
                                                        Индуцирует микросомальные ферменты (изменяет фармакокинетику многих ЛС). При длительном введении
                                                        в периферическую вену частым осложнением является флебит (предпочтительно вводить
                                                        в отдельный канал многоканального центрального венозного катетера)
                                                        """)
                                            ).buildGrayInHiddenText()
                                        }
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded11.toggle()
                                                
                                            }
                                        }
                                    }
                                    
                                }
                            }
                            ZStack {
                                MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                                VStack {
                                    MyViewBuilder(title: Text("Алгоритм 1"), content: Text("**5.2 Кетамин**")).buildBlue591TextLowLevel(isTextExpanded: isTextExpanded12)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded12.toggle()
                                                
                                            }
                                        }
                                    if isTextExpanded12{
                                        VStack (spacing: 1) {
                                            MyViewBuilder(title: Text(""),content: Text("""
                                                                **Концентрация раствора**:
                                                                """)
                                            ).buildGrayInText()
                                            MyViewBuilder(title: Text(""),content: Text("""
                                                        5 % раствор
                                                        """)
                                            ).buildGrayInHiddenText()
                                            MyViewBuilder(title: Text(""),content: Text("""
                                                                **Дозировка в мл/ч для пациентов 70 кг (в скобках указана дозировка на кг массы тела)**:
                                                                """)
                                            ).buildGrayInHiddenText()
                                            MyViewBuilder(title: Text(""),content: Text("""
                                                            Разводят 10 мл (500 мг)
                                                            до 50 мл или 200 мг
                                                            до 20 мл,
                                                            скорость инфузии: 2,0–12,5 мл/ч (0,2–3 мг/кг/ч)
                                                            """)
                                            ).buildGrayInHiddenText()
                                            MyViewBuilder(title: Text(""),content: Text("""
                                                                **Описание**:
                                                                """)
                                            ).buildGrayInText()
                                            MyViewBuilder(title: Text(""),content: Text("""
                                                        В дозе >1 мг/кг/ч часто наблюдаются психомиметические эффекты, несмотря на комбинацию с пропофолом или мидазоламом. В дозе <1 мг/кг/ч используют для снижения толерантности к опиоидам.
                                                        Не рекомендуют вводить в течение длительного времени
                                                        """)
                                            ).buildGrayInHiddenText()
                                        }
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded12.toggle()
                                                
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    
                    
                    
                    MyViewBuilder(title: Text("dfdfdf"),content: Text("""
                                        * Off-label, назначаются врачебным консилиумом.
                                        """)
                    ).buildGrayText()
                    
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
                    Text("Приложение 6")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«ЛС для седации пациентов на ИВЛ»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            
        }
    }
    
}
#Preview {
    Postanovlenie99Alg14View()
}

