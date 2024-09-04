//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct Postanovlenie59Alg6View: View {
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
                VStack (spacing: 5){
                    MyViewBuilder(title: Text("""
                                              ---
                                              """),
                                  content: Text("""
                                                **Диагностика и лечение пациентов c
                                                сердечной недостаточностью**
                                                """)).buildGrayTextCenter()
                        .multilineTextAlignment(.center)
                    MyViewBuilder(title: Text("Общие положения"),
                                  content: Text("""
                                                **Хроническая сердечная недостаточность** (далее-СН) представляет собой синдром с комплексом характерных симптомов (одышка, утомляемость, снижение физической активности, отеки и др.), которые связаны с неадекватной перфузией органов и тканей в покое или при нагрузке и часто с задержкой жидкости в организме.
                                                
                                                **Первопричиной является ухудшение способности сердца к наполнению или опорожнению, обусловленное повреждением миокарда, а также дисбалансом вазоконстрикторных и вазодилатирующих нейрогуморальных систем**.
                                                
                                                **Различают острую и хроническую СН**.
                                                **Под острой СН** принято подразумевать возникновение острой (кардиогенной) одышки, связанной с быстрым развитием легочного застоя вплоть до отека легких или кардиогенного шока (с гипотонией, олигурией и так далее).
                                                **Чаще встречается хроническая форма СН**, для которой характерны периодически возникающие эпизоды обострения (декомпенсации), проявляющиеся внезапным или, что бывает чаще, постепенным усилением симптомов и признаков хронической СН.
                                                
                                                **Диагностика СН и консультации врачей-специалистов** должны осуществляться в соответствии с настоящим клиническим протоколом в зависимости от уровня их проведения: в условиях районных, межрайонных (при наличии необходимого оборудования и врачей-специалистов), областных и республиканских организаций здравоохранения.
                                                
                                                **Медикаментозная терапия СН** должна осуществляться всем пациентам в соответствии с настоящим клиническим протоколом вне зависимости от уровня ее проведения.
                                                
                                                **Хирургическое лечение СН** должно осуществляться в соответствии с настоящим клиническим протоколом в зависимости от уровня его проведения: в условиях областных (при наличии необходимого оборудования и врачей-специалистов) и республиканских организаций здравоохранения.
                                                """)).buildDualBlockBlueGray(isTextExpanded: isTextExpanded)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded.toggle()
                            }
                        }
                    
                    Spacer(minLength: 10)
                    VStack (spacing: 5) {
                    
                        MyViewBuilder(title: Text(""), content: Text("Амбулаторный этап")).buildBlue591Text(isTextExpanded: isTextExpanded1)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded1.toggle()
                                }
                            }
                        if isTextExpanded1 {
                            
                                    MyViewBuilder(title: Text(""), content: Text("Застойная сердечная недостаточность (I50.0)")).buildBlue591TextLowLevel(isTextExpanded: isTextExpanded2)
                                        .overlay(RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                        )
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded2.toggle()
                                            }
                                        }
                                    if isTextExpanded2 {
                                        
                                        VStack (spacing: 1){
                                            ForEach(Table59AG.getTable59SN1(), id: \.id) { name in
                                                MyViewBuilder59(title1: name.content1,title2: name.content2,title3: name.content3,title4: name.content4,title5: name.content5,title6: name.content6,title7: name.content7,title8: name.content8,title9: name.content9,title10: name.content10,title11: name.content11,title12: name.content12,title13: name.content13,title14: name.content14, title15: name.content15,title16: name.content16,title17: name.content17,title18: name.content18,title19: name.content19,title20: name.content20,title21: name.content21,title22: name.content22,title23: name.content23,title24: name.content24,title25: name.content25,title26: name.content26,title27: name.content27,title28: name.content28).buildTable59SN()
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
                                        
                                    }
                               
                            
                                    MyViewBuilder(title: Text(""), content: Text("Левожелудочковая недостаточность (I50.1)")).buildBlue591TextLowLevel(isTextExpanded: isTextExpanded3)
                                        .overlay(RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                        )
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded3.toggle()
                                            }
                                        }
                                    if isTextExpanded3 {
                                        
                                        VStack (spacing: 1){
                                            ForEach(Table59AG.getTable59SN2(), id: \.id) { name in
                                                MyViewBuilder59(title1: name.content1,title2: name.content2,title3: name.content3,title4: name.content4,title5: name.content5,title6: name.content6,title7: name.content7,title8: name.content8,title9: name.content9,title10: name.content10,title11: name.content11,title12: name.content12,title13: name.content13,title14: name.content14, title15: name.content15,title16: name.content16,title17: name.content17,title18: name.content18,title19: name.content19,title20: name.content20,title21: name.content21,title22: name.content22,title23: name.content23,title24: name.content24,title25: name.content25,title26: name.content26,title27: name.content27,title28: name.content28).buildTable59SN()
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
                        
                        MyViewBuilder(title: Text(""), content: Text("Стационарный этап")).buildBlue591Text(isTextExpanded: isTextExpanded4)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded4.toggle()
                                }
                            }
                        if isTextExpanded4 {
                            
                                    MyViewBuilder(title: Text(""), content: Text("Застойная сердечная недостаточность (I50.0)")).buildBlue591TextLowLevel(isTextExpanded: isTextExpanded5)
                                        .overlay(RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                        )
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded5.toggle()
                                            }
                                        }
                                    if isTextExpanded5 {
                                        
                                        VStack (spacing: 1){
                                            ForEach(Table59AG.getTable59SN3(), id: \.id) { name in
                                                MyViewBuilder59(title1: name.content1,title2: name.content2,title3: name.content3,title4: name.content4,title5: name.content5,title6: name.content6,title7: name.content7,title8: name.content8,title9: name.content9,title10: name.content10,title11: name.content11,title12: name.content12,title13: name.content13,title14: name.content14, title15: name.content15,title16: name.content16,title17: name.content17,title18: name.content18,title19: name.content19,title20: name.content20,title21: name.content21,title22: name.content22,title23: name.content23,title24: name.content24,title25: name.content25,title26: name.content26,title27: name.content27,title28: name.content28).buildTable59SN()
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
                            
                                    MyViewBuilder(title: Text(""), content: Text("Левожелудочковая недостаточность (I50.1)")).buildBlue591TextLowLevel(isTextExpanded: isTextExpanded6)
                                        .overlay(RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                        )
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded6.toggle()
                                            }
                                        }
                                    if isTextExpanded6 {
                                        
                                        VStack (spacing: 1){
                                            ForEach(Table59AG.getTable59SN4(), id: \.id) { name in
                                                MyViewBuilder59(title1: name.content1,title2: name.content2,title3: name.content3,title4: name.content4,title5: name.content5,title6: name.content6,title7: name.content7,title8: name.content8,title9: name.content9,title10: name.content10,title11: name.content11,title12: name.content12,title13: name.content13,title14: name.content14, title15: name.content15,title16: name.content16,title17: name.content17,title18: name.content18,title19: name.content19,title20: name.content20,title21: name.content21,title22: name.content22,title23: name.content23,title24: name.content24,title25: name.content25,title26: name.content26,title27: name.content27,title28: name.content28).buildTable59SN()
                                            }
                                            
                                        }
                                        .background(Color.backtables)
                                        .cornerRadius(10)
                                        .overlay(RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                        )
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded6.toggle()
                                            }
                                        }
                                        
                                    }
                             
                        }
                }
                    Spacer(minLength: 10)
                    MyViewBuilder(title: Text("""
                                              ----
                                              """),
                                  content: Text("""
                                                Шкала стратификации риска тромбоэмболических осложнений CHA2DS2-VASc
                                                """)).buildBlue591Text(isTextExpanded: isTextExpanded7)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded7.toggle()
                            }
                        }
                    if isTextExpanded7 {
                        
                        
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
                                            isTextExpanded7.toggle()
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
                                isTextExpanded7.toggle()
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
                                    isTextExpanded7.toggle()
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
                                isTextExpanded7.toggle()
                            }
                        }
                    }
                    
                    MyViewBuilder(title: Text("""
                                              ----
                                              """),
                                  content: Text("""
                                                Шкала стратификации риска кровотечения HAS-BLED
                                                """)).buildBlue591Text(isTextExpanded: isTextExpanded8)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded8.toggle()
                            }
                        }
                    if isTextExpanded8 {
                        
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
                                            isTextExpanded8.toggle()
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
                                isTextExpanded8.toggle()
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
                                    isTextExpanded8.toggle()
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
                    Text("Постановление № 59")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("""
                    «Сердечная недостаточность»
                    """)
                    .font(.caption2)
                    .foregroundStyle(Color.toolBar)
                }
            }
            
        }
    }
    
}
#Preview {
    Postanovlenie59Alg6View()
}

