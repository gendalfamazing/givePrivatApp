//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct _1Vnutrikostniy: View {
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
    @State private var isTextExpanded15 = false
    @State private var isTextExpanded16 = false
    @State private var isTextExpanded17 = false
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
                VStack {
                    MyViewBuilder(title: Text("Факты"),
                                  content: Text("""
                                                **Внутрикостный доступ**
                                                на примере системы B.I.G.
                                                """
                                               )).buildGrayTextCenter()
                        .multilineTextAlignment(.center)
                    Image("Vnutricostniy1")
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
                MyViewBuilder(title: Text("Факты"),
                              content: Text("""
                                                        1. Обеспечение в/к доступа занимает **менее 1 минуты**;
                                                        2. **Безопасное нахождение** иглы в губчатом веществе кости **до 6 часов** (по инструкции производителя), **до 1 суток** (по данным литературы)
                                                        3. **Внутрикостно можно вводить любые лекарственные препараты и инфузионные среды**, предназначенные для в/в введения;
                                                        4. **Скорость наступления эффекта лекарственных препаратов одинакова для в/к и в/в введения**;
                                                        **дозы** в/к и в/в вводимых лекарственных препаратов **одинаковы**;
                                                        5. **При использовании мешка под давлением или насоса для инфузии скорость инфузии такая же, как при в/в инфузии**.
                                                        **Большеберцовый доступ** — аналогично катетеру **20G**,
                                                        **плечевой доступ** — аналогично катетеру **16G**.
                                                        (Справочно: 20G — скорость инфузии 64 мл/мин, 16G — 208 мл/мин).
                                                        """
                                           )).buildDualBlockBlueGray(isTextExpanded: isTextExpanded2)
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded2.toggle()
                        }
                    }
                MyViewBuilder(title: Text("Показания"),
                              content: Text("""
                                                – **все критические состояния, требующие незамедлительного начала медикаментозной или инфузионной терапии при затруднении в/в доступа**: клиническая смерть, шоки, комы, ожоги, судороги, аритмии и т.д.
                                                – **невозможность катетеризации периферической или центральной вены в течение 90 секунд или после 3 попыток** (при СЛР 60 секунд или 2 попытки)
                                                """
                                           )).buildDualBlockBlueGray(isTextExpanded: isTextExpanded3)
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded3.toggle()
                        }
                    }
                MyViewBuilder(title: Text("Противопоказания"),
                              content: Text("""
                                                – **перелом проксимальнее** места установки
                                                – **инфекция** в месте установки
                                                – **отсутствие** явных анатомических **ориентиров**
                                                """
                                           )).buildDualBlockBlueGray(isTextExpanded: isTextExpanded4)
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded4.toggle()
                        }
                    }
                MyViewBuilder(title: Text("Нахождение точки пункции"),
                              content: Text("""
                                                **Взрослые (синий B.I.G.)**: бугристость большеберцовой кости + 2 см медиальнее (плато б/б кости) + 1 см **вверх**
                                                
                                                **Дети (красный B.I.G.)**: бугристость большеберцовой кости + 1-2 см медиальнее (плато б/б кости) + 1-2 см **вниз**

                                                Есть и другие точки пункции, но большеберцовый доступ приведен как самый удобный и простой в получении. После того, как определились с местом пункции переходим к следующему этапу.
                                                """
                                           )).buildDualBlockBlueGray(isTextExpanded: isTextExpanded5)
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded5.toggle()
                        }
                    }
                
                ZStack {
                    MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                    VStack  {
                        MyViewBuilder(title: Text("Пункция"),
                                      content: Text("""
                                        Пункция
                                        """)).buildBlue59Text(isTextExpanded: isTextExpanded7)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded7.toggle()
                                }
                            }
                        if isTextExpanded7{
                            VStack (spacing:1){
                                MyViewBuilder(title: Text(""),
                                              content: Text("""
                                        **Подбираем и распаковываем нужное устройство**.

                                        Устройство внутрикостного доступа **для взрослых и детей старше 13 лет синего цвета**:
                                        """)).buildGrayInHiddenText()
                                
                                Image("Vnutricostniy2")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Rectangle())
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(10)
                                MyViewBuilder(title: Text(""),
                                              content: Text("""
                                        Устройство внутрикостного доступа **для детей младше 13 лет красного цвета**:
                                        """)).buildGrayInHiddenText()
                                
                                Image("Vnutricostniy3")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Rectangle())
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(10)
                                MyViewBuilder(title: Text(""),
                                              content: Text("""
                                        **Обратите внимание, что в детских пистолетах выбирается не кость, а возраст ребенка. Возможные варианты: 0-3 года, 3-6 лет, 6-12 лет. После этого выбора глубина выстрела будет настроена**.

                                        **Теперь снимаем предохранитель**:
                                        (опционально - так же рекомендовано снятие предохранителя после прижатия пистолета к точке пункции)
                                        """)).buildGrayInHiddenText()
                                Image("Vnutricostniy4")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Rectangle())
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(10)
                                MyViewBuilder(title: Text(""),
                                              content: Text("""
                                        **Обрабатываем антисептиком точку пункции, плотно прижимаем и нажимаем на подвижной конец устройства**:
                                        """)).buildGrayInHiddenText()
                                Image("Vnutricostniy5")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Rectangle())
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(10)
                                MyViewBuilder(title: Text(""),
                                              content: Text("""
                                        **Раздастся громкий щелчок, сопровождаемый сильной отдачей.
                                        Не пугайтесь и не выпускайте пистолет из рук!**

                                        **Извлекаем мандрен**:
                                        """)).buildGrayInHiddenText()
                                Image("Vnutricostniy6")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Rectangle())
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(10)
                                MyViewBuilder(title: Text(""),
                                              content: Text("""
                                        **Проденьте предохранитель через иглу и зафиксируйте к коже с помощью двух полосок пластыря**:
                                        """)).buildGrayInHiddenText()
                                Image("Vnutricostniy7")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Rectangle())
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(10)
                                MyViewBuilder(title: Text(""),
                                              content: Text("""
                                        **Присоединяем пустой шприц и потягиваем поршень на себя**.
                                        В шприце должен появиться красный костный мозг. Если этого не произошло, не расстраивайтесь, это не означает что вы ошиблись с точкой пункции. Откладываем шприц в сторону.

                                        **Теперь обязательно промойте иглу 10-20 мл 0,9% раствора NaCl!**
                                        Введение будет с **ощутимым сопротивлением**, так и должно быть.
                                        **Если пропустить этот этап, то в дальнейшем болюсное введение препаратов будет затруднено, а капельное введение практически невозможно**.

                                        **Обратите внимание** – если пациент не седирован, то перед промыванием проведите обезболивание по схеме представленной ниже (сам выстрел иглы малоболезненный, но введение растворов через внутрикостную иглу сопровождается сильным болевым синдромом).
                                        """)).buildGrayInHiddenText()
                            }
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded7.toggle()
                                }
                            }
                        }
                    }
                }
                MyViewBuilder(title: Text("Схема коррекции болевого синдрома"),
                              content: Text("""
                                                1. **Аспирационная проба**
                                                2. **Введение 2% раствора лидокаина в дозе 40 мг (2 мл) в течение ~2 мин**
                                                3. **Через 1 мин быстрое введение 10-20 мл 0,9% NaCl**
                                                4. **Введение 2% раствора лидокаина в дозе 20 мг (1 мл) в течение ~1 мин**
                                                """
                                           )).buildDualBlockBlueGray(isTextExpanded: isTextExpanded8)
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded8.toggle()
                        }
                    }
                MyViewBuilder(title: Text("Осложнения"),
                              content: Text("""
                                                1. **Экстравазация жидкости** — при неправильной постановке иглы.
                                                2. **Синдром сдавления** — при стремительной инфузии, без предварительного промывания катетера физиологическим раствором.
                                                3. **Смещение** — при плохой фиксации внутрикостного катетера и чрезмерной подвижности пациента.
                                                4. **Перелом** — обычно у детей, при приложении чрезмерной силы.
                                                5. **Боль** — 1–2 балла по 10-балльной шкале.
                                                6. **Инфекция**.
                                                7. **Эмболия**.
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
                    «Внутрикостный доступ»
                    """)
                    .font(.caption2)
                    .foregroundStyle(Color.toolBar)
                }
            }
            
        }
    }
    
}
#Preview {
    _1Vnutrikostniy()
}


