//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg53View: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @State private var isTextExpanded = false
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
    
    @State private var isTextExpanded71 = true
    @State private var isTextExpanded72 = true
    
    var body: some View {
            ScrollView {
                Spacer()
                VStack {
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack {
                            MyViewBuilder(title: Text("53"), content: Text("""
                            **Бригада СНМП должна выехать на вызов в кратчайшие сроки**
                            """)).buildGrayInText()
                            
                        }
                        .padding(5)
                    }
                    Image(systemName: "arrow.down")
                       
                    MyViewBuilder(title: Text("53"), content: Text("""
                    1. **Сообщить врачу оперативного отдела о прибытии на место и указать примерное число пострадавших**.
                    2. **Возглавить и организовать оказание медицинской помощи на месте ДТП**.
                    """)).buildGrayText()
                    Image(systemName: "arrow.down")
                    
                            MyViewBuilder(title: Text("**По прибытию на место вызова быстро оценить ситуацию**:"), content: Text("""
                            - определить **число пострадавших**;
                            - **произвести первичную сортировку** по тяжести состояния.
                            """)).buildGrayInAndHiddenBlock()
                        
                    Image(systemName: "arrow.down")
                       
                    
                    MyViewBuilder(title: Text("53"), content: Text("""
                    **Сообщить врачу оперативного отдела информацию о количестве пострадавших, в том числе детей, тяжести их состояния и необходимости дополнительных бригад СНМП**
                    """)).buildGrayText()
                    Image(systemName: "arrow.down")
                       
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack (spacing:1){
                            
                            MyViewBuilder(title: Text("**Обследование пострадавшего**:"), content: Text("""
                            1. **первичный осмотр** для оценки нарушения витальных функций;
                            2. **углубленный осмотр проводится в салоне автомобиля СНМП**:
                            - **оценить состояние** пострадавшего,
                            - **уровень сознания** (шкала Глазго),
                            - **ЧСС, АД, ЧДД**,
                            - **величину зрачков и их реакцию на свет**;
                            - выяснить **механизм травмы**, события, предшествующие травме;
                            3. **определить время, прошедшее с момента травмы**;
                            4. сбор **анамнеза жизни** (при возможности);
                            5. **провести осмотр, аускультацию, пальпацию, пульсоксиметрию**;
                            6. **установить предварительный диагноз**, **оценить тяжесть функциональных нарушений**.
                            """)).buildGrayInAndHiddenBlockWithBlueButtons()
                            
                            MyViewBuilder(title: Text("**Предполагать наличие политравмы в следующих случаях**:"), content: Text("""
                            - **смерть пассажиров или водителя** транспортного средства;
                            - если пострадавшего **выбросило из машины**;
                            - деформация транспортного средства **превышает 50%**;
                            - **сдавлении** пациента;
                            - аварии на **высокой скорости**;
                            - **наезде на пешехода или велосипедиста**;
                            - **падении с высоты более 3 метров**;
                            - **взрыве**;
                            - **завале сыпучими материалами**.
                            """)).buildGrayInAndHiddenBlockWithBlueButtons()
                        }
                    }
                    Image(systemName: "arrow.down")
                       
                            MyViewBuilder(title: Text("""
                                                        **Выполнить все необходимые мероприятия по подготовке пострадавшего к транспортировке**:
                                                        """), content: Text("""
                            - обеспечить **респираторную поддержку** (**SpO2 более 90%**),
                            - **венозный доступ и инфузионную терапию** (**САД ≥ 90 мм.рт.ст.**),
                            - адекватное **обезболивание**,
                            - **симптоматическую терапию**
                            """)).buildGrayInAndHiddenBlock()
                       
                    Image(systemName: "arrow.down")
                       
                    MyViewBuilder(title: Text("53"), content: Text("""
                    **Максимально быстрая доставка в стационар** по профилю основного заболевания (отделение сочетанной травмы),
                    при необходимости – **в ОИТАР**, минуя приемное отделение.
                    **Осуществлять в пути монторинг витальных функций: АД, ЧСС, ЧДД, SpO2**.
                    """)).buildGrayText()
                }
                .textSelection(.enabled)
                .padding(.horizontal, 10)
                .padding(.bottom, 55)
            }
            //            .padding(.horizontal, 200)
