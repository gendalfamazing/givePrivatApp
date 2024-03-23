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
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGPericardit1")
                                                .resizable()
                                                .padding(1)
                                                .cornerRadius(10)
                                                .frame(maxWidth: (isTextExpanded1 ? proxy.size.width : proxy.size.width * 2 ))
                                                .frame(maxHeight: (isTextExpanded1 ? proxy.size.height : proxy.size.height))
                                                .scaledToFit()
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: (isTextExpanded1 ? proxy.size.width : proxy.size.width * 2), height: (isTextExpanded1 ? proxy.size.height : proxy.size.height ))))
                                                .onTapGesture (count: 1, perform: {
                                                    withAnimation(.easeInOut){
                                                        isTextExpanded1.toggle()
                                                    }
                                                })
                                        }
                                    }
                                }
                                .frame(minHeight: (isTextExpanded1 ? 240 : 480))
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                
                                MyViewBuilder(title: Text("1"), content: Text("**Острый перикардит**.")).buildGrayInHiddenText()
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGPericardit2")
                                                .resizable()
                                                .padding(1)
                                                .cornerRadius(10)
                                                .frame(maxWidth: (isTextExpanded2 ? proxy.size.width : proxy.size.width * 2 ))
                                                .frame(maxHeight: (isTextExpanded2 ? proxy.size.height : proxy.size.height))
                                                .scaledToFit()
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: (isTextExpanded2 ? proxy.size.width : proxy.size.width * 2), height: (isTextExpanded2 ? proxy.size.height : proxy.size.height ))))
                                                .onTapGesture (count: 1, perform: {
                                                    withAnimation(.easeInOut){
                                                        isTextExpanded2.toggle()
                                                    }
                                                })
                                        }
                                    }
                                }
                                .frame(minHeight: (isTextExpanded2 ? 240 : 480))
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                
                                MyViewBuilder(title: Text("1"), content: Text("**Экссудативный перикардит с возможной тампонадой**. Имеется диффузная элевация ST c небольшим снижением PQ.")).buildGrayInHiddenText()
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGPericardit3")
                                                .resizable()
                                                .padding(1)
                                                .cornerRadius(10)
                                                .frame(maxWidth: (isTextExpanded3 ? proxy.size.width : proxy.size.width * 2 ))
                                                .frame(maxHeight: (isTextExpanded3 ? proxy.size.height : proxy.size.height))
                                                .scaledToFit()
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: (isTextExpanded3 ? proxy.size.width : proxy.size.width * 2), height: (isTextExpanded3 ? proxy.size.height : proxy.size.height ))))
                                                .onTapGesture (count: 1, perform: {
                                                    withAnimation(.easeInOut){
                                                        isTextExpanded3.toggle()
                                                    }
                                                })
                                        }
                                    }
                                }
                                .frame(minHeight: (isTextExpanded3 ? 240 : 480))
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                
                                MyViewBuilder(title: Text("1"), content: Text("55-летний мужчина с дискомфортом в груди спустя 5 дней после аорто-коронарного шунтирования. ЭКГ показывает классические данные **острого перикардита**. Отмечается диффузная элевация ST (в отведениях I, II, aVL, aVF, V3-V6) с сопутствующим изменением PQ (подъём в отведении aVR, снижение в II, V4-V6). Таким образом, ST и PQ дискордантны.")).buildGrayInHiddenText()
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGPericardit4")
                                                .resizable()
                                                .padding(1)
                                                .cornerRadius(10)
                                                .frame(maxWidth: (isTextExpanded4 ? proxy.size.width : proxy.size.width * 2 ))
                                                .frame(maxHeight: (isTextExpanded4 ? proxy.size.height : proxy.size.height))
                                                .scaledToFit()
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: (isTextExpanded4 ? proxy.size.width : proxy.size.width * 2), height: (isTextExpanded4 ? proxy.size.height : proxy.size.height ))))
                                                .onTapGesture (count: 1, perform: {
                                                    withAnimation(.easeInOut){
                                                        isTextExpanded4.toggle()
                                                    }
                                                })
                                        }
                                    }
                                }
                                .frame(minHeight: (isTextExpanded4 ? 240 : 480))
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                
                                MyViewBuilder(title: Text("1"), content: Text("77-летняя женщина с ревматоидным артритом, болью груди и одышкой. **О. экссудативный перикардит**: Диффузная элевация ST (I, II, aVL, aVF, V2-V6) в связи с девиацией PQ (подъём PQ в aVR; снижение в V4-V6).")).buildGrayInHiddenText()
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGPericardit5")
                                                .resizable()
                                                .padding(1)
                                                .cornerRadius(10)
                                                .frame(maxWidth: (isTextExpanded5 ? proxy.size.width : proxy.size.width * 2 ))
                                                .frame(maxHeight: (isTextExpanded5 ? proxy.size.height : proxy.size.height))
                                                .scaledToFit()
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: (isTextExpanded5 ? proxy.size.width : proxy.size.width * 2), height: (isTextExpanded5 ? proxy.size.height : proxy.size.height ))))
                                                .onTapGesture (count: 1, perform: {
                                                    withAnimation(.easeInOut){
                                                        isTextExpanded5.toggle()
                                                    }
                                                })
                                        }
                                    }
                                }
                                .frame(minHeight: (isTextExpanded5 ? 240 : 480))
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                
                                MyViewBuilder(title: Text("1"), content: Text("ЭКГ показывает классические данные для **острого перикардита**. Они включают диффузные элевации ST (I, II aVF, V2-V6). Кроме того, есть тонкие отклонения PQ (подъём в aVR, и депрессия в нижнебоковой области).")).buildGrayInHiddenText()
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGPericardit6")
                                                .resizable()
                                                .padding(1)
                                                .cornerRadius(10)
                                                .frame(maxWidth: (isTextExpanded6 ? proxy.size.width : proxy.size.width * 2 ))
                                                .frame(maxHeight: (isTextExpanded6 ? proxy.size.height : proxy.size.height))
                                                .scaledToFit()
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: (isTextExpanded6 ? proxy.size.width : proxy.size.width * 2), height: (isTextExpanded6 ? proxy.size.height : proxy.size.height ))))
                                                .onTapGesture (count: 1, perform: {
                                                    withAnimation(.easeInOut){
                                                        isTextExpanded6.toggle()
                                                    }
                                                })
                                        }
                                    }
                                }
                                .frame(minHeight: (isTextExpanded6 ? 240 : 480))
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                
                                MyViewBuilder(title: Text("1"), content: Text("67-летний мужчина жалуется на неопределенную боль груди после того, как недавно перенёс АКШ. **Послеоперационный острый перикардит**.")).buildGrayInHiddenText()
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGPericardit7")
                                                .resizable()
                                                .padding(1)
                                                .cornerRadius(10)
                                                .frame(maxWidth: (isTextExpanded7 ? proxy.size.width : proxy.size.width * 2 ))
                                                .frame(maxHeight: (isTextExpanded7 ? proxy.size.height : proxy.size.height))
                                                .scaledToFit()
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: (isTextExpanded7 ? proxy.size.width : proxy.size.width * 2), height: (isTextExpanded7 ? proxy.size.height : proxy.size.height ))))
                                                .onTapGesture (count: 1, perform: {
                                                    withAnimation(.easeInOut){
                                                        isTextExpanded7.toggle()
                                                    }
                                                })
                                        }
                                    }
                                }
                                .frame(minHeight: (isTextExpanded7 ? 240 : 480))
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                
                                MyViewBuilder(title: Text("1"), content: Text("69-летний мужчина жалуется на давящую боль в груди, длящуюся в течение 12 часов. **Острый перикардит**.")).buildGrayInHiddenText()
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGPericardit8")
                                                .resizable()
                                                .padding(1)
                                                .cornerRadius(10)
                                                .frame(maxWidth: (isTextExpanded8 ? proxy.size.width : proxy.size.width * 2 ))
                                                .frame(maxHeight: (isTextExpanded8 ? proxy.size.height : proxy.size.height))
                                                .scaledToFit()
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: (isTextExpanded8 ? proxy.size.width : proxy.size.width * 2), height: (isTextExpanded8 ? proxy.size.height : proxy.size.height ))))
                                                .onTapGesture (count: 1, perform: {
                                                    withAnimation(.easeInOut){
                                                        isTextExpanded8.toggle()
                                                    }
                                                })
                                        }
                                    }
                                }
                                .frame(minHeight: (isTextExpanded8 ? 240 : 480))
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
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

