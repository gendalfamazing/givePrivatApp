//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg31View: View {
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
    
    var body: some View {
            ScrollView {
                Spacer()
                VStack {
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack (spacing: 1){
                            MyViewBuilder(title: Text("31"), content: Text("""
                            **Гипертермия ≥ 38,5°С**:
                            """)).buildGrayInText()
                            VStack {
                                HStack {
                                    MyViewBuilder(title: Text("31"), content: Text("""
                            **Причины ясны**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded1)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded1.toggle()
                                                
                                                if isTextExpanded2 == true {
                                                    isTextExpanded2.toggle()
                                                }
                                                if isTextExpanded3 == true {
                                                    isTextExpanded3.toggle()
                                                }
                                                if isTextExpanded4 == true {
                                                    isTextExpanded4.toggle()
                                                }
                                                if isTextExpanded5 == true {
                                                    isTextExpanded5.toggle()
                                                }
                                                if isTextExpanded6 == true {
                                                    isTextExpanded6.toggle()
                                                }
                                                if isTextExpanded7 == true {
                                                    isTextExpanded7.toggle()
                                                }
                                                if isTextExpanded8 == true {
                                                    isTextExpanded8.toggle()
                                                }
                                                
                                            }
                                        }
                                    MyViewBuilder(title: Text("31"), content: Text("""
                            **Неясной этиологии**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded2)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded2.toggle()
                                                if isTextExpanded1 == true {
                                                    isTextExpanded1.toggle()
                                                }
                                                if isTextExpanded3 == true {
                                                    isTextExpanded3.toggle()
                                                }
                                                if isTextExpanded4 == true {
                                                    isTextExpanded4.toggle()
                                                }
                                                if isTextExpanded5 == true {
                                                    isTextExpanded5.toggle()
                                                }
                                                if isTextExpanded6 == true {
                                                    isTextExpanded6.toggle()
                                                }
                                                if isTextExpanded7 == true {
                                                    isTextExpanded7.toggle()
                                                }
                                                if isTextExpanded8 == true {
                                                    isTextExpanded8.toggle()
                                                }
                                                
                                            }
                                        }
                                    
                                    
                                }
                                MyViewBuilder(title: Text("31"), content: Text("""
                            **Осложнения**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded3)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded3.toggle()
                                            if isTextExpanded1 == true {
                                                isTextExpanded1.toggle()
                                            }
                                            if isTextExpanded2 == true {
                                                isTextExpanded2.toggle()
                                            }
                                            if isTextExpanded4 == true {
                                                isTextExpanded4.toggle()
                                            }
                                            if isTextExpanded5 == true {
                                                isTextExpanded5.toggle()
                                            }
                                            if isTextExpanded6 == true {
                                                isTextExpanded6.toggle()
                                            }
                                            if isTextExpanded7 == true {
                                                isTextExpanded7.toggle()
                                            }
                                            if isTextExpanded8 == true {
                                                isTextExpanded8.toggle()
                                            }
                                            
                                        }
                                    }
                            }
                        }
                        .padding(5)
                    }
                    
                    if isTextExpanded1 {
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("31"), content: Text("""
                                Инфекционные и неинфекционные заболевания
                                """)).buildGrayText()
                        Image(systemName: "arrow.down")
                        
                                MyViewBuilder(title: Text("**Симптоматическая терапия**:"), content: Text("""
                                        **2 мл 50% раствора метамизола с 2 мл дротаверина** или **1 мл 3% раствора кеторолака** в/в;
                                        **диазепам 0,5% 2 мл** при возбуждении и судорогах.
                                        """)).buildGrayInAndHiddenBlock()
                            
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("31"), content: Text("""
                                Рекомендации, дообследование **в амбулаторно-поликлиническом учреждении** (актив) или **доставка в стационар** (по показаниям)
                                """)).buildGrayText()
                        
                    }
                    if isTextExpanded2 {
                        Image(systemName: "arrow.down")
                           
                                MyViewBuilder(title: Text("**«Лихорадка неясной этиологии»**:"), content: Text("""
                                        - повышение температуры **до 38,5°С и выше не менее 3-х дней** при отсутствии явной этиологической причины
                                        """)).buildGrayInAndHiddenBlock()
                           
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("31"), content: Text("""
                                **Провизорная доставка в стационар инфекционного профиля**
                                """)).buildGrayText()
                    }
                    if isTextExpanded3 {
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                VStack {
                                    HStack {
                                        MyViewBuilder(title: Text("31"), content: Text("""
                                **Отек головного мозга**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded4)
                                            .onTapGesture {
                                                withAnimation (.snappy) {
                                                    isTextExpanded4.toggle()
                                                    
                                                    if isTextExpanded2 == true {
                                                        isTextExpanded2.toggle()
                                                    }
                                                    if isTextExpanded1 == true {
                                                        isTextExpanded1.toggle()
                                                    }
                                                    if isTextExpanded5 == true {
                                                        isTextExpanded5.toggle()
                                                    }
                                                    if isTextExpanded6 == true {
                                                        isTextExpanded6.toggle()
                                                    }
                                                    if isTextExpanded7 == true {
                                                        isTextExpanded7.toggle()
                                                    }
                                                    if isTextExpanded8 == true {
                                                        isTextExpanded8.toggle()
                                                    }
                                                    
                                                }
                                            }
                                        MyViewBuilder(title: Text("31"), content: Text("""
                                **ОДН**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded5)
                                            .onTapGesture {
                                                withAnimation (.snappy) {
                                                    isTextExpanded5.toggle()
                                                    if isTextExpanded1 == true {
                                                        isTextExpanded1.toggle()
                                                    }
                                                    if isTextExpanded2 == true {
                                                        isTextExpanded2.toggle()
                                                    }
                                                    if isTextExpanded4 == true {
                                                        isTextExpanded4.toggle()
                                                    }
                                                    if isTextExpanded6 == true {
                                                        isTextExpanded6.toggle()
                                                    }
                                                    if isTextExpanded7 == true {
                                                        isTextExpanded7.toggle()
                                                    }
                                                    if isTextExpanded8 == true {
                                                        isTextExpanded8.toggle()
                                                    }
                                                    
                                                }
                                            }
                                        
                                        
                                    }
                                    MyViewBuilder(title: Text("31"), content: Text("""
                                **Инфекционно-токсический шок**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded6)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded6.toggle()
                                                if isTextExpanded1 == true {
                                                    isTextExpanded1.toggle()
                                                }
                                                if isTextExpanded2 == true {
                                                    isTextExpanded2.toggle()
                                                }
                                                if isTextExpanded4 == true {
                                                    isTextExpanded4.toggle()
                                                }
                                                if isTextExpanded5 == true {
                                                    isTextExpanded5.toggle()
                                                }
                                                if isTextExpanded7 == true {
                                                    isTextExpanded7.toggle()
                                                }
                                                if isTextExpanded8 == true {
                                                    isTextExpanded8.toggle()
                                                }
                                                
                                            }
                                        }
                                }
                            }
                            .padding(5)
                        }
                    }
                    if isTextExpanded4 {
                        Image(systemName: "arrow.down")
                        
                        MyViewBuilder(title: Text("**Клинические признаки**:"), content: Text("""
                                - распирающая головная боль;
                                - угнетение сознания;
                                - брадикардия;
                                - судороги.
                                """)).buildGrayInAndHiddenBlock()
                          
                        Image(systemName: "arrow.down")
                         
                        MyViewBuilder(title: Text("**Неотложная помощь**:"), content: Text("""
                                - **Дексаметазон 8-32 мг (преднизолон 90- 120 мг), фуросемид до 4 мл 1% раствора в/в**
                                
                                - положение на боку,
                                - **при необходимости – установка воздуховода**, интубация трахеи;
                                - пульсоксиметрия.
                                - **оксигенотерапия** (под контролем SpО2 – **не менее 90%**).
                                - **инфузионная терапия** под контролем АД (**САД ≥ 90 мм.рт.ст.**).
                                - симптоматическая терапия.
                                """)).buildGrayInAndHiddenBlock()
                          
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("31"), content: Text("""
                                **Доставка в стационар инфекционного профиля** (ОИТАР, минуя приемное отделение)
                                """)).buildGrayText()
                    }
                    if isTextExpanded5 {
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack (spacing:1){
                                
                                MyViewBuilder(title: Text("**Клинические признаки**:"), content: Text("""
                                - ЧДД **более 40** или **менее 8** в 1 мин,
                                - **SpО2 ≤ 90%** при дыхании атмосферным воздухом.
                                """)).buildGrayInAndHiddenBlockWithBlueButtons()
                                NavigationLink (destination: Prikaz1030Alg3View()) {
                                    MyViewBuilder(title: Text("31"), content: Text("Алгоритм 3 «Острая дыхательная недостаточность»")).buildNavigationText().padding(5)
                                }
                            }
                            
                        }
                        Image(systemName: "arrow.down")
                        
                        MyViewBuilder(title: Text("**Неотложная помощь**:"), content: Text("""
                                - положение на боку,
                                - **при необходимости – установка воздуховода**, интубация трахеи;
                                - пульсоксиметрия.
                                - **оксигенотерапия** (под контролем SpО2 – **не менее 90%**).
                                - **инфузионная терапия** под контролем АД (**САД ≥ 90 мм.рт.ст.**).
                                - симптоматическая терапия.
                                """)).buildGrayInAndHiddenBlock()
                           
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("31"), content: Text("""
                                **Доставка в стационар инфекционного профиля** (ОИТАР, минуя приемное отделение)
                                """)).buildGrayText()
                    }
                    if isTextExpanded6 {
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack (spacing:1){
                                
                                MyViewBuilder(title: Text("**Клинические признаки**:"), content: Text("""
                                - холодная, бледная, влажная кожа;
                                - САД **менее 90 мм.рт.ст.**,
                                - ЧСС **более 100 в 1 мин**.
                                """)).buildGrayInAndHiddenBlockWithBlueButtons()
                                NavigationLink (destination: Prikaz1030Alg5View()) {
                                    MyViewBuilder(title: Text("31"), content: Text("Алгоритм 5 «Гиповолемический шок»")).buildNavigationText().padding(5)
                                }
                            }
                        }
                        Image(systemName: "arrow.down")
                           
                        
                        MyViewBuilder(title: Text("**Неотложная помощь**:"), content: Text("""
                                - положение на боку,
                                - **при необходимости – установка воздуховода**, интубация трахеи;
                                - пульсоксиметрия.
                                - **оксигенотерапия** (под контролем SpО2 – **не менее 90%**).
                                - **инфузионная терапия** под контролем АД (**САД ≥ 90 мм.рт.ст.**).
                                - симптоматическая терапия.
                                """)).buildGrayInAndHiddenBlock()
                    
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("31"), content: Text("""
                                **Доставка в стационар инфекционного профиля** (ОИТАР, минуя приемное отделение)
                                """)).buildGrayText()
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
                    Text("Алгоритм 31")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Гипертермия»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg31"), title: "Алгоритм 31")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}

#Preview {
    Prikaz1030Alg31View()
}

struct Prikaz1030Alg31ViewFavorites: View {
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
        return favoritesManager.favorites.contains { $0.viewIdentifier == "Алгоритм 31. «Гипертермия»" }
    }
    
    func addToFavorites() {
        let newItem = FavoriteItem(name: "Приказ №1030", viewIdentifier: "Алгоритм 31. «Гипертермия»", isExpanded: false, isNavigationLink: true)
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
        if let item = favoritesManager.favorites.first(where: { $0.viewIdentifier == "Алгоритм 31. «Гипертермия»" }) {
            favoritesManager.removeItem(item)
        }
    }
    

    var body: some View {
        VStack {
            NavigationLink(destination: Prikaz1030Alg31View()) {
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