//            .edgesIgnoringSafeArea(.bottom)
            .background(Color.back)
        
        .navigationBarBackButtonHidden(false)
        .navigationBarTitle("",displayMode: .automatic)
        
        .toolbar {
            ToolbarItem(placement: .principal) {
                VStack {
                    Text("Алгоритм 53")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Действия бригады СНМП при ДТП»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg53"), title: "Алгоритм 53")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}

#Preview {
    Prikaz1030Alg53View()
}

struct Prikaz1030Alg53ViewFavorites: View {
    @AppStorage("fontSize") var fontSize: Double = 14.0
    @EnvironmentObject var themeManager: ThemeManager
    @Environment(\.sizeCategory) var sizeCategory
    
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    
    @EnvironmentObject var favoritesManager: FavoritesManager
    @Environment(\.viewContext) var context: ViewContext
    @State private var showAlert = false
    @State private var alertMessage = ""
    
    private var allViewIdentifiers: String = "Алгоритм 53. «Действия бригады СНМП при ДТП»"
    
    var body: some View {
        VStack {
            NavigationLink(destination: Prikaz1030Alg53View()) {
                HStack {
                    Image(systemName: "doc.text.magnifyingglass")
                        .resizable()
                        .frame(width: 18, height: 24)
                    //                                .padding(.horizontal)
                        .font(.caption2)
                        .padding(.horizontal, 11.0)
                        .padding(.vertical, 8.0)
                        .background(Color.titleNumber)
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5) // Устанавливаем цвет и ширину границы
                        )
                        .foregroundColor(Color.titleNumberForeground)
                    Spacer()
                    Spacer()
                    Text("Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030")
                        .padding(.horizontal, 3.0)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    Spacer()
                    Spacer()
                    Image(systemName: ("chevron.right"))
                        .opacity(0.3)
                        .padding(.trailing, 15)
                        .padding(.leading, 10)
                }
                .padding(5.0)
                //        .lineLimit(2)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .fixedSize(horizontal: false, vertical: true)
                .frame(minHeight: 50)
                .modifier(ThemeTitleBlueColorModifier())
                .cornerRadius(10)
                .overlay(
                    HStack {
                        Spacer()
                        VStack {
                            if shouldShowOverlay {
                                Image(systemName: "star.fill")
                                    .resizable()
                                    .frame(width: 14, height: 14)
                                    .foregroundColor(isInFavorites ? .favoriteStar : Color.clear)
                                    .rotationEffect(.degrees(isInFavorites ? -360 : 0))
                                    .animation(.snappy, value: isInFavorites)
                                    .padding(.vertical, 3)
                                    .padding(.horizontal, 3)
                            }
                            Spacer()
                        }
                    }
                )
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5) // Устанавливаем цвет и ширину границы
                )
            }
        }
        .padding(2)
        .contextMenu {
            switch context {
            case .favorites:
                EmptyView()
            case .nonFavorites:
                if isInFavorites {
                    Button(action: {
                        removeFromFavorites()
                    }) {
                        Text("Удалить из избранного")
                        Image(systemName: "star.slash")
                    }
                } else {
                    Button(action: {
                        addToFavorites()
                    }) {
                        Text("Добавить в избранное")
                        Image(systemName: "star.fill")
                    }
                }
            default:
                EmptyView()
            }
        }
        .alert(isPresented: $showAlert) {
            Alert(title: Text(alertMessage))
        }
        
    }
    
    var shouldShowOverlay: Bool {
            switch context {
            case .favorites:
                // В избранном не показываем оверлей
                return false
            case .nonFavorites, .other:
                // В других контекстах показываем оверлей
                return true
            }
        }
    var isInFavorites: Bool {
        return favoritesManager.favorites.contains { $0.viewIdentifier == allViewIdentifiers }
    }
    
    func addToFavorites() {
        let newItem = FavoriteItem(name: "Приказ №1030", viewIdentifier: allViewIdentifiers, isExpanded: false, isNavigationLink: true)
        let success = favoritesManager.addItem(newItem)
        if success {
            // Элемент успешно добавлен
        } else {
            // Элемент уже существует
            alertMessage = "Этот элемент уже добавлен в избранное"
            showAlert = true
        }
    }
    
    func removeFromFavorites() {
        if let item = favoritesManager.favorites.first(where: { $0.viewIdentifier == allViewIdentifiers }) {
            favoritesManager.removeItem(item)
        }
    }
    
}
