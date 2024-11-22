//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg29View: View {
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
    @State private var isTextExpanded72 = false
    var body: some View {
            ScrollView {
                Spacer()
                VStack {
                    MyViewBuilder(title: Text("29"), content: Text("""
                            1. **Оградить пациента от возможных травм**.
                            2. **Обеспечить проходимость дыхательных путей**.
                            3. **Контроль АД, ЧСС, ЧДД**.
                            """)).buildGrayText()
                    
                    Image(systemName: "arrow.down")
                       
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack (spacing:1){
                            MyViewBuilder(title: Text("29"), content: Text("""
                            **Провести дифференциальную диагностику**:
                            """)).buildGrayInText()
                                .onTapGesture {
                                    withAnimation(.snappy){
                                        isTextExpanded71.toggle()
                                    }
                                }
                            if isTextExpanded71 {
                                MyViewBuilder(title: Text("29"), content: Text("""
                                    - ОНМК;
                                    - ЧМТ;
                                    - острая инфекция ЦНС;
                                    - опухоли мозга;
                                    - острые нарушения метаболизма;
                                    - интоксикации;
                                    - нарушения электролитного состава крови;
                                    - гипогликемия;
                                    - гипопаратиреоз;
                                    - эклампсия.
                                    """)).buildGrayInHiddenText()
                                    .onTapGesture {
                                        withAnimation(.snappy){
                                            isTextExpanded71.toggle()
                                        }
                                    }
                            }
                            
                                Spacer(minLength: 5)
                            HStack {
                                MyViewBuilder(title: Text("27"), content: Text("""
                            Совпадения **есть**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded9)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded9.toggle()
                                            if isTextExpanded10 == true {
                                                isTextExpanded10.toggle()
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
                                MyViewBuilder(title: Text("27"), content: Text("""
                            Совпадений **нет**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded10)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded10.toggle()
                                            isTextExpanded72.toggle()
                                            if isTextExpanded71 == true {
                                                isTextExpanded71.toggle()
                                            }
                                            if isTextExpanded9 == false && isTextExpanded10 == false {
                                                isTextExpanded71.toggle()
                                            }
                                            if isTextExpanded9 == true {
                                                isTextExpanded9.toggle()
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
                            }.padding(5).padding(.top, -10)
                        }
                    }
                    if isTextExpanded9 {
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("29"), content: Text("""
                                **Оказать медицинскую помощь по соответствующим алгоритмам**
                                """)).buildGrayText()
                    }
                    if isTextExpanded10 {
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack (spacing:1){
                                MyViewBuilder(title: Text("29"), content: Text("""
                                **Клинические признаки ОДН**:
                                """)).buildGrayInText()
                                    .onTapGesture {
                                        withAnimation(.snappy){
                                            isTextExpanded72.toggle()
                                        }
                                    }
                                if isTextExpanded72 {
                                    MyViewBuilder(title: Text("29"), content: Text("""
                                        – ЧДД более 40 или менее 8 в 1 мин
                                        """)).buildGrayInHiddenText()
                                        .onTapGesture {
                                            withAnimation(.snappy){
                                                isTextExpanded72.toggle()
                                            }
                                        }
                                }
                                Spacer(minLength: 5)
                                HStack {
                                    MyViewBuilder(title: Text("27"), content: Text("""
                                **Есть**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded1)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded1.toggle()
                                                if isTextExpanded72 == true {
                                                    isTextExpanded72.toggle()
                                                }
                                                if isTextExpanded1 == false && isTextExpanded2 == false {
                                                    isTextExpanded72.toggle()
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
                                                if isTextExpanded7 == true {
                                                    isTextExpanded7.toggle()
                                                }
                                                if isTextExpanded8 == true {
                                                    isTextExpanded8.toggle()
                                                }
                                                
                                                
                                            }
                                        }
                                    MyViewBuilder(title: Text("27"), content: Text("""
                                **Нет**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded2)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded2.toggle()
                                                if isTextExpanded72 == true {
                                                    isTextExpanded72.toggle()
                                                }
                                                if isTextExpanded1 == false && isTextExpanded2 == false {
                                                    isTextExpanded72.toggle()
                                                }
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
                                }.padding(5).padding(.top, -10)
                            }
                        }
                        if isTextExpanded1 {
                            Image(systemName: "arrow.down")
                               
                            NavigationLink (destination: Prikaz1030Alg3View()) {
                                MyViewBuilder(title: Text("29"), content: Text("Алгоритм 3 «Острая дыхательная недостаточность»")).buildNavigationText()
                            }
                        }
                        if isTextExpanded2 {
                            Image(systemName: "arrow.down")
                               
                                    MyViewBuilder(title: Text("**Купирование судорожного синдрома**:"), content: Text("""
                                            - **диазепам 0,5%–2-4 мл в/в**,
                                            При **некупировавшемся** судорожном синдроме в течение 15 минут **повторное введение диазепама в той же дозе**;
                                            
                                            -при **повышенном АД**– **25% раствор магния сульфата 5-10 мл** в/в.
                                            """)).buildGrayInAndHiddenBlock()
                               
                            Image(systemName: "arrow.down")
                               
                            ZStack {
                                MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                                VStack {
                                    MyViewBuilder(title: Text("29"), content: Text("""
                                    – глюкометрия
                                    – ЭКГ-мониторирование
                                    – пульсоксиметрия
                                    """)).buildGrayInHiddenText()
                                    
                                    HStack {
                                        VStack {
                                            MyViewBuilder(title: Text("27"), content: Text("""
                                    Оценка эффекта
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded3)
                                                .onTapGesture {
                                                    withAnimation (.snappy) {
                                                        isTextExpanded3.toggle()
                                                        
                                                        
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
                                            MyViewBuilder(title: Text("27"), content: Text("""
                                    Гипогликемия (< 3 ммоль/л)
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded4)
                                                .onTapGesture {
                                                    withAnimation (.snappy) {
                                                        isTextExpanded4.toggle()
                                                        
                                                        if isTextExpanded3 == true {
                                                            isTextExpanded3.toggle()
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
                                        VStack {
                                            MyViewBuilder(title: Text("27"), content: Text("""
                                    Отек головного мозга
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded5)
                                                .onTapGesture {
                                                    withAnimation (.snappy) {
                                                        isTextExpanded5.toggle()
                                                        
                                                        if isTextExpanded3 == true {
                                                            isTextExpanded3.toggle()
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
                                            MyViewBuilder(title: Text("27"), content: Text("""
                                    Эпилептический статус
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded6)
                                                .onTapGesture {
                                                    withAnimation (.snappy) {
                                                        isTextExpanded6.toggle()
                                                        
                                                        if isTextExpanded3 == true {
                                                            isTextExpanded3.toggle()
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
                                }
                                .padding(5)
                            }
                        }
                        if isTextExpanded3 {
                            Image(systemName: "arrow.down")
                               
                            ZStack {
                                MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                                VStack {
                                    
                                    MyViewBuilder(title: Text("**Достигнут эффект**:"), content: Text("""
                                            - судорожный синдром купирован,
                                            - САД ≥ 90 мм рт. ст.,
                                            - SpO2 ≥ 90%
                                            """)).buildGrayInAndHiddenBlockWithBlueButtons()
                                    HStack {
                                        MyViewBuilder(title: Text("27"), content: Text("""
                                    Да
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded7)
                                            .onTapGesture {
                                                withAnimation (.snappy) {
                                                    isTextExpanded7.toggle()
                                                    
                                                    if isTextExpanded8 == true {
                                                        isTextExpanded8.toggle()
                                                    }
                                                    
                                                    
                                                }
                                            }
                                        MyViewBuilder(title: Text("27"), content: Text("""
                                    Нет
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded8)
                                            .onTapGesture {
                                                withAnimation (.snappy) {
                                                    isTextExpanded8.toggle()
                                                    
                                                    if isTextExpanded7 == true {
                                                        isTextExpanded7.toggle()
                                                    }
                                                    
                                                }
                                            }
                                    }.padding(5).padding(.top, -10)
                                }
                            }
                            if isTextExpanded7 {
                                Image(systemName: "arrow.down")
                                   
                                MyViewBuilder(title: Text("29"), content: Text("""
                                        **Актив невролога поликлиники по месту жительства** при быстром восстановлении сознания и отсутствии общемозговой и очаговой неврологической симптоматики при установленном диагнозе
                                        """)).buildGrayText()
                            }
                            if isTextExpanded8 {
                                Image(systemName: "arrow.down")
                                   
                                MyViewBuilder(title: Text("29"), content: Text("""
                                        **Доставка в стационар** по профилю основного заболевания
                                        """)).buildGrayText()
                            }
                        }
                        if isTextExpanded4 {
                            Image(systemName: "arrow.down")
                               
                            MyViewBuilder(title: Text("29"), content: Text("""
                                    **40-60 мл 40% раствора глюкозы в/в**
                                    """)).buildGrayText()
                            Image(systemName: "arrow.down")
                               
                            MyViewBuilder(title: Text("29"), content: Text("""
                                    **Доставка в стационар** по профилю основного заболевания
                                    """)).buildGrayText()
                        }
                        if isTextExpanded5 {
                            Image(systemName: "arrow.down")
                               
                            
                                    MyViewBuilder(title: Text("**Отек головного мозга**:"), content: Text("""
                                            наличие рвоты, патологических рефлексов, гиперэстезия, гипертермия, коллапс, брадикардия, нарушения дыхания
                                            """)).buildGrayInAndHiddenBlock()
                                
                            Image(systemName: "arrow.down")
                               
                            MyViewBuilder(title: Text("29"), content: Text("""
                                    **Оксигенотерапия** под контролем SpO2 **(≥90%)**.
                                    **Фуросемид 1 % 2-4 мл в/в**
                                    """)).buildGrayText()
                            Image(systemName: "arrow.down")
                               
                            MyViewBuilder(title: Text("29"), content: Text("""
                                    **ОИТАР стационара**
                                    """)).buildGrayText()
                        }
                        if isTextExpanded6 {
                            Image(systemName: "arrow.down")
                            
                                    MyViewBuilder(title: Text("**Эпилептический статус**:"), content: Text("""
                                            эпилептический припадок продолжается более 30 минут или отмечаются повторные припадки, между которыми больной не приходит в сознание
                                            """)).buildGrayInAndHiddenBlock()
                              
                            Image(systemName: "arrow.down")
                               
                            MyViewBuilder(title: Text("29"), content: Text("""
                                    **Натрия оксибутират 20% – 15-20 мл (70 мг/кг) в/в капельно**
                                    """)).buildGrayText()
                            Image(systemName: "arrow.down")
                               
                            MyViewBuilder(title: Text("29"), content: Text("""
                                    Отсутствие эффекта
                                    """)).buildGrayText()
                            Image(systemName: "arrow.down")
                               
                            MyViewBuilder(title: Text("29"), content: Text("""
                                    **Восстановить проходимость дыхательных путей** (интубационная трубка, ларингиальная маска, комбитюб),
                                    **ИВЛ 100% кислородом** под контролем SpO2
                                    """)).buildGrayText()
                            Image(systemName: "arrow.down")
                               
                            MyViewBuilder(title: Text("29"), content: Text("""
                                    **ОИТАР стационара**
                                    """)).buildGrayText()
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
                    Text("Алгоритм 29")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Судорожный синдром»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg29"), title: "Алгоритм 29")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}

#Preview {
    Prikaz1030Alg29View()
}

struct Prikaz1030Alg29ViewFavorites: View {
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
        return favoritesManager.favorites.contains { $0.viewIdentifier == "Алгоритм 29. «Судорожный синдром»" }
    }
    
    func addToFavorites() {
        let newItem = FavoriteItem(name: "Приказ №1030", viewIdentifier: "Алгоритм 29. «Судорожный синдром»", isExpanded: false, isNavigationLink: true)
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
        if let item = favoritesManager.favorites.first(where: { $0.viewIdentifier == "Алгоритм 29. «Судорожный синдром»" }) {
            favoritesManager.removeItem(item)
        }
    }
    

    var body: some View {
        VStack {
            NavigationLink(destination: Prikaz1030Alg29View()) {
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
