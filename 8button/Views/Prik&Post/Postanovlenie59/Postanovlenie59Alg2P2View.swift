//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct Postanovlenie59Alg2P2View: View {
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
                            **Диагностика и лечение артериальной гипертензии у беременных в стационарных условиях (при отсутствии акушерской патологии)**
                            """)).buildGrayTextCenter()
                      
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        VStack  {
                            MyViewBuilder(title: Text("1"), content: Text("Существовавшая ранее эссенциальная (**О10.0**), кардиоваскулярная (**О10.1**), почечная (**О10.2**), вторичная (**О10.4**)")).buildBlue59Text(isTextExpanded: isTextExpanded1)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded1.toggle()
                                    }
                                }
                            
                            if isTextExpanded1{
                                
                                
                                VStack (spacing: 1){
                                    
                                    
                                    ForEach(Table59AG.getTable59AG21(), id: \.id) { name in
                                        MyViewBuilder59(title1: name.content1,title2: name.content2,title3: name.content3,title4: name.content4,title5: name.content5,title6: name.content6,title7: name.content7,title8: name.content8,title9: name.content9,title10: name.content10,title11: name.content11,title12: name.content12,title13: name.content13,title14: name.content14, title15: name.content15,title16: name.content16,title17: name.content17,title18: name.content18,title19: name.content19,title20: name.content20,title21: name.content21,title22: name.content22,title23: name.content23,title24: name.content24,title25: name.content25,title26: name.content26,title27: name.content27,title28: name.content28).buildTable59AGPreg()
                                    }
                                    
                                }
                                .cornerRadius(10)
                                //                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
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
                            MyViewBuilder(title: Text("1"), content: Text("Гипертензия, осложняющая беременность, роды и после родовой период")).buildBlue59Text(isTextExpanded: isTextExpanded2)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded2.toggle()
                                    }
                                }
                            if isTextExpanded2{
                                
                                
                                VStack (spacing: 1){
                                    
                                    
                                    ForEach(Table59AG.getTable59AG22(), id: \.id) { name in
                                        MyViewBuilder59(title1: name.content1,title2: name.content2,title3: name.content3,title4: name.content4,title5: name.content5,title6: name.content6,title7: name.content7,title8: name.content8,title9: name.content9,title10: name.content10,title11: name.content11,title12: name.content12,title13: name.content13,title14: name.content14, title15: name.content15,title16: name.content16,title17: name.content17,title18: name.content18,title19: name.content19,title20: name.content20,title21: name.content21,title22: name.content22,title23: name.content23,title24: name.content24,title25: name.content25,title26: name.content26,title27: name.content27,title28: name.content28).buildTable59AGPreg()
                                    }
                                    
                                }
                                .cornerRadius(10)
                                //                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
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
                            MyViewBuilder(title: Text("1"), content: Text("Существовавшая ранее гипертензия с присоединившейся протеинурией (**О11**)")).buildBlue59Text(isTextExpanded: isTextExpanded3)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded3.toggle()
                                    }
                                }
                            if isTextExpanded3{
                                
                                
                                VStack (spacing: 1){
                                    
                                    
                                    ForEach(Table59AG.getTable59AG23(), id: \.id) { name in
                                        MyViewBuilder59(title1: name.content1,title2: name.content2,title3: name.content3,title4: name.content4,title5: name.content5,title6: name.content6,title7: name.content7,title8: name.content8,title9: name.content9,title10: name.content10,title11: name.content11,title12: name.content12,title13: name.content13,title14: name.content14, title15: name.content15,title16: name.content16,title17: name.content17,title18: name.content18,title19: name.content19,title20: name.content20,title21: name.content21,title22: name.content22,title23: name.content23,title24: name.content24,title25: name.content25,title26: name.content26,title27: name.content27,title28: name.content28).buildTable59AGPreg()
                                    }
                                    
                                }
                                .cornerRadius(10)
                                //                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
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
                            MyViewBuilder(title: Text("1"), content: Text("Вызванная беременностью гипертензия без значительной протеинурии (**О13**)")).buildBlue59Text(isTextExpanded: isTextExpanded4)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded4.toggle()
                                    }
                                }
                            if isTextExpanded4{
                                
                                
                                VStack (spacing: 1){
                                    
                                    
                                    ForEach(Table59AG.getTable59AG24(), id: \.id) { name in
                                        MyViewBuilder59(title1: name.content1,title2: name.content2,title3: name.content3,title4: name.content4,title5: name.content5,title6: name.content6,title7: name.content7,title8: name.content8,title9: name.content9,title10: name.content10,title11: name.content11,title12: name.content12,title13: name.content13,title14: name.content14, title15: name.content15,title16: name.content16,title17: name.content17,title18: name.content18,title19: name.content19,title20: name.content20,title21: name.content21,title22: name.content22,title23: name.content23,title24: name.content24,title25: name.content25,title26: name.content26,title27: name.content27,title28: name.content28).buildTable59AGPreg()
                                    }
                                    
                                }
                                .cornerRadius(10)
                                //                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
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
                            MyViewBuilder(title: Text("1"), content: Text("Вызванная беременностью гипертензия со значительной протеинурией (**О14**) (**преэклампсия**)")).buildBlue59Text(isTextExpanded: isTextExpanded5)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded5.toggle()
                                    }
                                }
                            if isTextExpanded5{
                                
                                
                                VStack (spacing: 1){
                                    
                                    
                                    ForEach(Table59AG.getTable59AG25(), id: \.id) { name in
                                        MyViewBuilder59(title1: name.content1,title2: name.content2,title3: name.content3,title4: name.content4,title5: name.content5,title6: name.content6,title7: name.content7,title8: name.content8,title9: name.content9,title10: name.content10,title11: name.content11,title12: name.content12,title13: name.content13,title14: name.content14, title15: name.content15,title16: name.content16,title17: name.content17,title18: name.content18,title19: name.content19,title20: name.content20,title21: name.content21,title22: name.content22,title23: name.content23,title24: name.content24,title25: name.content25,title26: name.content26,title27: name.content27,title28: name.content28).buildTable59AGPreg()
                                    }
                                    
                                }
                                .cornerRadius(10)
                                //                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
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
                            MyViewBuilder(title: Text("1"), content: Text("Эклампсия (**О15**)")).buildBlue59Text(isTextExpanded: isTextExpanded6)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded6.toggle()
                                    }
                                }
                            if isTextExpanded6{
                                
                                
                                VStack (spacing: 1){
                                    
                                    
                                    ForEach(Table59AG.getTable59AG26(), id: \.id) { name in
                                        MyViewBuilder59(title1: name.content1,title2: name.content2,title3: name.content3,title4: name.content4,title5: name.content5,title6: name.content6,title7: name.content7,title8: name.content8,title9: name.content9,title10: name.content10,title11: name.content11,title12: name.content12,title13: name.content13,title14: name.content14, title15: name.content15,title16: name.content16,title17: name.content17,title18: name.content18,title19: name.content19,title20: name.content20,title21: name.content21,title22: name.content22,title23: name.content23,title24: name.content24,title25: name.content25,title26: name.content26,title27: name.content27,title28: name.content28).buildTable59AGPreg1()
                                    }
                                    
                                }
                                .cornerRadius(10)
                                //                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded6.toggle()
                                    }
                                }
                                
                            }
                            
                        }
                    }
                    
                    Spacer(minLength: 15)
                    
                            MyViewBuilder(title: Text("3"), content: Text("""
                            * Данный вид диагностики (лечения), консультация врачей-специалистов осуществляется в условиях межрайонных (при наличии необходимого оборудования и врачей-специалистов), областных и республиканских организаций здравоохранения.
                            """)).buildGrayText()
                    
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
    Postanovlenie59Alg2P2View()
}

