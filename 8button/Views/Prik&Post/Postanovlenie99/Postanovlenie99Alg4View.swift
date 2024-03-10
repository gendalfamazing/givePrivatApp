//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct Postanovlenie99Alg4View: View {
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

    var body: some View {
        NavigationStack {
            ScrollView {
                Spacer()
                VStack (spacing: 5) {
                    MyViewBuilder(title: Text("40. Клинические показания к ИВЛ"), content: Text(LocalizedStringKey("Post99Alg4B0G0S1"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded1)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded1.toggle()
                            }
                        }
                    MyViewBuilder(title: Text("41. Лабораторно-инструментальные показания к ИВЛ"), content: Text(LocalizedStringKey("Post99Alg4B0G0S2"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded2)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded2.toggle()
                            }
                        }
                    MyViewBuilder(title: Text("42. Абсолютные медицинские противопоказания к ИВЛ"), content: Text(LocalizedStringKey("Post99Alg4B0G0S3"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded3)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded3.toggle()
                            }
                        }
                    MyViewBuilder(title: Text("43. Уход за пациентом, находящимся на ИВЛ"), content: Text(LocalizedStringKey("Post99Alg4B0G0S4"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded4)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded4.toggle()
                            }
                        }
                    MyViewBuilder(title: Text("44. Медицинские показания для санационной фибробронхоскопии"), content: Text(LocalizedStringKey("Post99Alg4B0G0S5"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded5)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded5.toggle()
                            }
                        }
                    MyViewBuilder(title: Text("45. Прогнозируемая длительность нахождения ЭТТ в трахее более 7 суток"), content: Text(LocalizedStringKey("Post99Alg4B0G0S6"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded6)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded6.toggle()
                            }
                        }
                    MyViewBuilder(title: Text("46. Седация пациента при проведении ИВЛ"), content: Text(LocalizedStringKey("Post99Alg4B0G0S7"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded7)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded7.toggle()
                            }
                        }
                    MyViewBuilder(title: Text("47. Мониторинг при проведении ИВЛ"), content: Text(LocalizedStringKey("Post99Alg4B0G0S8"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded8)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded8.toggle()
                            }
                        }
                    MyViewBuilder(title: Text("48. Общие условия для прекращения ИВЛ"), content: Text(LocalizedStringKey("Post99Alg4B0G0S12"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded9)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded9.toggle()
                            }
                        }
                    MyViewBuilder(title: Text("49. Подготовка к экстубации трахеи"), content: Text(LocalizedStringKey("Post99Alg4B0G0S13"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded10)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded10.toggle()
                            }
                        }
                    MyViewBuilder(title: Text("50. Алгоритм экстубации трахеи у пациентов с низким риском развития осложнений"), content: Text(LocalizedStringKey("Post99Alg4B0G0S14"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded11)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded11.toggle()
                            }
                        }
                    MyViewBuilder(title: Text("51. Условия для удаления трахеостомической трубки после длительной ИВЛ"), content: Text(LocalizedStringKey("Post99Alg4B0G0S15"))).buildDualBlockBlueGray(isTextExpanded: isTextExpanded12)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded12.toggle()
                            }
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
                    Text("Глава 4")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«ИВЛ»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            
        }
    }
    
}
#Preview {
    Postanovlenie99Alg4View()
}

