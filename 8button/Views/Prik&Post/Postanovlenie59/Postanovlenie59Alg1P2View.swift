//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct Postanovlenie59Alg1P2View: View {
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
                Spacer()
                    
                            MyViewBuilder(title: Text("3"), content: Text("""
                            **Диагностика и лечение заболеваний, характеризующихся повышенным 
                            кровяным давлением в больничных организациях здравоохранения**
                            """)).buildGrayTextCenter()
                        .multilineTextAlignment(.center)
                    
                            MyViewBuilder(title: Text("1"), content: Text("Эссенциальная (первичная) гипертензия Артериальная гипертензия I-III ст. (I10.0)")).buildBlue59Text(isTextExpanded: isTextExpanded7)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded7.toggle()
                                    }
                                }
                            
                            if isTextExpanded7{
                                
                                
                                VStack (spacing: 1){
                                    
                                    
                                    ForEach(Table59AG.getTable59AG7(), id: \.id) { name in
                                        MyViewBuilder59(title1: name.content1,title2: name.content2,title3: name.content3,title4: name.content4,title5: name.content5,title6: name.content6,title7: name.content7,title8: name.content8,title9: name.content9,title10: name.content10,title11: name.content11,title12: name.content12,title13: name.content13,title14: name.content14, title15: name.content15,title16: name.content16,title17: name.content17,title18: name.content18,title19: name.content19,title20: name.content20,title21: name.content21,title22: name.content22,title23: name.content23,title24: name.content24,title25: name.content25,title26: name.content26,title27: name.content27,title28: name.content28).buildTable59AG()
                                    }
                                    
                                }
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
                      
                    
                            MyViewBuilder(title: Text("1"), content: Text("Артериальная гипертензия (АГ) с преимущественным поражениием сердца с (застойной) сердечной недостаточностью (I11.0)")).buildBlue59Text(isTextExpanded: isTextExpanded8)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded8.toggle()
                                    }
                                }
                            
                            if isTextExpanded8{
                                
                                
                                VStack (spacing: 1){
                                    
                                    
                                    ForEach(Table59AG.getTable59AG8(), id: \.id) { name in
                                        MyViewBuilder59(title1: name.content1,title2: name.content2,title3: name.content3,title4: name.content4,title5: name.content5,title6: name.content6,title7: name.content7,title8: name.content8,title9: name.content9,title10: name.content10,title11: name.content11,title12: name.content12,title13: name.content13,title14: name.content14, title15: name.content15,title16: name.content16,title17: name.content17,title18: name.content18,title19: name.content19,title20: name.content20,title21: name.content21,title22: name.content22,title23: name.content23,title24: name.content24,title25: name.content25,title26: name.content26,title27: name.content27,title28: name.content28).buildTable59AG()
                                    }
                                    
                                }
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
                    
                            MyViewBuilder(title: Text("1"), content: Text("Артериальная гипертензия с преимущественным поражениием почек с почечной недостаточностью (I12.0)")).buildBlue59Text(isTextExpanded: isTextExpanded9)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded9.toggle()
                                    }
                                }
                            
                            if isTextExpanded9{
                                
                                
                                VStack (spacing: 1){
                                    
                                    
                                    ForEach(Table59AG.getTable59AG9(), id: \.id) { name in
                                        MyViewBuilder59(title1: name.content1,title2: name.content2,title3: name.content3,title4: name.content4,title5: name.content5,title6: name.content6,title7: name.content7,title8: name.content8,title9: name.content9,title10: name.content10,title11: name.content11,title12: name.content12,title13: name.content13,title14: name.content14, title15: name.content15,title16: name.content16,title17: name.content17,title18: name.content18,title19: name.content19,title20: name.content20,title21: name.content21,title22: name.content22,title23: name.content23,title24: name.content24,title25: name.content25,title26: name.content26,title27: name.content27,title28: name.content28).buildTable59AG()
                                    }
                                    
                                }
                                .cornerRadius(10)
                                .overlay(RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                )                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded9.toggle()
                                    }
                                }
                                
                            }
                    
                    
                    
                            MyViewBuilder(title: Text("1"), content: Text("Артериаль ная гипертензия с преимущественным поражениием сердца и почек с застойной сердечной недостаточностью (I13.0)")).buildBlue59Text(isTextExpanded: isTextExpanded10)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded10.toggle()
                                    }
                                }
                            
                            if isTextExpanded10{
                                
                                
                                VStack (spacing: 1){
                                    
                                    
                                    ForEach(Table59AG.getTable59AG10(), id: \.id) { name in
                                        MyViewBuilder59(title1: name.content1,title2: name.content2,title3: name.content3,title4: name.content4,title5: name.content5,title6: name.content6,title7: name.content7,title8: name.content8,title9: name.content9,title10: name.content10,title11: name.content11,title12: name.content12,title13: name.content13,title14: name.content14, title15: name.content15,title16: name.content16,title17: name.content17,title18: name.content18,title19: name.content19,title20: name.content20,title21: name.content21,title22: name.content22,title23: name.content23,title24: name.content24,title25: name.content25,title26: name.content26,title27: name.content27,title28: name.content28).buildTable59AG()
                                    }
                                    
                                }
                                .cornerRadius(10)
                                .overlay(RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                )                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded10.toggle()
                                    }
                                }
                                
                            }
                     
                            MyViewBuilder(title: Text("1"), content: Text("Артериальная гипертензия с преимущественным поражениием сердца и почек с застойной сердечной недостаточностью и почечной недостаточностью (I13.2)")).buildBlue59Text(isTextExpanded: isTextExpanded11)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded11.toggle()
                                    }
                                }
                            
                            if isTextExpanded11{
                                
                                
                                VStack (spacing: 1){
                                    
                                    
                                    ForEach(Table59AG.getTable59AG11(), id: \.id) { name in
                                        MyViewBuilder59(title1: name.content1,title2: name.content2,title3: name.content3,title4: name.content4,title5: name.content5,title6: name.content6,title7: name.content7,title8: name.content8,title9: name.content9,title10: name.content10,title11: name.content11,title12: name.content12,title13: name.content13,title14: name.content14, title15: name.content15,title16: name.content16,title17: name.content17,title18: name.content18,title19: name.content19,title20: name.content20,title21: name.content21,title22: name.content22,title23: name.content23,title24: name.content24,title25: name.content25,title26: name.content26,title27: name.content27,title28: name.content28).buildTable59AG()
                                    }
                                    
                                }
                                .cornerRadius(10)
                                .overlay(RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                )                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded11.toggle()
                                    }
                                }
                                
                            }
                      
                            MyViewBuilder(title: Text("1"), content: Text("Реноваскулярная гипертензия (фибромускулярная дисплазия, неспецифический аортоартериит) (I15.0)")).buildBlue59Text(isTextExpanded: isTextExpanded12)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded12.toggle()
                                    }
                                }
                            
                            if isTextExpanded12{
                                
                                
                                VStack (spacing: 1){
                                    
                                    
                                    ForEach(Table59AG.getTable59AG12(), id: \.id) { name in
                                        MyViewBuilder59(title1: name.content1,title2: name.content2,title3: name.content3,title4: name.content4,title5: name.content5,title6: name.content6,title7: name.content7,title8: name.content8,title9: name.content9,title10: name.content10,title11: name.content11,title12: name.content12,title13: name.content13,title14: name.content14, title15: name.content15,title16: name.content16,title17: name.content17,title18: name.content18,title19: name.content19,title20: name.content20,title21: name.content21,title22: name.content22,title23: name.content23,title24: name.content24,title25: name.content25,title26: name.content26,title27: name.content27,title28: name.content28).buildTable59AG()
                                    }
                                    
                                }
                                .cornerRadius(10)
                                .overlay(RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                )                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded12.toggle()
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
                    Text("Стационарный этап")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("""
                    «Артериальная гипертензия»
                    """)
                    .font(.caption2)
                    .foregroundStyle(Color.toolBar)
                }
            }
            
        }
    }
    
}
#Preview {
    Postanovlenie59Alg1P2View()
}

