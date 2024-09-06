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
        ScrollView {
            VStack (spacing: 5) {
                ZStack {
                    MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                    VStack (spacing: 1) {
                        MyViewBuilder(title: Text("1"), content: Text("60-летняя женщина с нарастающей экспираторной одышкой. В анамнезе «шумы в сердце» длительный период. **Ревматическое поражение митрального клапана с преобладанием стеноза**. Ритм синусовый с желудочковыми экстрасистолами. Высокие R в V1 с отклонением ЭОС вправо указывают на правожелудочковую гипертрофию. Также имеется двухфазность P в V1. ST-Т изменяется неопределенно.")).buildGrayInHiddenText()
                        
                        ImagePDF(image: Image("AtlasECGPoroki1"), title: "").buildECGPad(isTextExpanded: isTextExpanded1)
                            .onTapGesture (count: 1, perform: {
                                withAnimation(.easeInOut){
                                    UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded1.toggle()
                                }
                            })
                            .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded1 ? 520 : 520) : (isTextExpanded1 ? 240 : 480))
                            .cornerRadius(10)
                        
                            .padding(5)
                        
                        
                        MyViewBuilder(title: Text("1"), content: Text("83-летняя женщина. ЭКГ демонстрирует мерцание предсердий с гипертрофией ЛЖ, отклонение ЭОС вправо. Эта комбинация характерна для гипертрофии обеих желудочков, а в комбинации с мерцанием предсердий - для **ревматизма** (у пациентки **митральный стеноз и поражение аортального клапана**).")).buildGrayInHiddenText()
                        
                        ImagePDF(image: Image("AtlasECGPoroki2"), title: "").buildECGPad(isTextExpanded: isTextExpanded2)
                            .onTapGesture (count: 1, perform: {
                                withAnimation(.easeInOut){
                                    UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded2.toggle()
                                }
                            })
                            .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded2 ? 520 : 520) : (isTextExpanded2 ? 240 : 480))
                            .cornerRadius(10)
                        
                            .padding(5)
                        
                        MyViewBuilder(title: Text("1"), content: Text("Этот 33-летний мужчина имеет ЭКГ, которая объясняется врожденным фактором. **Транспозиция магистральных сосудов** - шунтирование венозной крови к левому желудочку, а окисленной легочной крови к правому желудочку (который и является насосом артериальной крови в большой круг кровообращения).")).buildGrayInHiddenText()
                        
                        ImagePDF(image: Image("AtlasECGPoroki3"), title: "").buildECGPad(isTextExpanded: isTextExpanded3)
                            .onTapGesture (count: 1, perform: {
                                withAnimation(.easeInOut){
                                    UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded3.toggle()
                                }
                            })
                            .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded3 ? 520 : 520) : (isTextExpanded3 ? 240 : 480))
                            .cornerRadius(10)
                        
                            .padding(5)
                        
                        MyViewBuilder(title: Text("1"), content: Text("Трепетание предсердий с проведением 2:1. Кроме этого имеются БПНПГ, отклонение ЭОС влево, гипертрофия ЛЖ. Пациент имеет **стеноз аортального клапана**.")).buildGrayInHiddenText()
                        
                        ImagePDF(image: Image("AtlasECGPoroki4"), title: "").buildECGPad(isTextExpanded: isTextExpanded4)
                            .onTapGesture (count: 1, perform: {
                                withAnimation(.easeInOut){
                                    UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded4.toggle()
                                }
                            })
                            .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded4 ? 520 : 520) : (isTextExpanded4 ? 240 : 480))
                            .cornerRadius(10)
                        
                            .padding(5)
                        
                        MyViewBuilder(title: Text("1"), content: Text("21-летняя женщина с выраженной одышкой, готовится к оперативному вмешательству. **Митральный стеноз**.")).buildGrayInHiddenText()
                        
                        ImagePDF(image: Image("AtlasECGPoroki5"), title: "").buildECGPad(isTextExpanded: isTextExpanded5)
                            .onTapGesture (count: 1, perform: {
                                withAnimation(.easeInOut){
                                    UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded5.toggle()
                                }
                            })
                            .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded5 ? 520 : 520) : (isTextExpanded5 ? 240 : 480))
                            .cornerRadius(10)
                        
                            .padding(5)
                        
                        MyViewBuilder(title: Text("1"), content: Text("68-летняя женщина готовится к хирургическому вмешательству по поводу врожденной сердечной патологии. **Дефект межпредсердной перегородки**.")).buildGrayInHiddenText()
                        
                        ImagePDF(image: Image("AtlasECGPoroki6"), title: "").buildECGPad(isTextExpanded: isTextExpanded6)
                            .onTapGesture (count: 1, perform: {
                                withAnimation(.easeInOut){
                                    UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded6.toggle()
                                }
                            })
                            .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded6 ? 520 : 520) : (isTextExpanded6 ? 240 : 480))
                            .cornerRadius(10)
                        
                            .padding(5)
                        
                        
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

