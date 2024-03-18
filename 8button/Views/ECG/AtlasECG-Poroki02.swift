//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct AtlasECGPoroki02: View {
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
        NavigationStack {
            ScrollView {
                VStack (spacing: 5) {
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        VStack (spacing: 1) {
                            MyViewBuilder(title: Text("1"), content: Text("60-летняя женщина с нарастающей экспираторной одышкой. В анамнезе «шумы в сердце» длительный период. **Ревматическое поражение митрального клапана с преобладанием стеноза**. Ритм синусовый с желудочковыми экстрасистолами. Высокие R в V1 с отклонением ЭОС вправо указывают на правожелудочковую гипертрофию. Также имеется двухфазность P в V1. ST-Т изменяется неопределенно.")).buildGrayInHiddenText()
                            
                            VStack (spacing:1) {
                                GeometryReader { proxy in
                                    ScrollView {
                                        Image("AtlasECGPoroki1")
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
                            
                            MyViewBuilder(title: Text("1"), content: Text("83-летняя женщина. ЭКГ демонстрирует мерцание предсердий с гипертрофией ЛЖ, отклонение ЭОС вправо. Эта комбинация характерна для гипертрофии обеих желудочков, а в комбинации с мерцанием предсердий - для **ревматизма** (у пациентки **митральный стеноз и поражение аортального клапана**).")).buildGrayInHiddenText()
                            
                            VStack (spacing:1) {
                                GeometryReader { proxy in
                                    ScrollView {
                                        Image("AtlasECGPoroki2")
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
                            
                            MyViewBuilder(title: Text("1"), content: Text("Этот 33-летний мужчина имеет ЭКГ, которая объясняется врожденным фактором. **Транспозиция магистральных сосудов** - шунтирование венозной крови к левому желудочку, а окисленной легочной крови к правому желудочку (который и является насосом артериальной крови в большой круг кровообращения).")).buildGrayInHiddenText()
                            
                            VStack (spacing:1) {
                                GeometryReader { proxy in
                                    ScrollView {
                                        Image("AtlasECGPoroki3")
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
                            
                            MyViewBuilder(title: Text("1"), content: Text("Трепетание предсердий с проведением 2:1. Кроме этого имеются БПНПГ, отклонение ЭОС влево, гипертрофия ЛЖ. Пациент имеет **стеноз аортального клапана**.")).buildGrayInHiddenText()
                            
                            VStack (spacing:1) {
                                GeometryReader { proxy in
                                    ScrollView {
                                        Image("AtlasECGPoroki4")
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
                            
                            MyViewBuilder(title: Text("1"), content: Text("21-летняя женщина с выраженной одышкой, готовится к оперативному вмешательству. **Митральный стеноз**.")).buildGrayInHiddenText()
                            
                            VStack (spacing:1) {
                                GeometryReader { proxy in
                                    ScrollView {
                                        Image("AtlasECGPoroki5")
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
                            
                            MyViewBuilder(title: Text("1"), content: Text("68-летняя женщина готовится к хирургическому вмешательству по поводу врожденной сердечной патологии. **Дефект межпредсердной перегородки**.")).buildGrayInHiddenText()
                            
                            VStack (spacing:1) {
                                GeometryReader { proxy in
                                    ScrollView {
                                        Image("AtlasECGPoroki6")
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
                    Text("Атлас ЭКГ")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("Пороки сердца")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                    //
                }
            }
            
        }
    }
    
}
#Preview {
    AtlasECGPoroki02()
}

