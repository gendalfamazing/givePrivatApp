//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct AtlasECGCardiomiopatii03: View {
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
                            LazyVStack (spacing:1) {
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        Мужчина 36 лет с развитием боли в груди в покое, поступивший после предполагаемого инфаркта миокарда. **Гипертрофическая кардиомиопатия, апикальный вариант (Синдром Ямагучи)**. Кардиограмма демонстрирует левожелудочковую гипертрофию с глубокими отрицательными зубцами T в грудных и отведениях от конечностей. Кардиомиопатия Ямагучи характеризуется изолированной верхушечной гипертрофией. ЭКГ показывает ГЛЖ и отрицательные T в V3-V5. Верхушечная гипертрофическая кардиомиопатия так же, как и более общие формы гипертрофической кардиомиопатии - важные причины образцов псевдоинфаркта.
                                                        """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGCardiomiopatii1"), title: "").buildECGPad(isTextExpanded: isTextExpanded1)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded1.toggle()
                                        }
                                    })
                                    .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded1 ? 520 : 520) : (isTextExpanded1 ? 240 : 480))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                
                                MyViewBuilder(title: Text("1"), content: Text("52-летний мужчина с историей «кардиомиопатии» с частыми обмороками. ЭКГ показывает синусовый ритм, **гипертрофию ЛЖ** с его перегрузкой, ПБПНПГ с блокадой передней ветви ЛНПГ (передний гемиблок). Диагноз - **гипертрофическая кардиомиопатия с асимметричной гипертрофией перегородки** . Обморок пациента, возможно, произошел из-за бради- или тахиаритмий, или из-за гемодинамических последствий гипертрофии.")).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGCardiomiopatii2"), title: "").buildECGPad(isTextExpanded: isTextExpanded2)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded2.toggle()
                                        }
                                    })
                                    .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded2 ? 520 : 520) : (isTextExpanded2 ? 240 : 480))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                MyViewBuilder(title: Text("1"), content: Text("33-летний мужчина с систолическим шумом. Пациент имеет **гипертрофическую кардиомиопатию.**")).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGCardiomiopatii3"), title: "").buildECGPad(isTextExpanded: isTextExpanded3)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded3.toggle()
                                        }
                                    })
                                    .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded3 ? 520 : 520) : (isTextExpanded3 ? 240 : 480))
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
                    Text("Кардиомиопатии")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                    //
                }
            }
            
        }
    }
    
}
#Preview {
    AtlasECGCardiomiopatii03()
}

