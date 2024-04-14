//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct ZakonOZdravoohranenii_06: View {
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
                            MyViewBuilder(title: Text("Статья 28"), content: Text("Особенности оказания медицинской помощи пациентам, имеющим заболевания, представляющие опасность для здоровья населения, вирус иммунодефицита человека")).buildTitleZakon(isTextExpanded: isTextExpanded1)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded1.toggle()
                                    }
                                }
                            if isTextExpanded1 {
                                MyViewBuilder(title: Text(""),
                                              content: Text("""
                                                            Государственные организации здравоохранения осуществляют специальные меры по оказанию медицинской помощи пациентам, имеющим заболевания, представляющие опасность для здоровья населения, вирус иммунодефицита человека.
                                                            
                                                            Перечень заболеваний, представляющих опасность для здоровья населения, определяется Министерством здравоохранения.
                                                            
                                                            Медицинское освидетельствование лиц на наличие у них заболеваний, представляющих опасность для здоровья населения, вируса иммунодефицита человека осуществляется в добровольном, обязательном или принудительном порядке.
                                                            
                                                            Граждане Республики Беларусь, иностранные граждане и лица без гражданства, в отношении которых есть достаточные основания полагать, что они имеют заболевания, представляющие опасность для здоровья населения, вирус иммунодефицита человека, в случае их уклонения от обязательного медицинского освидетельствования по заключению врачебно-консультационной комиссии государственной организации здравоохранения и с санкции прокурора могут быть подвергнуты принудительному медицинскому освидетельствованию в государственных организациях здравоохранения. Порядок проведения обязательного медицинского освидетельствования устанавливается законодательством.
                                                            
                                                            Сотрудники иностранных дипломатических представительств и консульских учреждений, иные лица, пользующиеся на территории Республики Беларусь дипломатическими привилегиями и иммунитетами, могут быть освидетельствованы на наличие заболеваний, представляющих опасность для здоровья населения, вируса иммунодефицита человека только с их согласия. Предложение таким лицам пройти медицинское освидетельствование Министерство здравоохранения предварительно согласовывает с Министерством иностранных дел.
                                                            
                                                            Лица, имеющие заболевания, представляющие опасность для здоровья населения, в случае уклонения от лечения могут быть подвергнуты принудительной госпитализации и лечению в государственных организациях здравоохранения. Порядок и условия принудительного медицинского освидетельствования лиц, имеющих заболевания, представляющие опасность для здоровья населения, вирус иммунодефицита человека, а также порядок и условия принудительной госпитализации и лечения лиц, имеющих заболевания, представляющие опасность для здоровья населения, устанавливаются законодательными актами.
                                                            
                                                            Иностранные граждане и лица без гражданства, имеющие заболевания, представляющие опасность для здоровья населения, вирус иммунодефицита человека и отказывающиеся от лечения, могут быть депортированы за пределы Республики Беларусь в порядке, установленном законодательством.
                                                            
                                                            Оказание медицинской помощи лицам, имеющим заболевания, представляющие опасность для здоровья населения, вирус иммунодефицита человека, в отношении которых судом назначены принудительные меры безопасности и лечения или которые отбывают наказание в учреждениях уголовно-исполнительной системы Министерства внутренних дел, осуществляется в соответствии с законодательством.
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
                            MyViewBuilder(title: Text("Статья 29"), content: Text("Предупреждение пациентов о наличии у них венерических заболеваний и (или) вируса иммунодефицита человека")).buildTitleZakon(isTextExpanded: isTextExpanded2)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded2.toggle()
                                    }
                                }
                            if isTextExpanded2 {
                                MyViewBuilder(title: Text(""),
                                              content: Text("""
                                                            Пациенты, в отношении которых получены данные о наличии у них венерических заболеваний и (или) вируса иммунодефицита человека, в письменной форме предупреждаются организациями здравоохранения о наличии таких заболеваний и необходимости соблюдения мер предосторожности по их нераспространению, а также об ответственности в соответствии с законодательными актами за заведомое поставление в опасность заражения или заражение другого лица.
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
                            MyViewBuilder(title: Text("Статья 30"), content: Text("Медицинская помощь пациентам, страдающим хроническим алкоголизмом, наркоманией и токсикоманией")).buildTitleZakon(isTextExpanded: isTextExpanded3)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded3.toggle()
                                    }
                                }
                            if isTextExpanded3 {
                                MyViewBuilder(title: Text(""),
                                              content: Text("""
                                                            Порядок и условия оказания медицинской помощи пациентам, страдающим хроническим алкоголизмом, наркоманией и токсикоманией, устанавливаются Министерством здравоохранения.
                                                            
                                                            Принудительное обследование в целях установления диагноза хронического алкоголизма, наркомании, токсикомании осуществляется на основании постановления органов внутренних дел, а принудительное лечение – по решению суда в порядке, установленном законодательством.
                                                            """)).buildGrayInHiddenText()
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
                    Text("Глава 5")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Особенности оказания медицинской помощи»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            
        }
    }
    
}
#Preview {
    ZakonOZdravoohranenii_06()
}

