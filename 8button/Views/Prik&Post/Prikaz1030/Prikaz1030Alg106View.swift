//
//  Prikaz1030Alg6View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg6View: View {
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
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack (spacing: 1){
                            MyViewBuilder(title: Text("6"), content: Text("**Осуществлять основные реанимационные мероприятия**: алгоритм 4 «Внезапная смерть, сердечно-легочная реанимация». **До регистрации ЭКГ** (в том числе с электродов дефибриллятора) **продолжать основные реанимационные мероприятия**.")).buildGrayInHiddenText()
                            NavigationLink (destination: Prikaz1030Alg4View()) {
                                MyViewBuilder(title: Text("6"), content: Text("Алгоритм 4 «Внезапная смерть, сердечно-легочная реанимация»")).buildNavigationText().padding(5.0)
                            }
                            MyViewBuilder(title: Text("6"), content: Text("При **ФЖ/ЖТ** - дефибриляция **200 Дж**, затем **300**, **360 Дж** или **120 Дж**, затем **150**, **200 Дж бифазным дефибриллятором**")).buildGrayInHiddenText()
                            MyViewBuilder(title: Text("6"), content: Text("**Достигнут определенный эффект**")).buildGrayInText()
                            Spacer(minLength: 5)
                            HStack {
                                MyViewBuilder(title: Text("6"), content: Text("**Да**")).buildGreen1Text(isTextExpanded: isTextExpanded)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded.toggle()
                                            if isTextExpanded1 == true {
                                                isTextExpanded1.toggle()
                                            }
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
                                        }
                                    }
                                MyViewBuilder(title: Text("6"), content: Text("**Нет**")).buildGreen1Text(isTextExpanded: isTextExpanded4)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded4.toggle()
                                            if isTextExpanded == true {
                                                isTextExpanded.toggle()
                                            }
                                            if isTextExpanded1 == true {
                                                isTextExpanded1.toggle()
                                            }
                                            if isTextExpanded2 == true {
                                                isTextExpanded2.toggle()
                                            }
                                            if isTextExpanded3 == true {
                                                isTextExpanded3.toggle()
                                            }
                                            if isTextExpanded5 == true {
                                                isTextExpanded5.toggle()
                                            }
                                            if isTextExpanded6 == true {
                                                isTextExpanded6.toggle()
                                            }
                                        }
                                    }
                            }.padding(5).padding(.top, -10)
                            
                        }
                    }
                    if isTextExpanded {
                        Image(systemName: "arrow.down")
                            
                    
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack (spacing: 5){
                                MyViewBuilder(title: Text("6"), content: Text("Электро-механическая диссоциация")).buildBlue591Text(isTextExpanded: isTextExpanded1)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded1.toggle()
                                        }
                                    }
                                if isTextExpanded1 {
                                    NavigationLink (destination: Prikaz1030Alg8View()) {
                                        MyViewBuilder(title: Text("6"), content: Text("Алгоритм 8 «Электро-механическая диссоциация»")).buildNavigationText()
                                    }
                                }
                                MyViewBuilder(title: Text("6"), content: Text("Появился пульс")).buildBlue591Text(isTextExpanded: isTextExpanded2)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded2.toggle()
                                            if isTextExpanded1 == true {
                                                isTextExpanded1.toggle()
                                            }
                                        }
                                    }
                                if isTextExpanded2 {
                                    NavigationLink (destination: Prikaz1030Alg9View()) {
                                        MyViewBuilder(title: Text("6"), content: Text("Алгоритм 9 «Постреанимационная поддержка»")).buildNavigationText()
                                    }
                                }
                                MyViewBuilder(title: Text("6"), content: Text("Асистолия")).buildBlue591Text(isTextExpanded: isTextExpanded3)
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
                                    NavigationLink (destination: Prikaz1030Alg7View()) {
                                        MyViewBuilder(title: Text("6"), content: Text("Алгоритм 7 «Асистолия»")).buildNavigationText()
                                    }
                                }
                                
                            }
                            .padding(5.0)
                        }
                    }
                    
                    
                    if isTextExpanded4 {
                        Image(systemName: "arrow.down")
                            
                    
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack (spacing: 1){
                                MyViewBuilder(title: Text("6"), content: Text("**Рефрактерная или рецидивирующая ФЖ/ЖТ**:")).buildGrayInText()
                                MyViewBuilder(title: Text("6"), content: Text("""
                        **Основные реанимационные мероприятия** – см. алгоритм 4 «Внезапная смерть, сердечно-легочная реанимация».
                        **Интубация трахеи** или комбитьюб (ларингиальная маска).
                        **Венозный доступ** (0,9 % раствор натрия хлорида, ацесоль).
                        """)).buildGrayInHiddenText()
                                NavigationLink (destination: Prikaz1030Alg4View()) {
                                    MyViewBuilder(title: Text("6"), content: Text("Алгоритм 4 «Внезапная смерть, сердечно-легочная реанимация»")).buildNavigationText().padding(5.0)
                                }
                            }
                        }
                        Image(systemName: "arrow.down")
                            
                    
                        
                        MyViewBuilder(title: Text("6"), content: Text("""
                        **Дефибрилляция разрядом 360 Дж** (иногда **несколько раз подряд**, особенно **если не начато введение лекарственных средств**) или **200 Дж бифазным дефибриллятором**.
                        """)).buildGrayText()
                        
                        Image(systemName: "arrow.down")
                            
                    
                        
                        MyViewBuilder(title: Text("6"), content: Text("""
                        При **рефрактерной ФЖ/ЖТ** – антиаритмические средства в/в: **амиодарон 5 %** раствор **6 мл** (**затем 3 мл (150 мг)** в/в медленно), или **лидокаин 2 %** раствор **4-6 мл**, или **прокаинамид 10 %** раствор **10 мл**.
                        """)).buildGrayText()
                        
                        Image(systemName: "arrow.down")
                            
                    
                        
                        MyViewBuilder(title: Text("6"), content: Text("""
                        **Дефибрилляция разрядом 360 Дж после каждого введения лекарственных средств или 200 Дж бифазным дефибриллятором**.
                        Соблюдать последовательность **«разряд – лекарство – разряд - лекарство»**.
                        """)).buildGrayText()
                        Image(systemName: "arrow.down")
                            
                    
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("6"), content: Text("""
                                **Ритм стабилизирован**:
                                """)).buildGrayInText()
                                HStack {
                                    MyViewBuilder(title: Text("6"), content: Text("""
                            **Да**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded5)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded5.toggle()
                                                if isTextExpanded6 == true {
                                                    isTextExpanded6.toggle()
                                                }
                                            }
                                        }
                                    MyViewBuilder(title: Text("6"), content: Text("""
                            **Нет**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded6)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded6.toggle()
                                                if isTextExpanded5 == true {
                                                    isTextExpanded5.toggle()
                                                }
                                            }
                                        }
                                }.padding(5).padding(.top, -10)
                            }
                        }
                        if isTextExpanded5 {
                            Image(systemName: "arrow.down")
                                
                    
                            NavigationLink (destination: Prikaz1030Alg9View()) {
                                MyViewBuilder(title: Text("6"), content: Text("Алгоритм 9 «Постреанимационная поддержка»")).buildNavigationText()
                            }
                        }
                        
                        if isTextExpanded6 {
                            Image(systemName: "arrow.down")
                                
                    
                            ZStack {
                                MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                                VStack (spacing: 1){
                                    MyViewBuilder(title: Text("6"), content: Text("""
                                    **Отсутствие электрической активности**:
                                    """)).buildGrayInText()
                                    NavigationLink (destination: Prikaz1030Alg7View()) {
                                        MyViewBuilder(title: Text("6"), content: Text("Алгоритм 7 «Асистолия»")).buildNavigationText().padding(5.0)
                                    }
                                }
                            }
                        }
                        
                        
                        
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
                    Text("Алгоритм 6")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("""
                    «Фибрилляция желудочков (ФЖ), желудочковая тахикардия (ЖТ) с острой сердечной недостаточностью»
                    """)
                    .font(.caption2)
                    .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg6"), title: "Алгоритм 6")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}



#Preview {
    Prikaz1030Alg6View()
}

struct Prikaz1030Alg6ViewFavorites: View {
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
        return favoritesManager.favorites.contains { $0.viewIdentifier == "Алгоритм 6. «Фибрилляция желудочков (ФЖ), желудочковая тахикардия (ЖТ) с острой сердечной недостаточностью»" }
    }
    
    func addToFavorites() {
        let newItem = FavoriteItem(name: "Приказ №1030", viewIdentifier: "Алгоритм 6. «Фибрилляция желудочков (ФЖ), желудочковая тахикардия (ЖТ) с острой сердечной недостаточностью»", isExpanded: false, isNavigationLink: true)
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
        if let item = favoritesManager.favorites.first(where: { $0.viewIdentifier == "Алгоритм 6. «Фибрилляция желудочков (ФЖ), желудочковая тахикардия (ЖТ) с острой сердечной недостаточностью»" }) {
            favoritesManager.removeItem(item)
        }
    }
    

    var body: some View {
        VStack {
            NavigationLink(destination: Prikaz1030Alg6View()) {
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
