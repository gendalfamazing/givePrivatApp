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
            ScrollView {
                Spacer()
                VStack (spacing: 5){
                    MyViewBuilder(title: Text("29. Общее число бригад СМП"), content: Text(LocalizedStringKey("Post2Alg5B0G0S1"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded1)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded1.toggle()
                            }
                        }
                    MyViewBuilder(title: Text("30. Оснащение бригад СМП"), content: Text(LocalizedStringKey("Post2Alg5B0G0S2"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded2)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded2.toggle()
                            }
                        }
                    MyViewBuilder(title: Text("31. Работа бригад СМП"), content: Text(LocalizedStringKey("Post2Alg5B0G0S3"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded3)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded3.toggle()
                            }
                        }
                    MyViewBuilder(title: Text("32. Бригады СМП подразделяются"), content: Text(LocalizedStringKey("Post2Alg5B0G0S4"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded4)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded4.toggle()
                            }
                        }
                    MyViewBuilder(title: Text("33. Врачебные бригады СМП"), content: Text(LocalizedStringKey("Post2Alg5B0G0S5"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded5)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded5.toggle()
                            }
                        }
                    MyViewBuilder(title: Text("34. Реанимационная бригада СМП"), content: Text(LocalizedStringKey("Post2Alg5B0G0S6"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded6)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded6.toggle()
                            }
                        }
                    MyViewBuilder(title: Text("35. Бригада интенсивной терапии СМП"), content: Text(LocalizedStringKey("Post2Alg5B0G0S7"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded7)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded7.toggle()
                            }
                        }
                    MyViewBuilder(title: Text("36. Педиатрическая бригада СМП"), content: Text(LocalizedStringKey("Post2Alg5B0G0S8"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded8)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded8.toggle()
                            }
                        }
                    MyViewBuilder(title: Text("37. Психиатрическая бригада СМП"), content: Text(LocalizedStringKey("Post2Alg5B0G0S9"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded9)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded9.toggle()
                            }
                        }
                    MyViewBuilder(title: Text("38. Фельдшерская бригада СМП"), content: Text(LocalizedStringKey("Post2Alg5B0G0S10"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded10)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded10.toggle()
                            }
                        }
                    MyViewBuilder(title: Text("39. Оказание СМП бригадой СМП"), content: Text(LocalizedStringKey("Post2Alg5B0G0S11"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded11)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded11.toggle()
                            }
                        }
                    MyViewBuilder(title: Text("40. Необходимость выезда врачебной бригады СМП"), content: Text(LocalizedStringKey("Post2Alg5B0G0S12"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded12)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded12.toggle()
                            }
                        }
                    MyViewBuilder(title: Text("41. При отсутствии свободных врачебных бригад СМП"), content: Text(LocalizedStringKey("Post2Alg5B0G0S13"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded13)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded13.toggle()
                            }
                        }
                    MyViewBuilder(title: Text("42. Транспортировка пациента бригадой СМП"), content: Text(LocalizedStringKey("Post2Alg5B0G0S14"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded14)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded14.toggle()
                            }
                        }
                    MyViewBuilder(title: Text("43. При обнаружение по адресу вызова уже умершего пациента"), content: Text(LocalizedStringKey("Post2Alg5B0G0S15"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded15)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded15.toggle()
                            }
                        }
                    MyViewBuilder(title: Text("44. Смерть пациента в салоне автомобиля СМП"), content: Text(LocalizedStringKey("Post2Alg5B0G0S16"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded16)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded16.toggle()
                            }
                        }
                    MyViewBuilder(title: Text("45. При поступлении попутного вызова"), content: Text(LocalizedStringKey("Post2Alg5B0G0S17"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded17)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded17.toggle()
                            }
                        }
                    MyViewBuilder(title: Text("46. Транспортировка детей"), content: Text(LocalizedStringKey("Post2Alg5B0G0S18"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded18)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded18.toggle()
                            }
                        }
                    MyViewBuilder(title: Text("47. Информация о пациентах"), content: Text(LocalizedStringKey("Post2Alg5B0G0S19"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded19)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded19.toggle()
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

