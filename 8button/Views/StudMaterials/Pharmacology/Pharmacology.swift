//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct Pharmacology: View {
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
        NavigationStack {
            ScrollView {
                VStack (spacing:5) {
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        VStack  {
                            NavigationLink (destination: MedicinesAdult()) {
                                MyViewBuilder(title: Text("1"), content: Text("Применение лекарственных средств у взрослых")).buildBlue59NavigationText()
                            }
                        }
                    }
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        VStack  {
                            NavigationLink (destination: MedicinesChild()) {
                                MyViewBuilder(title: Text("1"), content: Text("Применение лекарственных средств у детей")).buildBlue59NavigationText()
                            }
                        }
                    }
                    Spacer(minLength: 15)
                    MyViewBuilder(title: Text("Противопоказания антиаритмиков"),
                                  content: Text("""
                                            **Амиодарон**
                                            — повышенная чувствительность к йоду;
                                            — СССУ (опасность «остановки» синусового узла), искл. – ИВР;
                                            — AV-блокада II–III степени, двух- и трехпучковые блокады при отсутствии ИВР;
                                            — гипокалиемия, гипомагниемия;
                                            — сочетание с препаратами, способными удлинять интервал QT и вызывать развитие пароксизмальных тахикардий: прокаинамид, соталол, дроперидол, галоперидол;
                                            — врожденное или приобретенное удлинение интервала QT;
                                            — дисфункция щитовидной железы (гипотиреоз, гипертиреоз);

                                            **Пропанорм**
                                            — синдром Бругада;
                                            — СССУ (опасность «остановки» синусового узла), искл. – ИВР;
                                            — SA-блокады, AV-блокада II–III степени, двух- и трехпучковые блокады при отсутствии ИВР;
                                            — блокада ножек пучка Гиса или дистальная блокада (у пациентов без ИВР)
                                            — удлинение интервала QT
                                            — ОКС
                                            — выраженные нарушения водно-электролитного баланса;
                                            — тяжелая ХОБЛ;
                                            — значительные органические изменения миокарда, такие как тяжелая рефрактерная хроническая сердечная недостаточность с фракцией выброса левого желудочка менее 35%;
                                            — кардиогенный шок, за исключением аритмического шока;
                                            — миастения;

                                            **Новокаинамид**
                                            — SA-блокады, AV-блокада II–III степени, двух- и трехпучковые блокады при отсутствии ИВР;
                                            — удлинение интервала QT;
                                            — ТП и ФЖ;
                                            — аритмии на фоне интоксикации сердечными гликозидами;
                                            — сердечная недостаточность;
                                            — желудочковая тахикардия типа «пируэт» (torsades de pointes);
                                            — лейкопения;
                                            — системная красная волчанка (в т.ч. в анамнезе);

                                            **Верапамил**
                                            — SA-блокады, AV-блокада II и III степени;
                                            — инфаркт миокарда (острый или недавно перенесенный и осложненный явлениями брадикардии, гипотензии, левожелудочковой недостаточности);
                                            — выраженная брадикардия (менее 50 уд./мин);
                                            — хроническая сердечная недостаточность III стадии;
                                            — ТП/ФП + WPW-синдром или синдром CLC, искл. – ИВР;
                                            — СССУ (опасность «остановки» синусового узла), искл. – ИВР;
                                            — синдром Морганьи — Адамса — Стокса;
                                            — дигиталисная интоксикация;
                                            — тяжелый стеноз устья аорты;

                                            **Лидокаин**
                                            — наличие в анамнезе эпилептиформных судорог на лидокаин;
                                            — WPW-синдром;
                                            — СССУ (опасность «остановки» синусового узла)
                                            — SA-блокады, AV-блокада II–III степени, внутрижелудочковые блокады
                                            — тяжелые заболевания печени,
                                            — миастения.
                                            """)).buildDualBlockBlueGray(isTextExpanded: isTextExpanded1)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded1.toggle()
                            }
                        }
                    MyViewBuilder(title: Text(""),
                                  content: Text("""
                                            Сравнение вазопрессоров и кардиотоников
                                            """)).buildBlue591Text(isTextExpanded: isTextExpanded2)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded2.toggle()
                            }
                        }
                    if isTextExpanded2 {
                        MyViewBuilder(title: Text(""),
                                      content: Text("""
                                                **Вазопрессоры** — препараты, основной задачей которых является повышение среднего артериального давления за счет сосудосуживающего эффекта. Примеры: адреналин, норадреналин, мезатон.
                                                
                                                **Кардиотоники (инотропы)** — препараты, обладающие положительным инотропным эффектом, т.е. способные увеличивать силу сокращения миокарда и тем самым повышать среднее артериальное давление. Примеры: дигоксин, добутамин, допамин.
                                                """)).buildGrayText()
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded2.toggle()
                                }
                            }
                        VStack(spacing: 1) {
                            
                            ForEach(TablePharmacology.getTablePharmacologyVasopressors(), id: \.id) { name in
                                MyViewBuilder(title: Text(LocalizedStringKey(name.name)), content: Text(LocalizedStringKey(name.code))).buildTablePhafmacologyVasopressors()
                            }
                        }
                        .background(Color.back)
                        .cornerRadius(10)
                        .shadow(color: .shadowGrayRectangle, radius: 0.5)
                        .onTapGesture {
                            withAnimation (.easeInOut) {
                                isTextExpanded2.toggle()
                            }
                        }
                    }
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        VStack  {
                            MyViewBuilder(title: Text(""),
                                          content: Text("""
                                            Выбор анальгетика при травмах
                                            """)).buildBlue59Text(isTextExpanded: isTextExpanded3)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded3.toggle()
                                    }
                                }
                            if isTextExpanded3 {
                                VStack (spacing:1){
                                    
                                    Image("pharmacology1")
                                        .resizable()
                                        .scaledToFit()
                                        .clipShape(Rectangle())
                                        .cornerRadius(10)
                                        .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                        .padding(5)
                                    
                                    Image("pharmacology2")
                                        .resizable()
                                        .scaledToFit()
                                        .clipShape(Rectangle())
                                        .cornerRadius(10)
                                        .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                        .padding(5)
                                }
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded3.toggle()
                                    }
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
                    Text("Фармакология")
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
    Pharmacology()
}


