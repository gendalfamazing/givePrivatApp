//
//  Prikaz1030Alg7View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg7View: View {
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
    
    var body: some View {
            ScrollView {
                Spacer()
                VStack {
                    MyViewBuilder(title: Text("7"), content: Text("""
                    **Осуществлять основные реанимационные мероприятия** (ИВЛ мешком Амбу, закрытый массаж сердца).
                    **Интубация трахеи** (комбитюб, ларингиальная маска).
                    **Венозный доступ**.
                    **ЭКГ** (подтвердить отсутствие электрической активности **не менее чем в двух отведениях**).
                    """)).buildGrayText()
                    Image(systemName: "arrow.down")
                        
                    
                    MyViewBuilder(title: Text("7"), content: Text("""
                    **Наружная ЭКС с одновременным введением лекарств** (при наличии соответствующего оборудования)
                    """)).buildGrayText()
                    Image(systemName: "arrow.down")
                        
                    
                    MyViewBuilder(title: Text("7"), content: Text("""
                    **Атропин 1 мг** (1 мл 0,1% раствора) в/в струйно (но **не более 3-х раз**), чередовать с **эпинефрином 1 мг** (1 мл 0,18% раствора) в/в струйно **быстро каждые 3-5 минут**.
                    **Повторная запись ЭКГ**.
                    """)).buildGrayText()
                    Image(systemName: "arrow.down")
                        
                    
                    MyViewBuilder(title: Text("7"), content: Text("""
                    **Искать устранимую причину и попытаться её купировать**:
                    - **гипоксия** (оксигенотерапия под контролем SpO2);
                    - **ацидоз** (алкогольное отравление тяжелое, **длительная СЛР более 20 мин**) – **8,4 %** раствор **натрия гидрокарбоната в/в по 20 мл**;
                    - **передозировка лекарственных средств** (при уточнении введение имеющихся антидотов);
                    - **гипотермия** (согревание теплыми инфузионными растворами в/в, внешнее обогревание).
                    """)).buildGrayText()
                    Image(systemName: "arrow.down")
                        
                    
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        LazyVStack (spacing: 5){
                            MyViewBuilder(title: Text("7"), content: Text("""
                    **Достигнутый эффект**:
                    """)).buildGrayInText()
                            
                            
                            MyViewBuilder(title: Text("7"), content: Text("""
                        Асистолия
                        """)).buildBlue591Text(isTextExpanded: isTextExpanded1)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded1.toggle()
                                        if isTextExpanded2 == true {
                                            isTextExpanded2.toggle()
                                        }
                                        if isTextExpanded3 == true {
                                            isTextExpanded3.toggle()
                                        }
                                    }
                                }
                            if isTextExpanded1 {
                                MyViewBuilder(title: Text("6"), content: Text("**Констатация биологической смерти** при неэффективности СЛР")).buildGrayInHiddenText().padding(.horizontal, -5.0)
                            }
                            MyViewBuilder(title: Text("7"), content: Text("""
                        Появление эффективного ритма
                        """)).buildBlue591Text(isTextExpanded: isTextExpanded2)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded2.toggle()
                                        if isTextExpanded1 == true {
                                            isTextExpanded1.toggle()
                                        }
                                        if isTextExpanded3 == true {
                                            isTextExpanded3.toggle()
                                        }
                                    }
                                }
                            if isTextExpanded2 {
                                NavigationLink (destination: Prikaz1030Alg9View()) {
                                    MyViewBuilder(title: Text("7"), content: Text("Алгоритм 9 «Постреанимационная поддержка», устранение вновь выявленных причин")).buildNavigationText()
                                }
                            }
                            MyViewBuilder(title: Text("7"), content: Text("""
                        Электрическая активность (фибрилляция)
                        """)).buildBlue591Text(isTextExpanded: isTextExpanded3)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded3.toggle()
                                        if isTextExpanded1 == true {
                                            isTextExpanded1.toggle()
                                        }
                                        if isTextExpanded2 == true {
                                            isTextExpanded2.toggle()
                                        }
                                    }
                                }
                            if isTextExpanded3 {
                                NavigationLink (destination: Prikaz1030Alg6View()) {
                                    MyViewBuilder(title: Text("7"), content: Text("Алгоритм 6 «Фибрилляция желудочков, желудочковая тахикардия с острой сердечной недостаточностью»")).buildNavigationText()
                                }
                            }
                            
                            
                        }
                        .padding(5.0)
                    }
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
                    Text("Алгоритм 7")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Асистолия»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg7"), title: "Алгоритм 7")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}



#Preview {
    Prikaz1030Alg7View()
}

struct Prikaz1030Alg7ViewFavorites: View {
    @AppStorage("fontSize") var fontSize: Double = 14.0
    @EnvironmentObject var themeManager: ThemeManager
    @Environment(\.sizeCategory) var sizeCategory
    
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    
    @EnvironmentObject var favoritesManager: FavoritesManager
    @Environment(\.viewContext) var context: ViewContext
    @State private var showAlert = false
    @State private var alertMessage = ""
    
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
        return favoritesManager.favorites.contains { $0.viewIdentifier == "Алгоритм 7. «Асистолия»" }
    }
    
    func addToFavorites() {
        let newItem = FavoriteItem(name: "Приказ №1030", viewIdentifier: "Алгоритм 7. «Асистолия»", isExpanded: false, isNavigationLink: true)
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
        if let item = favoritesManager.favorites.first(where: { $0.viewIdentifier == "Алгоритм 7. «Асистолия»" }) {
            favoritesManager.removeItem(item)
        }
    }
    

    var body: some View {
        VStack {
            NavigationLink(destination: Prikaz1030Alg7View()) {
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
    
}
