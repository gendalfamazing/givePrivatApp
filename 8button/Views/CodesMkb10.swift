////
////  PrikazyPostanovleniya.swift
////  7button
////
////  Created by Artur Vladymcev on 21.11.23.
////
//
//import SwiftUI
//import SwiftData
//
//struct CodesMkb10: View {
//    
//    @State private var codes = CodeMkb.getCodeMkb()
//    @State private var codes1 = CodeMkb.getCodeMkb1()
//    @State private var codes2 = CodeMkb.getCodeMkb2()
//    @State private var codes3 = CodeMkb.getCodeMkb3()
//    @State private var codes4 = CodeMkb.getCodeMkb4()
//    @Environment(\.colorScheme) var colorScheme
//    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
//    
//    @State private var isTextExpanded1 = false
//    @State private var isTextExpanded2 = false
//    @State private var isTextExpanded3 = false
//    @State private var isTextExpanded4 = false
//    @State private var isTextExpanded5 = false
//    @State private var isTextExpanded6 = false
//    @State private var isTextExpanded7 = false
//    @State private var isTextExpanded8 = false
//    @State private var isTextExpanded9 = false
//    @State private var isTextExpanded10 = false
//    @State private var isTextExpanded11 = false
//    @State private var isTextExpanded12 = false
//    @State private var isTextExpanded13 = false
//    @State private var isTextExpanded14 = false
//    @State private var isTextExpanded15 = false
//    @State private var isTextExpanded16 = false
//    @State private var isTextExpanded17 = false
//    @State private var isTextExpanded18 = false
//    @State private var isTextExpanded19 = false
//    @State private var isTextExpanded20 = false
//    
//    var body: some View {
//        NavigationStack {
//        ScrollView {
//            Spacer()
//            LazyVStack(spacing: 1){
//                LazyVStack {
//                    MyViewBuilder(title: Text("A00-B86"), content: Text("**Инфекционные и паразитарные болезни**")).buildTitleCodes(isTextExpanded: isTextExpanded1)
//                        .onTapGesture {
//                            withAnimation (.easeInOut) {
//                                isTextExpanded1.toggle()
//                            }
//                            
//                        }
//                    if isTextExpanded1{
//                        Spacer()
//                        LazyVStack(spacing: 1) {
//                            ForEach(codes.filter { $0.id >= 1 && $0.id <= 58 }, id: \.id) { name in
//                                HStack{
//                                    ZStack {
//                                        Text(name.code)
//                                            .padding(.horizontal, 10)
//                                            .font(.headline)
//                                        
//                                    }
//                                    .frame(minWidth: 70)
//                                    
//                                    //                            .background(Color.red)
//                                    //                            Spacer()
//                                    Text(name.name)
//                                        .font(.footnote)
//                                        .padding(3)
//                                    Spacer()
//                                    
//                                }
//                                .padding(2)
//                                .background(Color.grayButton)
//                                //                            .cornerRadius(10)
//                                //                        .border(Color.black)
//                                
//                                
//                            }
//                        }
//                        .background(Color.back)
//                        .cornerRadius(10)
//                    }
//                    Spacer()
//                    MyViewBuilder(title: Text("C80-D48"), content: Text("**Новообразования**")).buildTitleCodes(isTextExpanded: isTextExpanded2)
//                        .onTapGesture {
//                            withAnimation (.easeInOut) {
//                                isTextExpanded2.toggle()
//                            }
//                            
//                        }
//                    if isTextExpanded2{
//                        Spacer()
//                        LazyVStack(spacing: 1) {
//                            ForEach(codes.filter { $0.id >= 59 && $0.id <= 62 }, id: \.id) { name in
//                                HStack{
//                                    ZStack {
//                                        Text(name.code)
//                                            .padding(.horizontal, 10)
//                                            .font(.headline)
//                                        
//                                    }
//                                    .frame(minWidth: 70)
//                                    
//                                    //                            .background(Color.red)
//                                    //                            Spacer()
//                                    Text(name.name)
//                                        .font(.footnote)
//                                        .padding(3)
//                                    Spacer()
//                                    
//                                }
//                                .padding(2)
//                                .background(Color.grayButton)
//                                //                            .cornerRadius(10)
//                                //                        .border(Color.black)
//                                
//                                
//                            }
//                        }
//                        .background(Color.back)
//                        .cornerRadius(10)
//                    }
//                    Spacer()
//                    MyViewBuilder(title: Text("D50-D68"), content: Text("**Болезни крови,кроветворных органов**")).buildTitleCodes(isTextExpanded: isTextExpanded3)
//                        .onTapGesture {
//                            withAnimation (.easeInOut) {
//                                isTextExpanded3.toggle()
//                            }
//                            
//                        }
//                    if isTextExpanded3{
//                        Spacer()
//                        LazyVStack(spacing: 1) {
//                            ForEach(codes.filter { $0.id >= 63 && $0.id <= 66 }, id: \.id) { name in
//                                HStack{
//                                    ZStack {
//                                        Text(name.code)
//                                            .padding(.horizontal, 10)
//                                            .font(.headline)
//                                        
//                                    }
//                                    .frame(minWidth: 70)
//                                    
//                                    //                            .background(Color.red)
//                                    //                            Spacer()
//                                    Text(name.name)
//                                        .font(.footnote)
//                                        .padding(3)
//                                    Spacer()
//                                    
//                                }
//                                .padding(2)
//                                .background(Color.grayButton)
//                                //                            .cornerRadius(10)
//                                //                        .border(Color.black)
//                                
//                                
//                            }
//                        }
//                        .background(Color.back)
//                        .cornerRadius(10)
//                    }
//                    Spacer()
//                    MyViewBuilder(title: Text("E05-E43"), content: Text("**Болезни эндокринной системы**")).buildTitleCodes(isTextExpanded: isTextExpanded4)
//                        .onTapGesture {
//                            withAnimation (.easeInOut) {
//                                isTextExpanded4.toggle()
//                            }
//                            
//                        }
//                    if isTextExpanded4{
//                        Spacer()
//                        LazyVStack(spacing: 1) {
//                            ForEach(codes.filter { $0.id >= 67 && $0.id <= 81 }, id: \.id) { name in
//                                HStack{
//                                    ZStack {
//                                        Text(name.code)
//                                            .padding(.horizontal, 10)
//                                            .font(.headline)
//                                        
//                                    }
//                                    .frame(minWidth: 70)
//                                    
//                                    //                            .background(Color.red)
//                                    //                            Spacer()
//                                    Text(name.name)
//                                        .font(.footnote)
//                                        .padding(3)
//                                    Spacer()
//                                    
//                                }
//                                .padding(2)
//                                .background(Color.grayButton)
//                                //                            .cornerRadius(10)
//                                //                        .border(Color.black)
//                                
//                                
//                            }
//                        }
//                        .background(Color.back)
//                        .cornerRadius(10)
//                    }
//                    Spacer()
//                    MyViewBuilder(title: Text("F03-F99"), content: Text("**Психические расстройства и расстройства поведения**")).buildTitleCodes(isTextExpanded: isTextExpanded5)
//                        .onTapGesture {
//                            withAnimation (.easeInOut) {
//                                isTextExpanded5.toggle()
//                            }
//                            
//                        }
//                    if isTextExpanded5{
//                        Spacer()
//                        LazyVStack(spacing: 1) {
//                            ForEach(codes.filter { $0.id >= 82 && $0.id <= 96 }, id: \.id) { name in
//                                HStack{
//                                    ZStack {
//                                        Text(name.code)
//                                            .padding(.horizontal, 10)
//                                            .font(.headline)
//                                        
//                                    }
//                                    .frame(minWidth: 70)
//                                    
//                                    //                            .background(Color.red)
//                                    //                            Spacer()
//                                    Text(name.name)
//                                        .font(.footnote)
//                                        .padding(3)
//                                    Spacer()
//                                    
//                                }
//                                .padding(2)
//                                .background(Color.grayButton)
//                                //                            .cornerRadius(10)
//                                //                        .border(Color.black)
//                                
//                                
//                            }
//                        }
//                        .background(Color.back)
//                        .cornerRadius(10)
//                    }
//                    Spacer()
//                }
//                VStack {
//                    MyViewBuilder(title: Text("G00-G95"), content: Text("**Болезни нервной системы**")).buildTitleCodes(isTextExpanded: isTextExpanded6)
//                        .onTapGesture {
//                            withAnimation (.easeInOut) {
//                                isTextExpanded6.toggle()
//                            }
//                            
//                        }
//                    if isTextExpanded6{
//                        Spacer()
//                        VStack(spacing: 1) {
//                            ForEach(codes1.filter { $0.id >= 97 && $0.id <= 121 }, id: \.id) { name in
//                                HStack{
//                                    ZStack {
//                                        Text(name.code)
//                                            .padding(.horizontal, 10)
//                                            .font(.headline)
//                                        
//                                    }
//                                    .frame(minWidth: 70)
//                                    
//                                    //                            .background(Color.red)
//                                    //                            Spacer()
//                                    Text(name.name)
//                                        .font(.footnote)
//                                        .padding(3)
//                                    Spacer()
//                                    
//                                }
//                                .padding(2)
//                                .background(Color.grayButton)
//                                //                            .cornerRadius(10)
//                                //                        .border(Color.black)
//                                
//                                
//                            }
//                        }
//                        .background(Color.back)
//                        .cornerRadius(10)
//                    }
//                    Spacer()
//                    MyViewBuilder(title: Text("H00-H57"), content: Text("**Болезни глаза и его придаточного аппарата**")).buildTitleCodes(isTextExpanded: isTextExpanded7)
//                        .onTapGesture {
//                            withAnimation (.easeInOut) {
//                                isTextExpanded7.toggle()
//                            }
//                            
//                        }
//                    if isTextExpanded7{
//                        Spacer()
//                        VStack(spacing: 1) {
//                            ForEach(codes1.filter { $0.id >= 122 && $0.id <= 129 }, id: \.id) { name in
//                                HStack{
//                                    ZStack {
//                                        Text(name.code)
//                                            .padding(.horizontal, 10)
//                                            .font(.headline)
//                                        
//                                    }
//                                    .frame(minWidth: 70)
//                                    
//                                    //                            .background(Color.red)
//                                    //                            Spacer()
//                                    Text(name.name)
//                                        .font(.footnote)
//                                        .padding(3)
//                                    Spacer()
//                                    
//                                }
//                                .padding(2)
//                                .background(Color.grayButton)
//                                //                            .cornerRadius(10)
//                                //                        .border(Color.black)
//                                
//                                
//                            }
//                        }
//                        .background(Color.back)
//                        .cornerRadius(10)
//                    }
//                    Spacer()
//                    MyViewBuilder(title: Text("H60-H93"), content: Text("**Болезни уха и сосцевидного отростка**")).buildTitleCodes(isTextExpanded: isTextExpanded8)
//                        .onTapGesture {
//                            withAnimation (.easeInOut) {
//                                isTextExpanded8.toggle()
//                            }
//                            
//                        }
//                    if isTextExpanded8{
//                        Spacer()
//                        VStack(spacing: 1) {
//                            ForEach(codes1.filter { $0.id >= 130 && $0.id <= 136 }, id: \.id) { name in
//                                HStack{
//                                    ZStack {
//                                        Text(name.code)
//                                            .padding(.horizontal, 10)
//                                            .font(.headline)
//                                        
//                                    }
//                                    .frame(minWidth: 70)
//                                    
//                                    //                            .background(Color.red)
//                                    //                            Spacer()
//                                    Text(name.name)
//                                        .font(.footnote)
//                                        .padding(3)
//                                    Spacer()
//                                    
//                                }
//                                .padding(2)
//                                .background(Color.grayButton)
//                                //                            .cornerRadius(10)
//                                //                        .border(Color.black)
//                                
//                                
//                            }
//                        }
//                        .background(Color.back)
//                        .cornerRadius(10)
//                    }
//                    Spacer()
//                    MyViewBuilder(title: Text("I01-I95"), content: Text("**Болезни системы кровообращения**")).buildTitleCodes(isTextExpanded: isTextExpanded9)
//                        .onTapGesture {
//                            withAnimation (.easeInOut) {
//                                isTextExpanded9.toggle()
//                            }
//                            
//                        }
//                    if isTextExpanded9{
//                        Spacer()
//                        VStack(spacing: 1) {
//                            ForEach(codes1.filter { $0.id >= 137 && $0.id <= 196 }, id: \.id) { name in
//                                HStack{
//                                    ZStack {
//                                        Text(name.code)
//                                            .padding(.horizontal, 10)
//                                            .font(.headline)
//                                        
//                                    }
//                                    .frame(minWidth: 70)
//                                    
//                                    //                            .background(Color.red)
//                                    //                            Spacer()
//                                    Text(name.name)
//                                        .font(.footnote)
//                                        .padding(3)
//                                    Spacer()
//                                    
//                                }
//                                .padding(2)
//                                .background(Color.grayButton)
//                                //                            .cornerRadius(10)
//                                //                        .border(Color.black)
//                                
//                                
//                            }
//                        }
//                        .background(Color.back)
//                        .cornerRadius(10)
//                    }
//                    Spacer()
//                    MyViewBuilder(title: Text("J00-J98"), content: Text("**Болезни органов дыхания**")).buildTitleCodes(isTextExpanded: isTextExpanded10)
//                        .onTapGesture {
//                            withAnimation (.easeInOut) {
//                                isTextExpanded10.toggle()
//                            }
//                            
//                        }
//                    if isTextExpanded10{
//                        Spacer()
//                        VStack(spacing: 1) {
//                            ForEach(codes2.filter { $0.id >= 197 && $0.id <= 227 }, id: \.id) { name in
//                                HStack{
//                                    ZStack {
//                                        Text(name.code)
//                                            .padding(.horizontal, 10)
//                                            .font(.headline)
//                                        
//                                    }
//                                    .frame(minWidth: 70)
//                                    
//                                    //                            .background(Color.red)
//                                    //                            Spacer()
//                                    Text(name.name)
//                                        .font(.footnote)
//                                        .padding(3)
//                                    Spacer()
//                                    
//                                }
//                                .padding(2)
//                                .background(Color.grayButton)
//                                //                            .cornerRadius(10)
//                                //                        .border(Color.black)
//                                
//                                
//                            }
//                        }
//                        .background(Color.back)
//                        .cornerRadius(10)
//                    }
//                    Spacer()
//                }
//                VStack {
//                    MyViewBuilder(title: Text("K00-K92"), content: Text("**Болезни органов пищеварения**")).buildTitleCodes(isTextExpanded: isTextExpanded11)
//                        .onTapGesture {
//                            withAnimation (.easeInOut) {
//                                isTextExpanded11.toggle()
//                            }
//                            
//                        }
//                    if isTextExpanded11{
//                        Spacer()
//                        LazyVStack(spacing: 1) {
//                            ForEach(codes2.filter { $0.id >= 228 && $0.id <= 269 }, id: \.id) { name in
//                                HStack{
//                                    ZStack {
//                                        Text(name.code)
//                                            .padding(.horizontal, 10)
//                                            .font(.headline)
//                                        
//                                    }
//                                    .frame(minWidth: 70)
//                                    
//                                    //                            .background(Color.red)
//                                    //                            Spacer()
//                                    Text(name.name)
//                                        .font(.footnote)
//                                        .padding(3)
//                                    Spacer()
//                                    
//                                }
//                                .padding(2)
//                                .background(Color.grayButton)
//                                //                            .cornerRadius(10)
//                                //                        .border(Color.black)
//                                
//                                
//                            }
//                        }
//                        .background(Color.back)
//                        .cornerRadius(10)
//                    }
//                    Spacer()
//                    MyViewBuilder(title: Text("L02-L74"), content: Text("**Болезни кожи и подкожной клетчатки**")).buildTitleCodes(isTextExpanded: isTextExpanded12)
//                        .onTapGesture {
//                            withAnimation (.easeInOut) {
//                                isTextExpanded12.toggle()
//                            }
//                            
//                        }
//                    if isTextExpanded12{
//                        Spacer()
//                        LazyVStack(spacing: 1) {
//                            ForEach(codes2.filter { $0.id >= 270 && $0.id <= 278 }, id: \.id) { name in
//                                HStack{
//                                    ZStack {
//                                        Text(name.code)
//                                            .padding(.horizontal, 10)
//                                            .font(.headline)
//                                        
//                                    }
//                                    .frame(minWidth: 70)
//                                    
//                                    //                            .background(Color.red)
//                                    //                            Spacer()
//                                    Text(name.name)
//                                        .font(.footnote)
//                                        .padding(3)
//                                    Spacer()
//                                    
//                                }
//                                .padding(2)
//                                .background(Color.grayButton)
//                                //                            .cornerRadius(10)
//                                //                        .border(Color.black)
//                                
//                                
//                            }
//                        }
//                        .background(Color.back)
//                        .cornerRadius(10)
//                    }
//                    Spacer()
//                    MyViewBuilder(title: Text("M06-M86"), content: Text("**Болезни костно-мышечной системы и соед.ткани**")).buildTitleCodes(isTextExpanded: isTextExpanded13)
//                        .onTapGesture {
//                            withAnimation (.easeInOut) {
//                                isTextExpanded13.toggle()
//                            }
//                            
//                        }
//                    if isTextExpanded13{
//                        Spacer()
//                        LazyVStack(spacing: 1) {
//                            ForEach(codes2.filter { $0.id >= 279 && $0.id <= 288 }, id: \.id) { name in
//                                HStack{
//                                    ZStack {
//                                        Text(name.code)
//                                            .padding(.horizontal, 10)
//                                            .font(.headline)
//                                        
//                                    }
//                                    .frame(minWidth: 70)
//                                    
//                                    //                            .background(Color.red)
//                                    //                            Spacer()
//                                    Text(name.name)
//                                        .font(.footnote)
//                                        .padding(3)
//                                    Spacer()
//                                    
//                                }
//                                .padding(2)
//                                .background(Color.grayButton)
//                                //                            .cornerRadius(10)
//                                //                        .border(Color.black)
//                                
//                                
//                            }
//                        }
//                        .background(Color.back)
//                        .cornerRadius(10)
//                    }
//                    MyViewBuilder(title: Text("N00-N99"), content: Text("**Болезни мочеполовой системы**")).buildTitleCodes(isTextExpanded: isTextExpanded14)
//                        .onTapGesture {
//                            withAnimation (.easeInOut) {
//                                isTextExpanded14.toggle()
//                            }
//                            
//                        }
//                    if isTextExpanded14{
//                        Spacer()
//                        LazyVStack(spacing: 1) {
//                            ForEach(codes2.filter { $0.id >= 289 && $0.id <= 314 }, id: \.id) { name in
//                                HStack{
//                                    ZStack {
//                                        Text(name.code)
//                                            .padding(.horizontal, 10)
//                                            .font(.headline)
//                                        
//                                    }
//                                    .frame(minWidth: 70)
//                                    
//                                    //                            .background(Color.red)
//                                    //                            Spacer()
//                                    Text(name.name)
//                                        .font(.footnote)
//                                        .padding(3)
//                                    Spacer()
//                                    
//                                }
//                                .padding(2)
//                                .background(Color.grayButton)
//                                //                            .cornerRadius(10)
//                                //                        .border(Color.black)
//                                
//                                
//                            }
//                        }
//                        .background(Color.back)
//                        .cornerRadius(10)
//                    }
//                    MyViewBuilder(title: Text("O00-O80"), content: Text("**Беременность, роды и послеродовой период**")).buildTitleCodes(isTextExpanded: isTextExpanded15)
//                        .onTapGesture {
//                            withAnimation (.easeInOut) {
//                                isTextExpanded15.toggle()
//                            }
//                            
//                        }
//                    if isTextExpanded15{
//                        Spacer()
//                        LazyVStack(spacing: 1) {
//                            ForEach(codes3.filter { $0.id >= 315 && $0.id <= 328 }, id: \.id) { name in
//                                HStack{
//                                    ZStack {
//                                        Text(name.code)
//                                            .padding(.horizontal, 10)
//                                            .font(.headline)
//                                        
//                                    }
//                                    .frame(minWidth: 70)
//                                    
//                                    //                            .background(Color.red)
//                                    //                            Spacer()
//                                    Text(name.name)
//                                        .font(.footnote)
//                                        .padding(3)
//                                    Spacer()
//                                    
//                                }
//                                .padding(2)
//                                .background(Color.grayButton)
//                                //                            .cornerRadius(10)
//                                //                        .border(Color.black)
//                                
//                                
//                            }
//                        }
//                        .background(Color.back)
//                        .cornerRadius(10)
//                    }
//                }
//                VStack {
//                    MyViewBuilder(title: Text("P38-P38"), content: Text("**Отдельные состояния (перинатальный период)**")).buildTitleCodes(isTextExpanded: isTextExpanded16)
//                        .onTapGesture {
//                            withAnimation (.easeInOut) {
//                                isTextExpanded16.toggle()
//                            }
//                            
//                        }
//                    if isTextExpanded16{
//                        Spacer()
//                        LazyVStack(spacing: 1) {
//                            ForEach(codes3.filter { $0.id > 328 && $0.id < 330 }, id: \.id) { name in
//                                HStack{
//                                    ZStack {
//                                        Text(name.code)
//                                            .padding(.horizontal, 10)
//                                            .font(.headline)
//                                        
//                                    }
//                                    .frame(minWidth: 70)
//                                    
//                                    //                            .background(Color.red)
//                                    //                            Spacer()
//                                    Text(name.name)
//                                        .font(.footnote)
//                                        .padding(3)
//                                    Spacer()
//                                    
//                                }
//                                .padding(2)
//                                .background(Color.grayButton)
//                                //                            .cornerRadius(10)
//                                //                        .border(Color.black)
//                                
//                                
//                            }
//                        }
//                        .background(Color.back)
//                        .cornerRadius(10)
//                    }
//                    MyViewBuilder(title: Text("P95-Q90"), content: Text("**Врожденные аномалии (пороки развития)**")).buildTitleCodes(isTextExpanded: isTextExpanded17)
//                        .onTapGesture {
//                            withAnimation (.easeInOut) {
//                                isTextExpanded17.toggle()
//                            }
//                            
//                        }
//                    if isTextExpanded17{
//                        Spacer()
//                        LazyVStack(spacing: 1) {
//                            ForEach(codes3.filter { $0.id >= 330 && $0.id <= 333 }, id: \.id) { name in
//                                HStack{
//                                    ZStack {
//                                        Text(name.code)
//                                            .padding(.horizontal, 10)
//                                            .font(.headline)
//                                        
//                                    }
//                                    .frame(minWidth: 70)
//                                    
//                                    //                            .background(Color.red)
//                                    //                            Spacer()
//                                    Text(name.name)
//                                        .font(.footnote)
//                                        .padding(3)
//                                    Spacer()
//                                    
//                                }
//                                .padding(2)
//                                .background(Color.grayButton)
//                                //                            .cornerRadius(10)
//                                //                        .border(Color.black)
//                                
//                                
//                            }
//                        }
//                        .background(Color.back)
//                        .cornerRadius(10)
//                    }
//                    MyViewBuilder(title: Text("R04-R99"), content: Text("**Симптомы, признаки и отклонения от нормы**")).buildTitleCodes(isTextExpanded: isTextExpanded18)
//                        .onTapGesture {
//                            withAnimation (.easeInOut) {
//                                isTextExpanded18.toggle()
//                            }
//                            
//                        }
//                    if isTextExpanded18{
//                        Spacer()
//                        LazyVStack(spacing: 1) {
//                            ForEach(codes3.filter { $0.id >= 334 && $0.id <= 351 }, id: \.id) { name in
//                                HStack{
//                                    ZStack {
//                                        Text(name.code)
//                                            .padding(.horizontal, 10)
//                                            .font(.headline)
//                                        
//                                    }
//                                    .frame(minWidth: 70)
//                                    
//                                    //                            .background(Color.red)
//                                    //                            Spacer()
//                                    Text(name.name)
//                                        .font(.footnote)
//                                        .padding(3)
//                                    Spacer()
//                                    
//                                }
//                                .padding(2)
//                                .background(Color.grayButton)
//                                //                            .cornerRadius(10)
//                                //                        .border(Color.black)
//                                
//                                
//                            }
//                        }
//                        .background(Color.back)
//                        .cornerRadius(10)
//                    }
//                    MyViewBuilder(title: Text("S00-T94"), content: Text("**Травмы, отравления и др.**")).buildTitleCodes(isTextExpanded: isTextExpanded19)
//                        .onTapGesture {
//                            withAnimation (.easeInOut) {
//                                isTextExpanded19.toggle()
//                            }
//                            
//                        }
//                    if isTextExpanded19{
//                        Spacer()
//                        LazyVStack(spacing: 1) {
//                            ForEach(codes4.filter { $0.id >= 352 && $0.id <= 451 }, id: \.id) { name in
//                                HStack{
//                                    ZStack {
//                                        Text(name.code)
//                                            .padding(.horizontal, 10)
//                                            .font(.headline)
//                                        
//                                    }
//                                    .frame(minWidth: 70)
//                                    
//                                    //                            .background(Color.red)
//                                    //                            Spacer()
//                                    Text(name.name)
//                                        .font(.footnote)
//                                        .padding(3)
//                                    Spacer()
//                                    
//                                }
//                                .padding(2)
//                                .background(Color.grayButton)
//                                //                            .cornerRadius(10)
//                                //                        .border(Color.black)
//                                
//                                
//                            }
//                        }
//                        .background(Color.back)
//                        .cornerRadius(10)
//                    }
//                    MyViewBuilder(title: Text("Z51-Z99"), content: Text("**Факторы, влияющие на состояние здоровья**")).buildTitleCodes(isTextExpanded: isTextExpanded20)
//                        .onTapGesture {
//                            withAnimation (.easeInOut) {
//                                isTextExpanded20.toggle()
//                            }
//                            
//                        }
//                    if isTextExpanded20{
//                        Spacer()
//                        LazyVStack(spacing: 1) {
//                            ForEach(codes4.filter { $0.id >= 452 && $0.id <= 459 }, id: \.id) { name in
//                                HStack{
//                                    ZStack {
//                                        Text(name.code)
//                                            .padding(.horizontal, 10)
//                                            .font(.headline)
//                                        
//                                    }
//                                    .frame(minWidth: 70)
//                                    
//                                    //                            .background(Color.red)
//                                    //                            Spacer()
//                                    Text(name.name)
//                                        .font(.footnote)
//                                        .padding(3)
//                                    Spacer()
//                                    
//                                }
//                                .padding(2)
//                                .background(Color.grayButton)
//                                //                            .cornerRadius(10)
//                                //                        .border(Color.black)
//                                
//                                
//                            }
//                        }
//                        .background(Color.back)
//                        .cornerRadius(10)
//                    }
//                }
//            }
//            .padding(.horizontal, 10)
//            Spacer()
//            Spacer()
//                .navigationBarTitle("", displayMode: .inline)
//                .padding(.horizontal, 10)
//                .padding(.bottom, 85)
//            
//            
//        }
//        
//        
//        
//        //            .padding(.horizontal, 200)
//        .background(colorScheme == .dark ? Color(red: 0, green: 0, blue: 0) : Color(red: 0.9568627450980393, green: 0.9529411764705882, blue: 0.9764705882352941))
//        .foregroundColor(colorScheme == .dark ? Color(red: 0.9490196078431372, green: 0.9490196078431372, blue: 0.9490196078431372) : Color.black)
//        .edgesIgnoringSafeArea(.bottom)
//        .background(Color.back)
//        .navigationBarBackButtonHidden(false)
//        .toolbar {
//            ToolbarItem(placement: .principal) {
//                VStack {
//                    Text("МКБ-10")
//                        .font(.headline)
//                        .foregroundStyle(Color.toolBar)
//                        .bold()
//                }
//            }
//            ToolbarItem(placement: .navigationBarTrailing) {
//                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg1"), title: "Алгоритм 1")) {
//                    Image(systemName: "list.bullet.clipboard")
//                        .foregroundColor(.blue)
//                    
//                }
//            }
//        }
//    }
//    }
//    
//}
//
//#Preview {
//    CodesMkb10()
//}
