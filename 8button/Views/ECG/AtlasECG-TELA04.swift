//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct AtlasECGTELA04: View {
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
                            VStack (spacing:1) {
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        39-летний мужчина с одышкой и судорогами в левой ноге. ЭКГ показывает синусовую тахикардию и инверсию зубца T в V1-V4, с зоной перехода R=S в V6. QT в нормальных пределах, имеется зубец S в отведении I с крохотным R в III, aVF. P достигает max во II отведении. Заключение - **острая правожелудочковая перегрузка из-за ТЭЛА** (пациент имеет длительный анамнез тромбоза глубоких вен нижних конечностей).
                                                        """)).buildGrayInHiddenText()
                                ImagePDF(image: Image("AtlasECGTELA1"), title: "").buildECGPad(isTextExpanded: isTextExpanded1)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded1.toggle()
                                        }
                                    })
                                    .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded1 ? 520 : 520) : (isTextExpanded1 ? 240 : 480))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                
                                MyViewBuilder(title: Text("1"), content: Text("69-летняя женщина с одышкой. Синусовая тахикардия с синдромом QIIIS1 и пеполной блокадой ПНПГ. Эти данные предполагают **тромбоэмболию ветвей ЛА (ТЭВЛА)**.")).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGTELA2"), title: "").buildECGPad(isTextExpanded: isTextExpanded2)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded2.toggle()
                                        }
                                    })
                                    .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded2 ? 520 : 520) : (isTextExpanded2 ? 240 : 480))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                MyViewBuilder(title: Text("1"), content: Text("42-летняя женщина с недавними болями в левой ноге, одышкой и обмороком. **ТЭЛА**. Синусовая тахикардия, синдром QIII SI, неполная БПНПГ и инверсия T в правогрудных отведениях.")).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGTELA3"), title: "").buildECGPad(isTextExpanded: isTextExpanded3)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded3.toggle()
                                        }
                                    })
                                    .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded3 ? 520 : 520) : (isTextExpanded3 ? 240 : 480))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                MyViewBuilder(title: Text("1"), content: Text("**Тромбоэктомия лёгочной артерии** по поводу **ТЭЛА**.")).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGTELA4"), title: "").buildECGPad(isTextExpanded: isTextExpanded4)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded4.toggle()
                                        }
                                    })
                                    .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded4 ? 520 : 520) : (isTextExpanded4 ? 240 : 480))
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
                    Text("Тромбоэмболия легочной артерии")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                    //
                }
            }
            
        }
    }
    
}
#Preview {
    AtlasECGTELA04()
}

