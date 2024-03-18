//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct AtlasECGIVR07: View {
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
                            LazyVStack (spacing:1) {
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        **Ритм искусственного водителя ритма**. ОИМ задне-диафрагмальной области.
                                                        """)).buildGrayInHiddenText()
                                
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGIVR1")
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
                                
                                MyViewBuilder(title: Text("1"), content: Text("**Ритм искусственного водителя ритма**.")).buildGrayInHiddenText()
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGIVR2")
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
                                
                                MyViewBuilder(title: Text("1"), content: Text("**Ритм двойного искусственного водителя ритма**. Метки хорошо заметны в отведении II перед каждым зубцом P и комплексом QRS.")).buildGrayInHiddenText()
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGIVR3")
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
                                
                                MyViewBuilder(title: Text("1"), content: Text("84-летняя женщина с **искусственным водителем ритма**. Жалобы на головокружения. Нормальная желудочковая функция ЭКС")).buildGrayInHiddenText()
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGIVR4")
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
                                
                                MyViewBuilder(title: Text("1"), content: Text("**Предсердная ЭКС** с нормальной проводимостью АВ-узла.")).buildGrayInHiddenText()
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGIVR5")
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
                                
                                MyViewBuilder(title: Text("1"), content: Text("78-летний мужчина. **ЭКС АВ-узла**.")).buildGrayInHiddenText()
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGIVR6")
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
                    Text("Искусственный водитель ритма")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                    //
                }
            }
            
        }
    }
    
}
#Preview {
    AtlasECGIVR07()
}

