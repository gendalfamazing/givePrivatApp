//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct AtlasECGNorma01: View {
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
                        
                        MyViewBuilder(title: Text("1"), content: Text("**Нормальный синусовый ритм**; **артефакты**, заметные хорошо в отведениях от конечностей, связаны с тремором при болезни Паркинсона.")).buildGrayInHiddenText()
                        
                        ImagePDF(image: Image("AtlasECGNormal1"), title: "").buildECGPad(isTextExpanded: isTextExpanded1)
                            .onTapGesture (count: 1, perform: {
                                withAnimation(.easeInOut){
                                    UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded1.toggle()
                                }
                            })
                            .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded1 ? 520 : 520) : (isTextExpanded1 ? 240 : 480))
                            .cornerRadius(10)
                            .padding(5)
                        
                        
                        MyViewBuilder(title: Text("1"), content: Text("Это - **нормальная кардиограмма у 11-летнего подростка**. Инверсии зубцов T в V1-V3 - нормальное явление у детей. В том числе, вертикальная ЭОС (приблизительно +90 град.).")).buildGrayInHiddenText()
                        
                        ImagePDF(image: Image("AtlasECGNormal2"), title: "").buildECGPad(isTextExpanded: isTextExpanded2)
                            .onTapGesture (count: 1, perform: {
                                withAnimation(.easeInOut){
                                    UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded2.toggle()
                                }
                            })
                            .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded2 ? 520 : 520) : (isTextExpanded2 ? 240 : 480))
                            .cornerRadius(10)
                        
                            .padding(5)
                        
                        MyViewBuilder(title: Text("1"), content: Text("**Нормальная ЭКГ в молодом возрасте** (26 лет).")).buildGrayInHiddenText()
                        
                        ImagePDF(image: Image("AtlasECGNormal3"), title: "").buildECGPad(isTextExpanded: isTextExpanded3)
                            .onTapGesture (count: 1, perform: {
                                withAnimation(.easeInOut){
                                    UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded3.toggle()
                                }
                            })
                            .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded3 ? 520 : 520) : (isTextExpanded3 ? 240 : 480))
                            .cornerRadius(10)
                        
                            .padding(5)
                        
                        MyViewBuilder(title: Text("1"), content: Text("**Измененное размещение грудных отведений** (V6=V1, и т.д.) **с нормальной кардиограммой**. Неосторожно полностью изменены отведения: V6=V1, V5=V2, и т.д.")).buildGrayInHiddenText()
                        
                        ImagePDF(image: Image("AtlasECGNormal4"), title: "").buildECGPad(isTextExpanded: isTextExpanded4)
                            .onTapGesture (count: 1, perform: {
                                withAnimation(.easeInOut){
                                    UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded4.toggle()
                                }
                            })
                            .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded4 ? 520 : 520) : (isTextExpanded4 ? 240 : 480))
                            .cornerRadius(10)
                        
                            .padding(5)
                        MyViewBuilder(title: Text("1"), content: Text("Женщина средних лет с психзаболеванием и подозрением на передозировку медикаментами. **Нормальный синусовый ритм**. **Артефакты симулируют нарушения ритма**. Пациентка сообщила о приёме чрезмерного количества клозапина, антипсихотического препарата, который может вызвать тремор.")).buildGrayInHiddenText()
                        
                        ImagePDF(image: Image("AtlasECGNormal5"), title: "").buildECGPad(isTextExpanded: isTextExpanded5)
                            .onTapGesture (count: 1, perform: {
                                withAnimation(.easeInOut){
                                    UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded5.toggle()
                                }
                            })
                            .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded5 ? 520 : 520) : (isTextExpanded5 ? 240 : 480))
                            .cornerRadius(10)
                        
                            .padding(5)
                        MyViewBuilder(title: Text("1"), content: Text("ЭКГ 23-летней женщины с болью в груди. **Нормальная ЭКГ**.")).buildGrayInHiddenText()
                        
                        ImagePDF(image: Image("AtlasECGNormal6"), title: "").buildECGPad(isTextExpanded: isTextExpanded6)
                            .onTapGesture (count: 1, perform: {
                                withAnimation(.easeInOut){
                                    UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded6.toggle()
                                }
                            })
                            .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded6 ? 520 : 520) : (isTextExpanded6 ? 240 : 480))
                            .cornerRadius(10)
                        
                            .padding(5)
                        
                        
                        MyViewBuilder(title: Text("1"), content: Text("**ЭКГ - в пределах нормы** (мужчина 24 года).")).buildGrayInHiddenText()
                        
                        ImagePDF(image: Image("AtlasECGNormal7"), title: "").buildECGPad(isTextExpanded: isTextExpanded7)
                            .onTapGesture (count: 1, perform: {
                                withAnimation(.easeInOut){
                                    UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded7.toggle()
                                }
                            })
                            .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded7 ? 520 : 520) : (isTextExpanded7 ? 240 : 480))
                            .cornerRadius(10)
                        
                            .padding(5)
                        
                        
                        MyViewBuilder(title: Text("1"), content: Text("Женщина 23 года. **Нормальный вариант инверсии T** в отведениях V1-V2.")).buildGrayInHiddenText()
                        
                        ImagePDF(image: Image("AtlasECGNormal8"), title: "").buildECGPad(isTextExpanded: isTextExpanded8)
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
                    Text("Варианты нормы")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                    //
                }
            }
            
        }
    }
    
}
#Preview {
    AtlasECGNorma01()
}

