//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct AtlasECGPericardit05: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @State private var isTextExpanded1 = true
    @State private var isTextExpanded2 = true
    @State private var isTextExpanded3 = true
    @State private var isTextExpanded4 = true
    @State private var isTextExpanded5 = true
    @State private var isTextExpanded6 = true
    @State private var isTextExpanded7 = true
    @State private var isTextExpanded8 = true
    @State private var isTextExpanded9 = true
    @State private var isTextExpanded10 = true
    @State private var isTextExpanded11 = true
    @State private var isTextExpanded12 = true
    @State private var isTextExpanded13 = true
    @State private var isTextExpanded14 = true
    @State private var isTextExpanded15 = true
    @State private var isTextExpanded16 = true
    @State private var isTextExpanded17 = true
    @State private var isTextExpanded18 = true
    @State private var isTextExpanded19 = true
    @State private var isTextExpanded20 = true
    
    var body: some View {
        ScrollView {
            VStack (spacing: 5) {
                ZStack {
                    MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                    VStack (spacing: 1) {
                        VStack (spacing:1){
                            MyViewBuilder(title: Text("1"), content: Text("50-летний мужчина с болью в груди. **Острый перикардит**. Диффдиагноз с ТЭЛА.")).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGPericardit1"), title: "").buildECGPad(isTextExpanded: isTextExpanded1)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded1.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded1 ? 520 : 520) : (isTextExpanded1 ? 240 : 480))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            
                            MyViewBuilder(title: Text("1"), content: Text("**Острый перикардит**.")).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGPericardit2"), title: "").buildECGPad(isTextExpanded: isTextExpanded2)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded2.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded2 ? 520 : 520) : (isTextExpanded2 ? 240 : 480))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            
                            MyViewBuilder(title: Text("1"), content: Text("**Экссудативный перикардит с возможной тампонадой**. Имеется диффузная элевация ST c небольшим снижением PQ.")).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGPericardit3"), title: "").buildECGPad(isTextExpanded: isTextExpanded3)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded3.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded3 ? 520 : 520) : (isTextExpanded3 ? 240 : 480))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            
                            MyViewBuilder(title: Text("1"), content: Text("55-летний мужчина с дискомфортом в груди спустя 5 дней после аорто-коронарного шунтирования. ЭКГ показывает классические данные **острого перикардита**. Отмечается диффузная элевация ST (в отведениях I, II, aVL, aVF, V3-V6) с сопутствующим изменением PQ (подъём в отведении aVR, снижение в II, V4-V6). Таким образом, ST и PQ дискордантны.")).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGPericardit4"), title: "").buildECGPad(isTextExpanded: isTextExpanded4)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded4.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded4 ? 520 : 520) : (isTextExpanded4 ? 240 : 480))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            
                            MyViewBuilder(title: Text("1"), content: Text("77-летняя женщина с ревматоидным артритом, болью груди и одышкой. **О. экссудативный перикардит**: Диффузная элевация ST (I, II, aVL, aVF, V2-V6) в связи с девиацией PQ (подъём PQ в aVR; снижение в V4-V6).")).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGPericardit5"), title: "").buildECGPad(isTextExpanded: isTextExpanded5)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded5.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded5 ? 520 : 520) : (isTextExpanded5 ? 240 : 480))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            
                            MyViewBuilder(title: Text("1"), content: Text("ЭКГ показывает классические данные для **острого перикардита**. Они включают диффузные элевации ST (I, II aVF, V2-V6). Кроме того, есть тонкие отклонения PQ (подъём в aVR, и депрессия в нижнебоковой области).")).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGPericardit6"), title: "").buildECGPad(isTextExpanded: isTextExpanded6)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded6.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded6 ? 520 : 520) : (isTextExpanded6 ? 240 : 480))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            MyViewBuilder(title: Text("1"), content: Text("67-летний мужчина жалуется на неопределенную боль груди после того, как недавно перенёс АКШ. **Послеоперационный острый перикардит**.")).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGPericardit7"), title: "").buildECGPad(isTextExpanded: isTextExpanded7)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded7.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded7 ? 520 : 520) : (isTextExpanded7 ? 240 : 480))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            MyViewBuilder(title: Text("1"), content: Text("69-летний мужчина жалуется на давящую боль в груди, длящуюся в течение 12 часов. **Острый перикардит**.")).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGPericardit8"), title: "").buildECGPad(isTextExpanded: isTextExpanded8)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded8.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded8 ? 520 : 520) : (isTextExpanded8 ? 240 : 480))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
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
                    Text("Атлас ЭКГ")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("Перикардиты")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                    //
                }
            }
            
        }
    }
    
}
#Preview {
    AtlasECGPericardit05()
}

