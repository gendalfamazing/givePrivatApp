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
    @State private var isTextExpanded3 = false
    @State private var isTextExpanded4 = false
    @State private var isTextExpanded5 = false
    @State private var isTextExpanded6 = false
    @State private var isTextExpanded7 = false
    @State private var isTextExpanded8 = false
    @State private var isTextExpanded9 = false
    @State private var isTextExpanded10 = false
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack (spacing: 5) {
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        VStack (spacing: 1) {
                           
                               MyViewBuilder(title: Text("1"), content: Text("Нормальный синусовый ритм; артефакты, заметные хорошо в отведениях от конечностей, связаны с тремором при болезни Паркинсона.")).buildGrayInHiddenText()
                                      
                            VStack (spacing:1) {
                                
                                GeometryReader { proxy in
                                    ScrollView {
                                        Image("AtlasECGNormal1")
                                            .resizable()
                                            .padding(1)
                                            .cornerRadius(10)
                                            .frame(maxWidth: (isTextExpanded1 ? proxy.size.width : proxy.size.width * 2 ))
                                            .frame(maxHeight: (isTextExpanded1 ? proxy.size.height : proxy.size.height))
                                            .scaledToFit()
//                                            .clipShape(Rectangle())
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
                                
                                MyViewBuilder(title: Text("1"), content: Text("Это - нормальная кардиограмма в 11-летнего подростка. Инверсии зубцов T в V1-V3 - нормальное явление у детей. В том числе, вертикальная ЭОС (приблизительно +90 град.).")).buildGrayInHiddenText()
                                      
                            VStack (spacing:1) {
                                
                                GeometryReader { proxy in
                                    ScrollView {
                                        Image("AtlasECGNormal2")
                                            .resizable()
                                            .frame(maxWidth: (isTextExpanded2 ? proxy.size.width : proxy.size.width * 2.5))
                                            .frame(maxHeight: (isTextExpanded2 ? proxy.size.height : proxy.size.height * 2.5))
                                            .scaledToFit()
//                                            .clipShape(Rectangle())
                                            .modifier(ImageModifierECG(contentSize: CGSize(width: (isTextExpanded2 ? proxy.size.width : proxy.size.width * 1.9), height: (isTextExpanded2 ? proxy.size.height : proxy.size.height))))
                                            .onTapGesture (count: 1, perform: {
                                                withAnimation(.easeInOut){
                                                    isTextExpanded2.toggle()
                                                }
                                            })
                                        
                                    }
                                }
                            
                                
                                }
                            
                                .frame(minHeight: (isTextExpanded2 ? 240 : 450))
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                MyViewBuilder(title: Text("1"), content: Text("Нормальная ЭКГ в молодом возрасте (26 лет).")).buildGrayInHiddenText()
                                      
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGNormal3")
                                                .resizable()
                                                .frame(maxWidth: proxy.size.width)
                                                .frame(maxHeight: proxy.size.height)
                                                .scaledToFit()
                                                .clipShape(Rectangle())
                                                .modifier(ImageModifier(contentSize: CGSize(width: proxy.size.width, height: proxy.size.height)))
                                            
                                        }
                                    }
                                }
                                .frame(minHeight: 240)
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                MyViewBuilder(title: Text("1"), content: Text("Измененное размещение грудных отведений (V6=V1, и т.д.) с нормальной кардиограммой. Неосторожно полностью изменены отведения: V6=V1, V5=V2, и т.д.")).buildGrayInHiddenText()
                                      
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGNormal4")
                                                .resizable()
                                                .frame(maxWidth: proxy.size.width)
                                                .frame(maxHeight: proxy.size.height)
                                                .scaledToFit()
                                                .clipShape(Rectangle())
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: proxy.size.width, height: proxy.size.height)))
                                            
                                        }
                                    }
                                }
                                .frame(minHeight: 240)
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                MyViewBuilder(title: Text("1"), content: Text("Женщина средних лет с психзаболеванием и подозрением на передозировку медикаментами. Нормальный синусовый ритм. Артефакты симулируют нарушения ритма. Пациентка сообщила о приёме чрезмерного количества клозапина, антипсихотического препарата, который может вызвать тремор.")).buildGrayInHiddenText()
                                      
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGNormal5")
                                                .resizable()
                                                .frame(maxWidth: proxy.size.width)
                                                .frame(maxHeight: proxy.size.height)
                                                .scaledToFit()
                                                .clipShape(Rectangle())
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: proxy.size.width, height: proxy.size.height)))
                                            
                                        }
                                    }
                                }
                                .frame(minHeight: 240)
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                MyViewBuilder(title: Text("1"), content: Text("ЭКГ 23-летней женщины с болью в груди. Нормальная ЭКГ.")).buildGrayInHiddenText()
                                      
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGNormal6")
                                                .resizable()
                                                .frame(maxWidth: proxy.size.width)
                                                .frame(maxHeight: proxy.size.height)
                                                .scaledToFit()
                                                .clipShape(Rectangle())
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: proxy.size.width, height: proxy.size.height)))
                                            
                                        }
                                    }
                                }
                                .frame(minHeight: 240)
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                MyViewBuilder(title: Text("1"), content: Text("ЭКГ - в пределах нормы (мужчина 24 года).")).buildGrayInHiddenText()
                                      
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGNormal7")
                                                .resizable()
                                                .frame(maxWidth: proxy.size.width)
                                                .frame(maxHeight: proxy.size.height)
                                                .scaledToFit()
                                                .clipShape(Rectangle())
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: proxy.size.width, height: proxy.size.height)))
                                            
                                        }
                                    }
                                }
                                .frame(minHeight: 240)
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                MyViewBuilder(title: Text("1"), content: Text("Женщина 23 года. Нормальный вариант инверсии T в отведениях V1-V2.")).buildGrayInHiddenText()
                                      
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGNormal8")
                                                .resizable()
                                                .frame(maxWidth: proxy.size.width)
                                                .frame(maxHeight: proxy.size.height)
                                                .scaledToFit()
                                                .clipShape(Rectangle())
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: proxy.size.width, height: proxy.size.height)))
                                            
                                        }
                                    }
                                }
                                .frame(minHeight: 240)
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

