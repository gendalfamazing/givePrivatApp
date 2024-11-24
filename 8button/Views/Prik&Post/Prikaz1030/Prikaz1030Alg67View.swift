//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg67View: View {
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
                    
                            MyViewBuilder(title: Text("**Срок беременности**:"), content: Text("""
                            - Беременность недоношенная **22-36 недель**
                            - Беременность доношенная **37 недель и более**
                            """)).buildGrayInAndHiddenBlock()
                         
                    Image(systemName: "arrow.down")
                       
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack {
                            
                            VStack {
                                
                                MyViewBuilder(title: Text("67"), content: Text("""
                            **Кровотечение из родовых путей**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded4)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded4.toggle()
                                            
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
                                            if isTextExpanded9 == true {
                                                isTextExpanded9.toggle()
                                            }
                                            if isTextExpanded10 == false {
                                                isTextExpanded10.toggle()
                                            }
                                            if isTextExpanded11 == false {
                                                isTextExpanded11.toggle()
                                            }
                                            if isTextExpanded4 == false && isTextExpanded5 == false && isTextExpanded6 == false && isTextExpanded7 == false && isTextExpanded8 == false && isTextExpanded9 == false {
                                                isTextExpanded11 = false
                                                isTextExpanded10 = false
                                            }
                                        }
                                    }
                                MyViewBuilder(title: Text("67"), content: Text("""
                            **Гипертензия у беременных**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded5)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded5.toggle()
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
                                            if isTextExpanded9 == true {
                                                isTextExpanded9.toggle()
                                            }
                                            if isTextExpanded10 == false {
                                                isTextExpanded10.toggle()
                                            }
                                            if isTextExpanded11 == false {
                                                isTextExpanded11.toggle()
                                            }
                                            if isTextExpanded4 == false && isTextExpanded5 == false && isTextExpanded6 == false && isTextExpanded7 == false && isTextExpanded8 == false && isTextExpanded9 == false {
                                                isTextExpanded11 = false
                                                isTextExpanded10 = false
                                            }
                                        }
                                    }
                                
                                MyViewBuilder(title: Text("67"), content: Text("""
                            **Родовая деятельность схватки через 10-15 ́**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded6)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded6.toggle()
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
                                            if isTextExpanded9 == true {
                                                isTextExpanded9.toggle()
                                            }
                                            if isTextExpanded10 == true {
                                                isTextExpanded10.toggle()
                                            }
                                            if isTextExpanded11 == false {
                                                isTextExpanded11.toggle()
                                            }
                                            if isTextExpanded4 == false && isTextExpanded5 == false && isTextExpanded6 == false && isTextExpanded7 == false && isTextExpanded8 == false && isTextExpanded9 == false {
                                                isTextExpanded11 = false
                                                isTextExpanded10 = false
                                            }
                                        }
                                    }
                                MyViewBuilder(title: Text("67"), content: Text("""
                            **Отхождение околоплодных вод**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded7)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded7.toggle()
                                            if isTextExpanded4 == true {
                                                isTextExpanded4.toggle()
                                            }
                                            if isTextExpanded5 == true {
                                                isTextExpanded5.toggle()
                                            }
                                            if isTextExpanded6 == true {
                                                isTextExpanded6.toggle()
                                            }
                                            if isTextExpanded8 == true {
                                                isTextExpanded8.toggle()
                                            }
                                            if isTextExpanded9 == true {
                                                isTextExpanded9.toggle()
                                            }
                                            if isTextExpanded10 == true {
                                                isTextExpanded10.toggle()
                                            }
                                            if isTextExpanded11 == false {
                                                isTextExpanded11.toggle()
                                            }
                                            if isTextExpanded4 == false && isTextExpanded5 == false && isTextExpanded6 == false && isTextExpanded7 == false && isTextExpanded8 == false && isTextExpanded9 == false {
                                                isTextExpanded11 = false
                                                isTextExpanded10 = false
                                            }
                                        }
                                    }
                                MyViewBuilder(title: Text("67"), content: Text("""
                            **Экстрагенитальная патология**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded8)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded8.toggle()
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
                                            if isTextExpanded9 == true {
                                                isTextExpanded9.toggle()
                                            }
                                            if isTextExpanded10 == true {
                                                isTextExpanded10.toggle()
                                            }
                                            if isTextExpanded11 == false {
                                                isTextExpanded11.toggle()
                                            }
                                            if isTextExpanded4 == false && isTextExpanded5 == false && isTextExpanded6 == false && isTextExpanded7 == false && isTextExpanded8 == false && isTextExpanded9 == false {
                                                isTextExpanded11 = false
                                                isTextExpanded10 = false
                                            }
                                        }
                                    }
                                MyViewBuilder(title: Text("67"), content: Text("""
                            **II период родов**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded9)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded9.toggle()
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
                                            if isTextExpanded10 == true {
                                                isTextExpanded10.toggle()
                                            }
                                            if isTextExpanded11 == false {
                                                isTextExpanded11.toggle()
                                            }
                                            if isTextExpanded4 == false && isTextExpanded5 == false && isTextExpanded6 == false && isTextExpanded7 == false && isTextExpanded8 == false && isTextExpanded9 == false {
                                                isTextExpanded11 = false
                                                isTextExpanded10 = false
                                            }
                                        }
                                    }
                            }
                        }
                        .padding(5)
                    }
                    
                    if isTextExpanded4{
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                
                                MyViewBuilder(title: Text("67"), content: Text("""
                                **Признаки гиповолемического шока**:
                                """)).buildGrayInText().padding(-5)
                                NavigationLink (destination: Prikaz1030Alg5View()) {
                                    MyViewBuilder(title: Text("67"), content: Text("Алгоритм 5 «Гиповолемический шок»")).buildNavigationText()
                                }
                            }
                            .padding(5)
                        }
                    }
                    if isTextExpanded5{
                        Image(systemName: "arrow.down")
                         
                                MyViewBuilder(title: Text("**Неотложная помощь**:"), content: Text("""
                                При **CАД более 140 мм.рт.ст.**, признаках **тяжелого гестоза, преэклампсии, эклампсии** в/в:
                                – **диазепам 1-2 мл 0,5%** раствора;
                                – **дроперидол 2 мл 0,25%** раствора;
                                – **магния сульфат 25% раствор 10 мл медленно**.
                                """)).buildGrayInAndHiddenBlock()
                           
                    }
                    
                    if isTextExpanded9{
                        Image(systemName: "arrow.down")
                         
                                MyViewBuilder(title: Text("67"), content: Text("""
                                - **предлежащая часть плода в полости таза, на тазовом дне, врезывается, прорезывается**.
                                """)).buildGrayText()
                           
                        Image(systemName: "arrow.down")
                           
                                MyViewBuilder(title: Text("**Потуги 1-2 мин через 50-60 секунд**:"), content: Text("""
                                - завершение родов **на месте прибытия**.
                                """)).buildGrayInAndHiddenBlock()
                            
                        Image(systemName: "arrow.down")
                           
                                MyViewBuilder(title: Text("**Оказание пособия**:"), content: Text("""
                                1. **Головное предлежание**:
                                - выведение головки вне потуги;
                                - выделение заднего и переднего плечика;
                                - выведение туловища за подмышечные впадины плода, удалить слизь из носоглотки.
                                
                                2. **Ягодичное предлежание**:
                                - пособие по Цовьянову;
                                - при выпадении ножек пособие начинают оказывать с момента рождения плода до угла лопаток;
                                - выведение одноименной рукой медработника ручки плода, всегда освобождают «заднюю» ручку у промежности;
                                - наклонить туловище плода вниз, если передняя ручка не родилась: поворот туловища плода на 180° и выведение «задней» ручки;
                                - выведение головки плода приемом Мориса-Левре, удалить слизь из носоглотки.
                                """)).buildGrayInAndHiddenBlock()
                            
                        Image(systemName: "arrow.down")
                          
                                MyViewBuilder(title: Text("67"), content: Text("""
                                При рождении ребенка наложить **два зажима на пуповину** на расстоянии **8-10 см** и **15-20 см** от пупочного кольца. Пуповину пересечь ножницами **между зажимами**, предварительно обработав место пересечения **5% спиртовым раствором иода**.
                                """)).buildGrayText()
                           
                        Image(systemName: "arrow.down")
                           
                                MyViewBuilder(title: Text("**III период родов**:"), content: Text("""
                                - выведение мочи катетером;
                                - родившийся послед доставить в акушерский стационар;
                                - определение АД, пульса.
                                """)).buildGrayInAndHiddenBlock()
                           
                    }
                    if isTextExpanded10{
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("67"), content: Text("""
                                **Информировать ближайший стационар** по профилю о готовности приема **тяжелой беременной**
                                """)).buildGrayText()
                    }
                    if isTextExpanded11{
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("67"), content: Text("""
                                **Доставка в стационар** по профилю
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
                    Text("Алгоритм 67")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Роды»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg67"), title: "Алгоритм 67")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}

#Preview {
    Prikaz1030Alg67View()
}
struct Prikaz1030Alg67ViewFavorites: View {
    @AppStorage("fontSize") var fontSize: Double = 14.0
    @EnvironmentObject var themeManager: ThemeManager
    @Environment(\.sizeCategory) var sizeCategory
    
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    
    @EnvironmentObject var favoritesManager: FavoritesManager
    @Environment(\.viewContext) var context: ViewContext
    @State private var showAlert = false
    @State private var alertMessage = ""
    
    private var allViewIdentifiers: String = "Алгоритм 67. «Роды»"
    
    var body: some View {
        VStack {
            NavigationLink(destination: Prikaz1030Alg67View()) {
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
