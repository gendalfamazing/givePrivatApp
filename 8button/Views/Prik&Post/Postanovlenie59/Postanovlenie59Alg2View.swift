//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct Postanovlenie59Alg2View: View {
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
                VStack (spacing: 5){
                    MyViewBuilder(title: Text("Общие положения"), content: Text(LocalizedStringKey("Post59Alg1B0G0S1"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded.toggle()
                            }
                        }
                    
                    Spacer(minLength: 20)
                    VStack (spacing: 5) {
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        VStack  {
                            NavigationLink (destination: Postanovlenie59Alg2P1View()) {
                                MyViewBuilder(title: Text("1"), content: Text("Амбулаторный этап")).buildBlue59NavigationText()
                            }
                        }
                    }
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        VStack  {
                            NavigationLink (destination: Postanovlenie59Alg2P2View()) {
                                MyViewBuilder(title: Text("1"), content: Text("Стационарный этап")).buildBlue59NavigationText()
                            }
                        }
                    }
                }
                    Spacer(minLength: 20)
                    
                    VStack (spacing: 5) {
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                            
                            VStack  (spacing: 1){
                                MyViewBuilder(title: Text("1"), content: Text("Пороговый уровень АД для выявления АГ при различных методах его измерения (ESH, 2013 г.)")).buildBlue59Text(isTextExpanded: isTextExpanded1)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded1.toggle()
                                        }
                                    }
                                
                                if isTextExpanded1{
                                    VStack (spacing: 1){
                                        HStack (alignment: .bottom){
                                            ZStack {
                                                Text("Способы измерения")
                                                    .padding(.horizontal, 10)
                                                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                                    .font(.footnote)
                                                    .bold()
                                                
                                            }
                                            .frame(width: 190)
                                            Spacer()
                                            Text("""
                                            САД,
                                            мм рт.ст.
                                            """)
                                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                            .frame(maxWidth: 70)
                                            .font(.footnote)
                                            .bold()
                                            .padding(3)
                                            
                                            Spacer()
                                            Text("")
                                                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                                .frame(width: 40)
                                                .font(.footnote)
                                                .padding(3)
                                            
                                            Spacer()
                                            Text("""
                                            ДАД,
                                            мм рт.ст.
                                            """)
                                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                            .font(.footnote)
                                            .bold()
                                            .padding(3)
                                            
                                            Spacer()
                                        }
                                        .padding(2)
                                        .background(Color.grayButton)
                                        Divider()
                                            .background(Color.divider)
                                            .padding(.horizontal, 5)
                                        ForEach(Table59AG.getTable59AG13(), id: \.id) { name in
                                            MyViewBuilder59(title1: name.content1,title2: name.content2,title3: name.content3,title4: name.content4,title5: name.content5,title6: name.content6,title7: name.content7,title8: name.content8,title9: name.content9,title10: name.content10,title11: name.content11,title12: name.content12,title13: name.content13,title14: name.content14, title15: name.content15,title16: name.content16,title17: name.content17,title18: name.content18,title19: name.content19,title20: name.content20,title21: name.content21,title22: name.content22,title23: name.content23,title24: name.content24,title25: name.content25,title26: name.content26,title27: name.content27,title28: name.content28).buildTable59AG1()
                                                .onTapGesture {
                                                    withAnimation (.snappy) {
                                                        isTextExpanded1.toggle()
                                                    }
                                                }
                                        }
                                    }
                                }
                                
                            }
                        }
                    
                        MyViewBuilder(title: Text("Амбулаторные методы контроля АД"), content: Text(LocalizedStringKey("Post59Alg1B0G0S2"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded2)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded2.toggle()
                                }
                            }
                        MyViewBuilder(title: Text("Показания для проведения амбулаторного измерения артериального давления"), content: Text(LocalizedStringKey("Post59Alg1B0G0S3"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded3)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded3.toggle()
                                }
                            }
                    
                    
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        
                        VStack  {
                            MyViewBuilder(title: Text("1"), content: Text("Абсолютные и возможные противопоказания для использования антигипертензивных препаратов")).buildBlue59Text(isTextExpanded: isTextExpanded4)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded4.toggle()
                                    }
                                }
                            
                            if isTextExpanded4{
                                VStack (spacing: 1){
                                    HStack (alignment: .bottom) {
                                        
                                        Text("Препарат")
                                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .topLeading)
                                            .frame(maxWidth: 90)
                                            .font(.footnote)
                                            .bold()
                                            .padding(7)
                                        
                                        Spacer()
                                        Text("Абсолютные")
                                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .topLeading)
                                            .frame(maxWidth: 100)
                                            .font(.footnote)
                                            .bold()
                                            .padding(7)
                                        
                                        Spacer()
                                        Text("Возможные")
                                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .topLeading)
                                        //                .frame(maxWidth: 70)
                                            .font(.footnote)
                                            .bold()
                                            .padding(7)
                                        
                                        
                                        
                                        Spacer()
                                        
                                    }
                                    .padding(2)
                                    Divider()
                                        .background(Color.divider)
                                        .padding(.horizontal, 5)
                                    ForEach(Table59AG.getTable59AG14(), id: \.id) { name in
                                        MyViewBuilder59(title1: name.content1,title2: name.content2,title3: name.content3,title4: name.content4,title5: name.content5,title6: name.content6,title7: name.content7,title8: name.content8,title9: name.content9,title10: name.content10,title11: name.content11,title12: name.content12,title13: name.content13,title14: name.content14, title15: name.content15,title16: name.content16,title17: name.content17,title18: name.content18,title19: name.content19,title20: name.content20,title21: name.content21,title22: name.content22,title23: name.content23,title24: name.content24,title25: name.content25,title26: name.content26,title27: name.content27,title28: name.content28).buildTable59AG2()
                                            .onTapGesture {
                                                withAnimation (.snappy) {
                                                    isTextExpanded4.toggle()
                                                }
                                            }
                                        Divider()
                                            .background(Color.divider)
                                            .padding(.horizontal, 5)
                                    }
                                    MyViewBuilder(title: Text("3"), content: Text("""
                                            **Примечание**:
                                            
                                            AV – предсердечно-желудочковый, ЛЖ – левый желудочек,
                                            АПФ – ангиотензинпревращающий фермент, рСКФ – расчетная скорость клубочковой фильтрации
                                            """)).buildGrayInHidden59Text()
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded4.toggle()
                                            }
                                        }
                                    
                                }
                            }
                            
                        }
                    }
                        
                        MyViewBuilder(title: Text("Лечение факторов риска, ассоциированных с гипертензией"), content: Text(LocalizedStringKey("Post59Alg1B0G0S4"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded5)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded5.toggle()
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
                    «Артериальная гипертензия у беременных»
                    """)
                    .font(.caption2)
                    .foregroundStyle(Color.toolBar)
                }
            }
            
        }
    }
    
}
#Preview {
    Postanovlenie59Alg2View()
}

