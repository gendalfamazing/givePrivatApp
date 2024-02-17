//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct Postanovlenie2Alg5View: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @State private var isTextExpanded1 = false
    @State private var isTextExpanded2 = false
    @State private var isTextExpanded3 = false
    @State private var isTextExpanded4 = false
    @State private var isTextExpanded5 = false
    @State private var isTextExpanded6 = false
    @State private var isTextExpanded7 = false
    @State private var isTextExpanded8 = false
    @State private var isTextExpanded9 = false
    @State private var isTextExpanded10 = false
    @State private var isTextExpanded11 = false
    @State private var isTextExpanded12 = false
    @State private var isTextExpanded13 = false
    @State private var isTextExpanded14 = false
    @State private var isTextExpanded15 = false
    @State private var isTextExpanded16 = false
    @State private var isTextExpanded17 = false
    @State private var isTextExpanded18 = false
    @State private var isTextExpanded19 = false
    
    //MyViewBuilder(title: Text("2"), content: Text(LocalizedStringKey("Post2Alg5B0G0S1"))).buildGrayText()
    var body: some View {
        NavigationStack {
            ScrollView {
                Spacer()
                VStack {
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        VStack  {
                            MyViewBuilder(title: Text("5"), content: Text("29. Общее число бригад СМП")).buildBlue2Text(isTextExpanded: isTextExpanded1)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded1.toggle()
                                    }
                                }
                            if isTextExpanded1{
                                MyViewBuilder(title: Text("5"),
                                              content: Text(LocalizedStringKey("Post2Alg5B0G0S1"))).buildGrayInHidden1Text()
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded1.toggle()
                                        }
                                    }
                            }
                        }
                        //                        .padding(5)
                    }
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        VStack  {
                            MyViewBuilder(title: Text("5"), content: Text("30. Оснащение бригад СМП")).buildBlue2Text(isTextExpanded: isTextExpanded2)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded2.toggle()
                                    }
                                }
                            if isTextExpanded2{
                                MyViewBuilder(title: Text("5"),
                                              content: Text(LocalizedStringKey("Post2Alg5B0G0S2"))).buildGrayInHidden1Text()
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded2.toggle()
                                        }
                                    }
                            }
                        }
                        //                        .padding(5)
                    }
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        VStack  {
                            MyViewBuilder(title: Text("5"), content: Text("31. Работа бригад СМП")).buildBlue2Text(isTextExpanded: isTextExpanded3)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded3.toggle()
                                    }
                                }
                            if isTextExpanded3{
                                MyViewBuilder(title: Text("5"),
                                              content: Text(LocalizedStringKey("Post2Alg5B0G0S3"))).buildGrayInHidden1Text()
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded3.toggle()
                                        }
                                    }
                            }
                        }
                        //                        .padding(5)
                    }
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        VStack  {
                            MyViewBuilder(title: Text("5"), content: Text("32. Бригады СМП подразделяются")).buildBlue2Text(isTextExpanded: isTextExpanded4)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded4.toggle()
                                    }
                                }
                            if isTextExpanded4{
                                MyViewBuilder(title: Text("5"),
                                              content: Text(LocalizedStringKey("Post2Alg5B0G0S4"))).buildGrayInHidden1Text()
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded4.toggle()
                                        }
                                    }
                            }
                        }
                        //                        .padding(5)
                    }
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        VStack  {
                            MyViewBuilder(title: Text("5"), content: Text("33. Врачебные бригады СМП")).buildBlue2Text(isTextExpanded: isTextExpanded5)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded5.toggle()
                                        
                                    }
                                }
                            
                            if isTextExpanded5{
                                
                                MyViewBuilder(title: Text("5"),
                                              content: Text(LocalizedStringKey("Post2Alg5B0G0S5"))).buildGrayInHidden1Text()
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded5.toggle()
                                        }
                                    }
                            }
                        }
                    }
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        VStack  {
                            MyViewBuilder(title: Text("5"), content: Text("34. Реанимационная бригада СМП")).buildBlue2Text(isTextExpanded: isTextExpanded6)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded6.toggle()
                                    }
                                }
                            if isTextExpanded6{
                                MyViewBuilder(title: Text("5"),
                                              content: Text(LocalizedStringKey("Post2Alg5B0G0S6"))).buildGrayInHidden1Text()
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded6.toggle()
                                        }
                                    }
                            }
                        }
                    }
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        VStack  {
                            
                            MyViewBuilder(title: Text("5"), content: Text("35. Бригада интенсивной терапии СМП")).buildBlue2Text(isTextExpanded: isTextExpanded7)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded7.toggle()
                                    }
                                }
                            if isTextExpanded7{
                                MyViewBuilder(title: Text("5"),
                                              content: Text(LocalizedStringKey("Post2Alg5B0G0S7"))).buildGrayInHidden1Text()
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded7.toggle()
                                        }
                                    }
                                
                            }
                        }
                    }
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        VStack  {
                            
                            MyViewBuilder(title: Text("5"), content: Text("36. Педиатрическая бригада СМП")).buildBlue2Text(isTextExpanded: isTextExpanded8)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded8.toggle()
                                    }
                                }
                            if isTextExpanded8{
                                MyViewBuilder(title: Text("5"),
                                              content: Text(LocalizedStringKey("Post2Alg5B0G0S8"))).buildGrayInHidden1Text()
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded8.toggle()
                                        }
                                    }
                            }
                        }
                    }
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        VStack  {
                            
                            MyViewBuilder(title: Text("5"), content: Text("37. Психиатрическая бригада СМП")).buildBlue2Text(isTextExpanded: isTextExpanded9)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded9.toggle()
                                    }
                                }
                            if isTextExpanded9{
                                MyViewBuilder(title: Text("5"),
                                              content: Text(LocalizedStringKey("Post2Alg5B0G0S9"))).buildGrayInHidden1Text()
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded9.toggle()
                                        }
                                    }
                            }
                            
                            
                            
                        }
                        //                        .padding(5)
                    }
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        VStack  {
                            MyViewBuilder(title: Text("5"), content: Text("38. Фельдшерская бригада СМП")).buildBlue2Text(isTextExpanded: isTextExpanded10)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded10.toggle()
                                    }
                                }
                            if isTextExpanded10{
                                MyViewBuilder(title: Text("5"),
                                              content: Text(LocalizedStringKey("Post2Alg5B0G0S10"))).buildGrayInHidden1Text()
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded10.toggle()
                                        }
                                    }
                            }
                        }
                        //                        .padding(5)
                    }
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        VStack  {
                            MyViewBuilder(title: Text("5"), content: Text("39. Оказание СМП бригадой СМП")).buildBlue2Text(isTextExpanded: isTextExpanded11)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded11.toggle()
                                    }
                                }
                            if isTextExpanded11{
                                MyViewBuilder(title: Text("5"),
                                              content: Text(LocalizedStringKey("Post2Alg5B0G0S11"))).buildGrayInHidden1Text()
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded11.toggle()
                                        }
                                    }
                            }
                        }
                        //                        .padding(5)
                    }
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        VStack  {
                            MyViewBuilder(title: Text("5"), content: Text("40. Необходимость выезда врачебной бригады СМП")).buildBlue2Text(isTextExpanded: isTextExpanded12)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded12.toggle()
                                    }
                                }
                            if isTextExpanded12{
                                MyViewBuilder(title: Text("5"),
                                              content: Text(LocalizedStringKey("Post2Alg5B0G0S12"))).buildGrayInHidden1Text()
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded12.toggle()
                                        }
                                    }
                            }
                        }
                        //                        .padding(5)
                    }
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        VStack  {
                            MyViewBuilder(title: Text("5"), content: Text("41. При отсутствии свободных врачебных бригад СМП")).buildBlue2Text(isTextExpanded: isTextExpanded13)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded13.toggle()
                                    }
                                }
                            if isTextExpanded13{
                                MyViewBuilder(title: Text("5"),
                                              content: Text(LocalizedStringKey("Post2Alg5B0G0S13"))).buildGrayInHidden1Text()
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded13.toggle()
                                        }
                                    }
                            }
                        }
                        //                        .padding(5)
                    }
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        VStack  {
                            MyViewBuilder(title: Text("5"), content: Text("42. Транспортировка пациента бригадой СМП")).buildBlue2Text(isTextExpanded: isTextExpanded14)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded14.toggle()
                                    }
                                }
                            if isTextExpanded14{
                                MyViewBuilder(title: Text("5"),
                                              content: Text(LocalizedStringKey("Post2Alg5B0G0S14"))).buildGrayInHidden1Text()
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded14.toggle()
                                        }
                                    }
                            }
                        }
                        //                        .padding(5)
                    }
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        VStack  {
                            MyViewBuilder(title: Text("5"), content: Text("43. При обнаружение по адресу вызова уже умершего пациента ")).buildBlue2Text(isTextExpanded: isTextExpanded15)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded15.toggle()
                                    }
                                }
                            if isTextExpanded15{
                                MyViewBuilder(title: Text("5"),
                                              content: Text(LocalizedStringKey("Post2Alg5B0G0S15"))).buildGrayInHidden1Text()
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded15.toggle()
                                        }
                                    }
                            }
                        }
                        //                        .padding(5)
                    }
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        VStack  {
                            MyViewBuilder(title: Text("5"), content: Text("44. Смерть пациента в салоне автомобиля СМП ")).buildBlue2Text(isTextExpanded: isTextExpanded16)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded16.toggle()
                                    }
                                }
                            if isTextExpanded16{
                                MyViewBuilder(title: Text("5"),
                                              content: Text(LocalizedStringKey("Post2Alg5B0G0S16"))).buildGrayInHidden1Text()
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded16.toggle()
                                        }
                                    }
                            }
                        }
                        //                        .padding(5)
                    }
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        VStack  {
                            MyViewBuilder(title: Text("5"), content: Text("45. При поступлении попутного вызова ")).buildBlue2Text(isTextExpanded: isTextExpanded17)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded17.toggle()
                                    }
                                }
                            if isTextExpanded17{
                                MyViewBuilder(title: Text("5"),
                                              content: Text(LocalizedStringKey("Post2Alg5B0G0S17"))).buildGrayInHidden1Text()
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded17.toggle()
                                        }
                                    }
                            }
                        }
                        //                        .padding(5)
                    }
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        VStack  {
                            MyViewBuilder(title: Text("5"), content: Text("46. Транспортировка детей ")).buildBlue2Text(isTextExpanded: isTextExpanded18)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded18.toggle()
                                    }
                                }
                            if isTextExpanded18{
                                MyViewBuilder(title: Text("5"),
                                              content: Text(LocalizedStringKey("Post2Alg5B0G0S18"))).buildGrayInHidden1Text()
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded18.toggle()
                                        }
                                    }
                            }
                        }
                        //                        .padding(5)
                    }
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        VStack  {
                            MyViewBuilder(title: Text("5"), content: Text("47. Информация о пациентах ")).buildBlue2Text(isTextExpanded: isTextExpanded19)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded19.toggle()
                                    }
                                }
                            if isTextExpanded19{
                                MyViewBuilder(title: Text("5"),
                                              content: Text(LocalizedStringKey("Post2Alg5B0G0S19"))).buildGrayInHidden1Text()
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded19.toggle()
                                        }
                                    }
                            }
                        }
                        //                        .padding(5)
                    }
                    
                    
                    
                    Spacer()
                    Spacer()
                }
                .padding(.horizontal, 10)
                .padding(.bottom, 65)
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
                    Text("Глава 5")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Бригады СМП и порядок их деятельности»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            
        }
    }
    
}
#Preview {
    Postanovlenie2Alg5View()
}

