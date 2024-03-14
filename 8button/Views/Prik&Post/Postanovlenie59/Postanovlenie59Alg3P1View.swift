//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct Postanovlenie59Alg3P1View: View {
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
        NavigationStack {
            ScrollView {
                VStack (spacing: 5) {
                    MyViewBuilder(title: Text("3"), content: Text("""
                    **Рекомендации по выбору стратегии ведения пациентов с ОКС с подъемом сегмента ST**
                    """)).buildGrayTextCenter()
                    MyViewBuilder(title: Text("""
                                              Реперфузионная терапия должна быть проведена при наличии следующих показаний:
                                              """),
                                  content: Text("""
                                                **1)** наличие на ЭКГ **подъема сегмента ST на 1 мм и более** по меньшей мере **в двух соседних грудных отведениях** или **в двух из трех «нижних» отведений** от конечностей / впервые выявленной полной блокады левой ножки пучка Гиса / идиовентрикулярного ритма;
                                                **2)** возможность проведения реперфузии инфаркт-связанной артерии **не позднее 12 часов от начала / усиления симптомов**;
                                                **3)** в случае продолжительности симптомов **более 12 часов при стойком / рецидивирующем болевом синдроме** в грудной клетке и сохраняющемся подъеме сегмента ST / **впервые выявленной полной блокаде левой ножки пучка Гиса**.
                                                """)).buildDualBlockBlueGray(isTextExpanded: isTextExpanded1)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded1.toggle()
                            }
                        }
                    MyViewBuilder(title: Text("""
                                              Выбор реперфузионной терапии:
                                              """),
                                  content: Text("""
                                                **1. ЧКВ**.
                                                - Первичное ЧКВ возможно провести **в течение 90 минут от момента первичного медицинского контакта** до раздутия баллона в инфаркт-связанной артерии.
                                                - Выполнение первичного ЧКВ показано пациентам с тяжелой острой сердечно-сосудистой недостаточностью или кардиогенным шоком **>12 часов (ЧКВ спасения)**.
                                                - **При неэффективном догоспитальном тромболизисe и/или рецидивирующей ишемии миокарда и/или развитии повторной окклюзии после успешного проведения тромболизиса в максимально ранние сроки показано проведение ЧКВ спасения**.
                                                
                                                Интервенционные вмешательства, выполняемые у пациентов с ОКС с подъемом ST должны ограничиться реваскуляризацией инфаркт- связанной артерии за исключением развития кардиогенного шока, когда ЧКВ выполняется во всех артериях, имеющих критические поражения и случаев, когда невозможно четко идентифицировать инфаркт- связанную артерию.
                                                «Спасительное» многососудистое ЧКВ или кардиохирургическое вмешательство показано при рефрактерном к проводимой медикаментозной терапии кардиогенном шоке, у пациентов моложе 75 лет, у которых развитие шокового состояния наступило в течение первых 36 часов от начала инфаркта миокарда. ЧКВ или кардиохирургическое вмешательство должно быть выполнено (при наличии соответствующих служб) в течение 18 часов при поддержке устройством вспомогательного кровообращения.
                                                
                                                **2. Фармакоинтервенционная стратегия**.
                                                - **Если первичное ЧКВ невозможно провести в пределах 90 мин от момента ПМК**, но проведение ЧКВ возможно в более поздние сроки показано выполнение тромболитической терапии фибринспецифическим тромболитическим средством (**Тенектеплаза, Альтеплаза**) с последующей доставкой пациента в стационар для проведения **ЧКВ в интервале 3-24 часа от ТЛТ**.
                                                - **Пациентам, имеющим большую площадь поражения и отсутствием противопоказаний** тромболитическая терапия должна проводиться во всех случаях, если прогнозируемое время от первичного медицинского контакта до раздутия баллона в инфаркт-связанной артерии **> 90 мин с последующей доставкой пациента в стационар для проведения ЧКВ в интервале 3-24 часа от ТЛТ**.
                                                
                                                **3. Медикаментозная реперфузия**.
                                                **Проводится в течение первых 12 часов от начала симптомов** пациентам, не имеющим противопоказаний для введения тромболитических средств, **если первичное ЧКВ не может быть выполнено в пределах 120 минут** от момента первичного медицинского контакта до раздутия баллона в инфаркт-связанной артерии.
                                                """)).buildDualBlockBlueGray(isTextExpanded: isTextExpanded2)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded2.toggle()
                            }
                        }
                    MyViewBuilder(title: Text("""
                                              
                                              """),
                                  content: Text("""
                                                Рекомендуемые временные интервалы на этапах оказания помощи пациентам с ОКС с подъемом сегмента ST
                                                """)).buildBlue591Text(isTextExpanded: isTextExpanded3)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded3.toggle()
                            }
                        }
                    if isTextExpanded3{
                        VStack(spacing: 1) {
                            HStack {
                                    Text("Интервал")
                                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                                    .font(.subheadline)
                                    .bold()
                                    .padding(3)
                                Spacer()
                                Text("Длительность")
                                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                                    .font(.subheadline)
                                    .bold()
                                    .padding(3)
                                
                            Spacer()
                            }
                            .padding(2)
                            .background(Color.grayButton)
                            ForEach(Table59OKSSmall.getTable59OKSSmall1(), id: \.id) { name in
                                MyViewBuilder(title: Text(name.name), content: Text(name.code)).buildTable59OKSSmall()
                            }
                        }
                        .background(Color.back)
                        .cornerRadius(10)
                        .shadow(color: .shadowGrayRectangle, radius: 0.5)
                        .onTapGesture {
                            withAnimation (.easeInOut) {
                                isTextExpanded3.toggle()
                            }
                        }
                    }
                    
                    
                    
                }
                .padding(.horizontal, 10)
                .padding(.bottom, 95)
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
                    Text("Приложение 1")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("""
                    «Рекомендации по выбору стратегии ведения пациентов с ОКС с подъемом сегмента ST»
                    """)
                    .font(.caption2)
                    .foregroundStyle(Color.toolBar)
                }
            }
            
        }
    }
    
}
#Preview {
    Postanovlenie59Alg3P1View()
}

