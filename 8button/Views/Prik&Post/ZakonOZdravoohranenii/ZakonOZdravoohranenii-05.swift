//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct ZakonOZdravoohranenii_05: View {
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
            ScrollView {
                Spacer()
                VStack (spacing: 5){
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        VStack  {
                            MyViewBuilder(title: Text("Статья 22"), content: Text("Медицинская профилактика наследственных заболеваний у граждан Республики Беларусь")).buildTitleZakon(isTextExpanded: isTextExpanded1)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded1.toggle()
                                    }
                                }
                            if isTextExpanded1 {
                                MyViewBuilder(title: Text(""),
                                              content: Text("""
                                                            Гражданам Республики Беларусь гарантированы бесплатные консультации по вопросам планирования семьи, медико-психологическим аспектам брачно-семейных отношений, а также медико-генетическая диагностика по медицинским показаниям в государственных учреждениях здравоохранения в целях медицинской профилактики возможных наследственных заболеваний у потомства.
                                                            """)).buildGrayInHiddenText()
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded1.toggle()
                                        }
                                    }
                            }
                                
                        }
                    }
                    
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        VStack  {
                            MyViewBuilder(title: Text("Статья 23"), content: Text("Вспомогательные репродуктивные технологии")).buildTitleZakon(isTextExpanded: isTextExpanded2)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded2.toggle()
                                    }
                                }
                            if isTextExpanded2 {
                                MyViewBuilder(title: Text(""),
                                              content: Text("""
                                                            Вспомогательные репродуктивные технологии применяются в организациях здравоохранения в порядке, установленном законодательством о вспомогательных репродуктивных технологиях.
                                                            """)).buildGrayInHiddenText()
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded2.toggle()
                                        }
                                    }
                            }
                                
                        }
                    }
                    
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        VStack  {
                            MyViewBuilder(title: Text("Статья 24"), content: Text("Оказание медицинской помощи женщинам во время беременности, родов и в послеродовой период")).buildTitleZakon(isTextExpanded: isTextExpanded3)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded3.toggle()
                                    }
                                }
                            if isTextExpanded3 {
                                MyViewBuilder(title: Text(""),
                                              content: Text("""
                                                            В Республике Беларусь материнство охраняется и поощряется государством.
                                                            
                                                            Женщинам гарантируются медицинское наблюдение и оказание медицинской помощи в стационарных условиях в государственных учреждениях здравоохранения во время беременности, родов и в послеродовой период.
                                                            """)).buildGrayInHiddenText()
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded3.toggle()
                                        }
                                    }
                            }
                                
                        }
                    }
                    
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        VStack  {
                            MyViewBuilder(title: Text("Статья 25"), content: Text("Особенности оказания медицинской помощи несовершеннолетним в стационарных условиях")).buildTitleZakon(isTextExpanded: isTextExpanded4)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded4.toggle()
                                    }
                                }
                            if isTextExpanded4 {
                                MyViewBuilder(title: Text(""),
                                              content: Text("""
                                                            При оказании медицинской помощи в стационарных условиях в государственной организации здравоохранения несовершеннолетнему в возрасте до пяти лет одному из родителей или лицу, фактически осуществляющему уход за несовершеннолетним, предоставляется возможность находиться с ним в этой организации здравоохранения.
                                                            
                                                            При оказании медицинской помощи в стационарных условиях в государственной организации здравоохранения несовершеннолетнему в возрасте от пяти до четырнадцати лет и детям-инвалидам в возрасте от пяти до восемнадцати лет, нуждающимся по заключению врача в дополнительном уходе, одному из родителей или лицу, фактически осуществляющему уход за несовершеннолетним, ребенком-инвалидом, предоставляется возможность находиться с ними в этой организации здравоохранения.
                                                            
                                                            При оказании медицинской помощи в стационарных условиях в государственных учреждениях здравоохранения несовершеннолетнему в возрасте до трех лет один из родителей или лицо, фактически осуществляющее уход за несовершеннолетним, обеспечиваются условиями для дополнительного ухода за ним и питанием за счет средств республиканского и (или) местных бюджетов.
                                                            
                                                            При оказании медицинской помощи в стационарных условиях в государственных учреждениях здравоохранения несовершеннолетнему в возрасте от трех до пяти лет один из родителей или лицо, фактически осуществляющее уход за несовершеннолетним, обеспечиваются условиями для дополнительного ухода за ним.
                                                            """)).buildGrayInHiddenText()
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded4.toggle()
                                        }
                                    }
                            }
                                
                        }
                    }
                    
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        VStack  {
                            MyViewBuilder(title: Text("Статья 26"), content: Text("Стерилизация")).buildTitleZakon(isTextExpanded: isTextExpanded5)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded5.toggle()
                                    }
                                }
                            if isTextExpanded5 {
                                MyViewBuilder(title: Text(""),
                                              content: Text("""
                                                            Стерилизация (лишение способности к воспроизводству потомства) проводится в государственных организациях здравоохранения по письменному заявлению пациента в возрасте старше тридцати пяти лет или пациента, имеющего не менее двух детей, а при наличии медицинских показаний и письменного согласия совершеннолетнего пациента или лиц, указанных в части второй статьи 18 настоящего Закона, – независимо от возраста и наличия детей.
                                                            
                                                            Стерилизация проводится при отсутствии медицинских противопоказаний.
                                                            
                                                            Порядок проведения стерилизации, перечень медицинских показаний и медицинских противопоказаний для проведения стерилизации устанавливаются Министерством здравоохранения.
                                                            """)).buildGrayInHiddenText()
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded5.toggle()
                                        }
                                    }
                            }
                                
                        }
                    }
                    
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        VStack  {
                            MyViewBuilder(title: Text("Статья 27"), content: Text("Искусственное прерывание беременности")).buildTitleZakon(isTextExpanded: isTextExpanded6)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded6.toggle()
                                    }
                                }
                            if isTextExpanded6 {
                                MyViewBuilder(title: Text(""),
                                              content: Text("""
                                                            Женщине предоставляется право самостоятельно решать вопрос о материнстве.
                                                            
                                                            В организациях здравоохранения должны быть созданы условия и обеспечено проведение предабортного психологического консультирования женщин, обратившихся за проведением искусственного прерывания беременности. Женщина, обратившаяся за проведением искусственного прерывания беременности, вправе определить членов семьи, в отношении которых может проводиться предабортное психологическое консультирование. Предабортное психологическое консультирование проводится с соблюдением требований законодательства в сфере оказания психологической помощи.
                                                            
                                                            По согласию женщины в организациях здравоохранения после консультации с врачом-специалистом, а в отношении несовершеннолетней также при наличии письменного согласия ее законного представителя может быть проведено искусственное прерывание беременности (аборт) при сроке беременности не более 12 недель.
                                                            
                                                            При наличии медицинских показаний и согласия женщины, а в отношении несовершеннолетней также при наличии письменного согласия ее законного представителя искусственное прерывание беременности проводится независимо от срока беременности в государственных организациях здравоохранения. Перечень медицинских показаний для искусственного прерывания беременности устанавливается Министерством здравоохранения.
                                                            
                                                            Искусственное прерывание беременности у женщины, признанной в установленном порядке недееспособной, проводится независимо от срока беременности при наличии медицинских показаний с письменного согласия ее опекуна.
                                                            
                                                            Искусственное прерывание беременности у женщины, не способной по состоянию здоровья к принятию осознанного решения, проводится при наличии медицинских показаний с письменного согласия лиц, указанных в абзаце четвертом части второй статьи 18 настоящего Закона.
                                                            
                                                            В исключительных случаях при наличии медицинских показаний, не указанных в перечне медицинских показаний для искусственного прерывания беременности, при которых продолжение беременности и роды представляют угрозу для жизни женщины или могут причинить вред ее здоровью, вопрос об искусственном прерывании беременности по медицинским показаниям решает врачебно-консультационная комиссия организации здравоохранения.
                                                            
                                                            При наличии социальных показаний и согласия женщины проведение искусственного прерывания беременности допускается при сроке беременности не более 22 недель в государственных организациях здравоохранения. Перечень социальных показаний для искусственного прерывания беременности устанавливается Советом Министров Республики Беларусь.
                                                            Врач-специалист имеет право отказаться от проведения искусственного прерывания беременности, письменно уведомив об этом руководителя организации здравоохранения, если отказ непосредственно не угрожает жизни и (или) здоровью женщины. После получения письменного уведомления врача-специалиста руководитель организации здравоохранения должен организовать женщине проведение искусственного прерывания беременности другим врачом-специалистом.
                                                            """)).buildGrayInHiddenText()
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded6.toggle()
                                        }
                                    }
                            }
                                
                        }
                    }
                    
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
                    Text("Глава 4")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Репродуктивное здоровье граждан»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            
        }
    }
    
}
#Preview {
    ZakonOZdravoohranenii_05()
}

