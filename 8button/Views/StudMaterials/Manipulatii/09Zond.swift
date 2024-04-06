//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct _9Zond: View {
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
    @State private var isTextExpanded9 = true
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
                MyViewBuilder(title: Text("Факты"),
                              content: Text("""
                                            **Промывание желудка зондом**
                                            """
                                           )).buildGrayTextCenter()
                    .multilineTextAlignment(.center)
                
                //                    ZStack {
                //                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                //                        VStack (spacing: 1) {
               
                MyViewBuilder(title: Text("Особенности у детей"),
                              content: Text("""
                                                • **При промывании желудка у детей используют пероральное или трансназальное введение зонда, диаметр которого соответствует наружному носовому отверстию**.
                                                Для промывания используется питьевая **вода комфортной температуры (температура желудка 38°)**.
                                                
                                                • **Скорость введения жидкости**: **за 1,5 минуты разовый объем**, выведение с такой же скоростью (цикл введение-выведение не более 3 минут).
                                                
                                                • **Каждый промывной цикл заканчивается введением сорбента. Сорбент разводится в 1/2 разового объема**.
                                                
                                                • **При использовании гастральных сорбентов пероральная терапия не проводится**.
                                                
                                                • **В раннем возрасте необходимо тщательно учитывать соотношение между объемом жидкости, взятой для промывания желудка ребенка и объемом, полученным обратно** (опасность водного отравления).
                                                """
                                           )).buildDualBlockBlueGray(isTextExpanded: isTextExpanded2)
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded2.toggle()
                        }
                    }
                MyViewBuilder(title: Text("Противопоказания к зондовому промыванию желудка"),
                              content: Text("""
                                                • **судорожный синдром**
                                                
                                                • **декомпенсация дыхания или кровообращения** (промывание желудка отложить до стабилизации состояния)
                                                
                                                • **отравление прижигающими или повреждающими слизистую пищевода и желудка ядами, если прошло более 2 часов** (опасность перфорации зондом)
                                                """
                                           )).buildDualBlockBlueGray(isTextExpanded: isTextExpanded3)
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded3.toggle()
                        }
                    }
                ZStack {
                    MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                    VStack  {
                        MyViewBuilder(title: Text("Через простую маску"),
                                      content: Text("""
                                        Выбор зонда
                                        """)).buildBlue59Text(isTextExpanded: isTextExpanded4)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded4.toggle()
                                }
                            }
                        if isTextExpanded4{
                            HStack {
                                Spacer()
                                VStack (spacing: 1){
                                    HStack (alignment: .bottom){
                                        Text("Возраст")
                                            .font(.footnote)
                                            .frame(width: 85, alignment: .center)
                                            .bold()
                                        Text("Размер")
                                            .font(.footnote)
                                            .frame(width: 85, alignment: .center)
                                            .bold()
                                    }
                                    HStack (alignment: .bottom){
                                    Text("0-4 месяца")
                                        .font(.footnote)
                                        .frame(width: 85, alignment: .center)
                                    Text("CH5")
                                        .font(.footnote)
                                        .frame(width: 85, alignment: .center)
                                    }
                                    HStack (alignment: .bottom){
                                    Text("5-11 месяцев")
                                        .font(.footnote)
                                        .frame(width: 85, alignment: .center)
                                    Text("CH8")
                                        .font(.footnote)
                                        .frame(width: 85, alignment: .center)
                                    }
                                    HStack (alignment: .bottom){
                                    Text("1-4 года")
                                        .font(.footnote)
                                        .frame(width: 85, alignment: .center)
                                    Text("CH10")
                                        .font(.footnote)
                                        .frame(width: 85, alignment: .center)
                                    }
                                    HStack (alignment: .bottom){
                                    Text("5-6 лет")
                                        .font(.footnote)
                                        .frame(width: 85, alignment: .center)
                                    Text("CH12")
                                        .font(.footnote)
                                        .frame(width: 85, alignment: .center)
                                    }
                                    HStack (alignment: .bottom){
                                    Text("7-12 лет")
                                        .font(.footnote)
                                        .frame(width: 85, alignment: .center)
                                    Text("CH14")
                                        .font(.footnote)
                                        .frame(width: 85, alignment: .center)
                                    }
                                    HStack (alignment: .bottom){
                                    Text("13-15 лет")
                                        .font(.footnote)
                                        .frame(width: 85, alignment: .center)
                                    Text("CH16")
                                        .font(.footnote)
                                        .frame(width: 85, alignment: .center)
                                    }
                                    HStack (alignment: .bottom){
                                    Text("16-17 лет")
                                        .font(.footnote)
                                        .frame(width: 85, alignment: .center)
                                    Text("CH18")
                                        .font(.footnote)
                                        .frame(width: 85, alignment: .center)
                                    }
                                    HStack (alignment: .bottom){
                                    Text("взрослые")
                                        .font(.footnote)
                                        .frame(width: 85, alignment: .center)
                                    Text("CH20 и >")
                                        .font(.footnote)
                                        .frame(width: 85, alignment: .center)
                                    }
                                    
                                }
                            
                                Spacer()
                            }
                        }
                    }
                }
                MyViewBuilder(title: Text("Определение длины зонда"),
                              content: Text("""
                                                **Дети**: от кончика носа до основания мечевидного отростка + 10 см

                                                **Взрослые**: от рта до мочки уха, затем от уха до желудка так, чтобы последнее отверстие находилось на уровне мечевидного отростка (у взрослого пациента кардиальный отдел желудка находится, обычно ≈40 см от линии зубов).
                                                """
                                           )).buildDualBlockBlueGray(isTextExpanded: isTextExpanded5)
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded5.toggle()
                        }
                    }
                MyViewBuilder(title: Text("Перед промыванием"),
                              content: Text("""
                                                1. **Определиться с положением пациента**:
                                                
                                                **Пациент без сознания** – сначала проведите эндотрахеальную интубацию (как пациента с полным желудком).
                                                
                                                **Пациент оглушен** – укладка пациента на левом боку.
                                                **Пациент в сознании** – промывание желудка можно выполнить в сидячем положении (опираясь руками на спинку стула).
                                                
                                                **Детей младшего возраста усадить на колени медсестры-помощницы**.

                                                2. **Снять зубные протезы у пациента (если они есть)**.

                                                3. **Поставить таз к ногам пациента или к головному концу кушетки, если положение пациента лёжа**.

                                                **При отравлении бензином, керосином, фенолом перед промыванием ввести в желудок вазелиновое или касторовое масло в дозе 2 мл/кг**.

                                                **При отравлении прижигающими ядами перед промыванием желудка дать выпить растительное масло, смазать зонд маслом на всем протяжении и провести обезболивание**:
                                                **50% раствор анальгина в дозе 0,1 мл/год жизни** в/м или в/в или
                                                **1% раствор промедола 0,1 мл/год жизни** в/м (**детям старше 2 лет**).

                                                4. **Смочить слепой конец зонда водой или глицерином**. Также для большего комфорта пациента можно обработать гелем, содержащим местный анестетик (например Катеджелем).

                                                5. **Взять зонд в правую руку как «писчее перо» на расстоянии 10 см от закруглённого конца**.
                                                """
                                           )).buildDualBlockBlueGray(isTextExpanded: isTextExpanded6)
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded6.toggle()
                        }
                    }
                MyViewBuilder(title: Text("Методика"),
                              content: Text("""
                                                1. **Предложить пациенту открыть рот, слегка запрокинуть голову назад. Ребенка младшего возраста зафиксировать**. Для этого левую руку положить на лоб ребенка, правой рукой охватить его руки (выполняет медсестра-помощница). Ноги ребенка удерживаются скрещенными ногами помощницы. Предварительно, для лучшей фиксации, обернуть больного в пеленку или простыню. Надеть на ребенка фартук. Конец фартука опустить в емкость для сбора промывных вод. Детям младшего возраста положить на грудь пеленку.
                                                
                                                2. **Положить зонд на корень языка, попросить пациента сделать глотательное движение одновременно с продвижением зонда**.
                                                
                                                3. **Наклонить голову пациента вперёд, вниз**.
                                                
                                                4. **Медленно продвигать зонд вслед за глотательными движениями до метки, при этом пациент глубоко дышит через нос**.
                                                
                                                5. **При достижении необходимой глубины убедиться, что зонд в желудке «воздушной пробой»** (присоединить трехкомпонентный шприц, ввести небольшое количество воздуха, с помощью фонендоскопа прослушать появление булькающих звуков над эпигастрием). 
                                                **Во время введения зонда ребенку обратить внимание на его состояние** (отсутствие кашля и цианоза).
                                                
                                                6. **Присоедините к зонду трехкомпонентный шприц для промывания** (объемом 100-300 мл) и отсоедините поршень.
                                                
                                                7. **Влейте из кружки или другого сосуда разовый объем воды температуры тела в шприц, держа его при этом выше уровня желудка**.
                                                
                                                8. **Как только жидкость в шприце заканчивает ток, расположите шприц ниже уровня желудка**, что приведет к возвращению влитой воды (сифонное явление) и слейте содержимое в таз для промывных вод.
                                                
                                                9. **У детей каждый промывной цикл заканчивается введением сорбента**. Сорбент разводится в 1/2 разового объема.
                                                
                                                10. **Повторяйте действия 7-9 многократно, до получения чистых промывных вод**.
                                                
                                                11. **По окончании промывания ввести через зонд в желудок взвесь активированного угля в дозе 1 г/кг массы тела**
                                                (**противопоказания: отравления металлами, алкоголями, щелочами и кислотами**).
                                                
                                                12. **Зонд извлечь через салфетку, смоченную дезинфицирующим средством**. Зонд и салфетка утилизируются в контейнер для отходов класса Б.
                                                """
                                           )).buildDualBlockBlueGray(isTextExpanded: isTextExpanded7)
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded7.toggle()
                        }
                    }
                ZStack {
                    MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                    VStack  {
                        MyViewBuilder(title: Text("Проведение"),
                                      content: Text("""
                                        Объем жидкости для промывания желудка
                                        """)).buildBlue59Text(isTextExpanded: isTextExpanded8)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded8.toggle()
                                }
                            }
                        if isTextExpanded8{
                            LazyVStack (spacing:1){
                                
                                ImagePDF(image: Image("zond1"), title: "").buildECGPad(isTextExpanded: isTextExpanded9)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            UIDevice.current.userInterfaceIdiom == .pad ? isTextExpanded8.toggle() : isTextExpanded9.toggle()
                                        }
                                    })
                                    .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded9 ? 475 : 475) : (isTextExpanded9 ? 220 : 440))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                
                            }
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded8.toggle()
                                }
                            }
                        }
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
                    «Промывание желудка зондом»
                    """)
                    .font(.caption2)
                    .foregroundStyle(Color.toolBar)
                }
            }
            
        }
    }
    
}
#Preview {
    _9Zond()
}


