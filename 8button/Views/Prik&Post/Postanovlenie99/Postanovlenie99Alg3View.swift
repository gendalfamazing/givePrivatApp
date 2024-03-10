//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct Postanovlenie99Alg3View: View {
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
    @State private var isTextExpanded20 = false
    @State private var isTextExpanded21 = false
    @State private var isTextExpanded22 = false
    @State private var isTextExpanded23 = false
    @State private var isTextExpanded24 = false
    @State private var isTextExpanded25 = false
    @State private var isTextExpanded26 = false
    @State private var isTextExpanded27 = false
    var body: some View {
        NavigationStack {
            ScrollView {
                Spacer()
                VStack (spacing: 5) {
                    MyViewBuilder(title: Text("10. Внезапная остановка сердечной деятельности"), content: Text(LocalizedStringKey("Post99Alg3B0G0S1"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded1)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded1.toggle()
                            }
                        }
                    MyViewBuilder(title: Text("11. Клинические признаки внезапной остановки сердца"), content: Text(LocalizedStringKey("Post99Alg3B0G0S2"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded2)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded2.toggle()
                            }
                        }
                    MyViewBuilder(title: Text("12. Действия медицинских работников"), content: Text(LocalizedStringKey("Post99Alg3B0G0S3"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded3)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded3.toggle()
                            }
                        }
                    MyViewBuilder(title: Text("13. К внезапной остановке сердечной деятельности *не относится* следующее"), content: Text(LocalizedStringKey("Post99Alg3B0G0S4"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded4)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded4.toggle()
                            }
                        }
                    
                }
                .padding(.horizontal, 10)
                Spacer(minLength: 5)
                
                VStack (spacing: 5) {
                    MyViewBuilder(title: Text("14. Протокол СЛР"), content: Text(LocalizedStringKey("Post99Alg3B0G0S5"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded12)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded12.toggle()
                            }
                        }
                    MyViewBuilder(title: Text("15. Алгоритм немедленных действий при потере сознания или коллапсе пациента"), content: Text(LocalizedStringKey("Post99Alg3B0G0S6"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded5)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded5.toggle()
                            }
                        }
                    MyViewBuilder(title: Text("16. Алгоритм СЛР до момента доставки дефибриллятора (Алгоритм CAB)"), content: Text(LocalizedStringKey("Post99Alg3B0G0S10"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded6)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded6.toggle()
                            }
                        }
                    MyViewBuilder(title: Text("17. Алгоритм СЛР после доставки дефибриллятора (оценка сердечного ритма)"), content: Text(LocalizedStringKey("Post99Alg3B0G0S18"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded7)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded7.toggle()
                            }
                        }
                    
                    
                    MyViewBuilder(title: Text("18. Алгоритм СЛР при выявлении ритма ФЖ или ЖТбП"), content: Text(LocalizedStringKey("Post99Alg3B0G0S20"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded8)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded8.toggle()
                            }
                        }
                    MyViewBuilder(title: Text("19. Асистолия или электрическая активность без пульса"), content: Text(LocalizedStringKey("Post99Alg3B0G0S21"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded9)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded9.toggle()
                            }
                        }
                    MyViewBuilder(title: Text("20. Потенциально обратимые причины внезапной смерти (правило 4Г и 4Т)"), content: Text(LocalizedStringKey("Post99Alg3B0G0S22"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded10)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded10.toggle()
                            }
                        }
                    MyViewBuilder(title: Text("21. Продолжительность СЛР"), content: Text(LocalizedStringKey("Post99Alg3B0G0S23"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded11)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded11.toggle()
                            }
                        }
                    
                    
                }
                .padding(.horizontal, 10)
                Spacer(minLength: 5)
                VStack (spacing: 5) {
                
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        VStack (spacing: 1) {
                            MyViewBuilder(title: Text("1"), content: Text("22-26. Мониторинг витальных функций при  СЛР")).buildBlue59Text(isTextExpanded: isTextExpanded14)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded14.toggle()
                                    }
                                }
                            
                            if isTextExpanded14{
                                VStack {
                                    MyViewBuilder(title: Text("3"), content: Text(LocalizedStringKey("Post99Alg3B0G0S24"))).buildGrayInHidden59Text()
                                    MyViewBuilder(title: Text("3"), content: Text(LocalizedStringKey("Post99Alg3B0G0S25"))).buildGrayInHidden59Text()
                                    MyViewBuilder(title: Text("3"), content: Text(LocalizedStringKey("Post99Alg3B0G0S26"))).buildGrayInHidden59Text()
                                    MyViewBuilder(title: Text("3"), content: Text(LocalizedStringKey("Post99Alg3B0G0S27"))).buildGrayInHidden59Text()
                                    MyViewBuilder(title: Text("3"), content: Text(LocalizedStringKey("Post99Alg3B0G0S28"))).buildGrayInHidden59Text()
                                }
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded14.toggle()
                                    }
                                }
                                
                            }
                            
                        }
                    }
                    MyViewBuilder(title: Text("27. Медикаментозное обеспечение СЛР"), content: Text(LocalizedStringKey("Post99Alg3B0G0S29"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded15)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded15.toggle()
                            }
                        }
                    MyViewBuilder(title: Text("28. Осложнения СЛР"), content: Text(LocalizedStringKey("Post99Alg3B0G0S30"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded16)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded16.toggle()
                            }
                        }
                    MyViewBuilder(title: Text("29. Короткий период остановки сердца"), content: Text(LocalizedStringKey("Post99Alg3B0G0S31"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded17)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded17.toggle()
                            }
                        }
                    MyViewBuilder(title: Text("30. Пациенты с подъемом сегмента ST или ПБЛНПГ"), content: Text(LocalizedStringKey("Post99Alg3B0G0S32"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded18)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded18.toggle()
                            }
                        }
                    MyViewBuilder(title: Text("31. Раннее выявление некардиологических причин"), content: Text(LocalizedStringKey("Post99Alg3B0G0S33"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded19)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded19.toggle()
                            }
                        }
                    
                    
                }
                .padding(.horizontal, 10)
                Spacer(minLength: 5)
                VStack (spacing: 5) {
                    MyViewBuilder(title: Text("32. Постреанимационная дисфункция миокарда"), content: Text(LocalizedStringKey("Post99Alg3B0G0S34"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded20)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded20.toggle()
                            }
                        }
                    MyViewBuilder(title: Text("33. Длительность седации и ИВЛ"), content: Text(LocalizedStringKey("Post99Alg3B0G0S35"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded21)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded21.toggle()
                            }
                        }
                    MyViewBuilder(title: Text("34. Первый эпизод судорог"), content: Text(LocalizedStringKey("Post99Alg3B0G0S36"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded22)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded22.toggle()
                            }
                        }
                    MyViewBuilder(title: Text("35. Поддержка уровня гликемии"), content: Text(LocalizedStringKey("Post99Alg3B0G0S37"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded23)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded23.toggle()
                            }
                        }
                    MyViewBuilder(title: Text("36. Гипертермия (гиперпирексия)"), content: Text(LocalizedStringKey("Post99Alg3B0G0S38"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded24)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded24.toggle()
                            }
                        }
                    MyViewBuilder(title: Text("37. Умеренная управляемая гипотермия"), content: Text(LocalizedStringKey("Post99Alg3B0G0S39"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded25)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded25.toggle()
                            }
                        }
                    MyViewBuilder(title: Text("38. Физиологические и нежелательные эффекты гипотермии"), content: Text(LocalizedStringKey("Post99Alg3B0G0S40"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded26)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded26.toggle()
                            }
                        }
                    
                    
                    MyViewBuilder(title: Text("3"), content: Text(LocalizedStringKey("Post99Alg3B0G0S41"))).buildGrayText()
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
                    Text("Глава 3")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Сердечно-легочная реанимация и интенсивная терапия постреанимационного периода»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            
        }
    }
    
}
#Preview {
    Postanovlenie99Alg3View()
}

