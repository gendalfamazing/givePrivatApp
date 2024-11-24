//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg73View: View {
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
                            
                            MyViewBuilder(title: Text("73"), content: Text("""
                            **Анамнез и осмотр**:
                            """)).buildGrayInText().padding(-5)
                        
                            
                            VStack {
                                
                                MyViewBuilder(title: Text("73"), content: Text("""
                            **Абсцесс и флегмона, острый дакриоаденит и дакриоцистит**
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
                                            if isTextExpanded7 == false {
                                                isTextExpanded7.toggle()
                                            }
                                            if isTextExpanded8 == true {
                                                isTextExpanded8.toggle()
                                            }
                                            if isTextExpanded1 == false && isTextExpanded2 == false && isTextExpanded3 == false && isTextExpanded4 == false && isTextExpanded5 == false && isTextExpanded6 == false   {
                                                isTextExpanded8 = false
                                                isTextExpanded7 = false
                                            }
                                        }
                                    }
                                MyViewBuilder(title: Text("73"), content: Text("""
                            **Острый иридоциклит**
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
                                            if isTextExpanded7 == false {
                                                isTextExpanded7.toggle()
                                            }
                                            if isTextExpanded8 == true {
                                                isTextExpanded8.toggle()
                                            }
                                            if isTextExpanded1 == false && isTextExpanded2 == false && isTextExpanded3 == false && isTextExpanded4 == false && isTextExpanded5 == false && isTextExpanded6 == false   {
                                                isTextExpanded8 = false
                                                isTextExpanded7 = false
                                            }
                                        }
                                    }
                                MyViewBuilder(title: Text("73"), content: Text("""
                            **Острый гнойный кератит (язва роговицы)**
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
                                            if isTextExpanded7 == false {
                                                isTextExpanded7.toggle()
                                            }
                                            if isTextExpanded8 == true {
                                                isTextExpanded8.toggle()
                                            }
                                            if isTextExpanded1 == false && isTextExpanded2 == false && isTextExpanded3 == false && isTextExpanded4 == false && isTextExpanded5 == false && isTextExpanded6 == false   {
                                                isTextExpanded8 = false
                                                isTextExpanded7 = false
                                            }
                                        }
                                    }
                                MyViewBuilder(title: Text("73"), content: Text("""
                            **Острый приступ глаукомы**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded4)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded4.toggle()
                                            if isTextExpanded1 == true {
                                                isTextExpanded1.toggle()
                                            }
                                            if isTextExpanded3 == true {
                                                isTextExpanded3.toggle()
                                            }
                                            if isTextExpanded2 == true {
                                                isTextExpanded2.toggle()
                                            }
                                            if isTextExpanded5 == true {
                                                isTextExpanded5.toggle()
                                            }
                                            if isTextExpanded6 == true {
                                                isTextExpanded6.toggle()
                                            }
                                            if isTextExpanded7 == false {
                                                isTextExpanded7.toggle()
                                            }
                                            if isTextExpanded8 == true {
                                                isTextExpanded8.toggle()
                                            }
                                            if isTextExpanded1 == false && isTextExpanded2 == false && isTextExpanded3 == false && isTextExpanded4 == false && isTextExpanded5 == false && isTextExpanded6 == false   {
                                                isTextExpanded8 = false
                                                isTextExpanded7 = false
                                            }
                                        }
                                    }
                                MyViewBuilder(title: Text("73"), content: Text("""
                            **Острый эписклерит**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded5)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded5.toggle()
                                            if isTextExpanded1 == true {
                                                isTextExpanded1.toggle()
                                            }
                                            if isTextExpanded3 == true {
                                                isTextExpanded3.toggle()
                                            }
                                            if isTextExpanded4 == true {
                                                isTextExpanded4.toggle()
                                            }
                                            if isTextExpanded2 == true {
                                                isTextExpanded2.toggle()
                                            }
                                            if isTextExpanded6 == true {
                                                isTextExpanded6.toggle()
                                            }
                                            if isTextExpanded7 == true {
                                                isTextExpanded7.toggle()
                                            }
                                            if isTextExpanded8 == false {
                                                isTextExpanded8.toggle()
                                            }
                                            if isTextExpanded1 == false && isTextExpanded2 == false && isTextExpanded3 == false && isTextExpanded4 == false && isTextExpanded5 == false && isTextExpanded6 == false   {
                                                isTextExpanded8 = false
                                                isTextExpanded7 = false
                                            }
                                        }
                                    }
                                MyViewBuilder(title: Text("73"), content: Text("""
                            **Конъюнктивит**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded6)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded6.toggle()
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
                                            if isTextExpanded2 == true {
                                                isTextExpanded2.toggle()
                                            }
                                            if isTextExpanded7 == true {
                                                isTextExpanded7.toggle()
                                            }
                                            if isTextExpanded8 == false {
                                                isTextExpanded8.toggle()
                                            }
                                            if isTextExpanded1 == false && isTextExpanded2 == false && isTextExpanded3 == false && isTextExpanded4 == false && isTextExpanded5 == false && isTextExpanded6 == false   {
                                                isTextExpanded8 = false
                                                isTextExpanded7 = false
                                            }
                                        }
                                    }
                                
                            }
                            
                        }
                        .padding(5)
                    }
                    if isTextExpanded1{
                        Image(systemName: "arrow.down")
                           
                                MyViewBuilder(title: Text("**Клиническая картина**:"), content: Text("""
                                Боль и отек, гиперемия в области слезной железы, возможно смещение глазного яблока, ограничение его подвижности
                                """)).buildGrayInAndHiddenBlock()
                           
                        Image(systemName: "arrow.down")
                           
                                MyViewBuilder(title: Text("**Неотложная помощь**:"), content: Text("""
                                - **глюкоза 40% раствор по 20 мл** в/в;
                                - **фуросемид 1% 1-2 мл** в/м.
                                """)).buildGrayInAndHiddenBlock()
                            
                    }
                    if isTextExpanded2{
                        Image(systemName: "arrow.down")
                           
                                MyViewBuilder(title: Text("**Клиническая картина**:"), content: Text("""
                                Боль в глазу, слезотечение, светобоязнь, снижение зрения, перикорнеальная инъекция, изменение цвета радужки, сужение зрачка, зрачок может иметь неправильную форму
                                """)).buildGrayInAndHiddenBlock()
                           
                    }
                    if isTextExpanded3{
                        Image(systemName: "arrow.down")
                           
                                MyViewBuilder(title: Text("**Клиническая картина**:"), content: Text("""
                                Светобоязнь, слезотечение, боль в глазу, покраснение конъюнктивы вокруг роговицы, инфильтраты роговицы, язва роговицы
                                """)).buildGrayInAndHiddenBlock()
                            
                        Image(systemName: "arrow.down")
                           
                                MyViewBuilder(title: Text("**Неотложная помощь**:"), content: Text("""
                                1. **Инстилляции 0,5% раствора прокаина**;
                                - **при выраженных болях метамизол 50% 1-2 мл** в/в или **кеторолак 10-30 мг** в/в (или в/м).
                                2. **Промывание конъюнктивальной полости 0,9% раствором хлорида натрия**.
                                """)).buildGrayInAndHiddenBlock()
                           
                    }
                    if isTextExpanded4{
                        Image(systemName: "arrow.down")
                           
                                MyViewBuilder(title: Text("**Клиническая картина**:"), content: Text("""
                                Резкая боль в глазу, тошнота (иногда рвота), отек век, застойная инъекция глазного яблока, отек роговицы, зрачок широкий, реакция на свет отсутствует, зрение резко снижено, глазное яблоко при пальпации болезненное, твердое
                                """)).buildGrayInAndHiddenBlock()
                           
                        Image(systemName: "arrow.down")
                           
                                MyViewBuilder(title: Text("**Неотложная помощь**:"), content: Text("""
                                1. **Фуросемид 1% 2-4 мл** в/в.
                                2. **При выраженном болевом синдроме**:
                                – **трамадол 5% - 1 мл** или **тримепередин 2% - 1 мл** в/в или в/м **с дифенгидрамином 1% - 1 мл**.
                                """)).buildGrayInAndHiddenBlock()
                           
                    }
                    if isTextExpanded5{
                        Image(systemName: "arrow.down")
                           
                                MyViewBuilder(title: Text("**Клиническая картина**:"), content: Text("""
                                Ограниченная припухлость красно-фиолетового цвета на склере, чаще с 2 сторон
                                """)).buildGrayInAndHiddenBlock()
                           
                        Image(systemName: "arrow.down")
                           
                                MyViewBuilder(title: Text("**Неотложная помощь**:"), content: Text("""
                                - **метамизол 50% раствор 1 - 2 мл** в/в или **кеторолак 10-30 мг** в/в (в/м);
                                - **преднизолон 30 мг** или **дексаметазон 4 мг** в/м.
                                """)).buildGrayInAndHiddenBlock()
                            
                    }
                    if isTextExpanded6{
                        Image(systemName: "arrow.down")
                           
                                MyViewBuilder(title: Text("**Клиническая картина**:"), content: Text("""
                                Резь в глазах, светобоязнь, слезотечение, отек век, отек и гиперемия конъюнктивы, слизисто-гнойное или гнойное отделяемое
                                """)).buildGrayInAndHiddenBlock()
                            
                        Image(systemName: "arrow.down")
                           
                                MyViewBuilder(title: Text("**Неотложная помощь**:"), content: Text("""
                                Пациенту **рекомендовать частые** (через каждые 2 ч) **инстилляции 20-30% раствора сульфацетамида**
                                """)).buildGrayInAndHiddenBlock()
                          
                    }
                    
                    if isTextExpanded7{
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("73"), content: Text("""
                        **Доставка в стационар** по профилю основного заболевания
                        """)).buildGrayText()
                    }
                    if isTextExpanded8{
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("73"), content: Text("""
                        **Рекомендовать срочно обратиться к офтальмологу**
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
                    Text("Алгоритм 73")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Заболевания глаза, века»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg73"), title: "Алгоритм 73")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}

#Preview {
    Prikaz1030Alg73View()
}
struct Prikaz1030Alg73ViewFavorites: View {
    @AppStorage("fontSize") var fontSize: Double = 14.0
    @EnvironmentObject var themeManager: ThemeManager
    @Environment(\.sizeCategory) var sizeCategory
    
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    
    @EnvironmentObject var favoritesManager: FavoritesManager
    @Environment(\.viewContext) var context: ViewContext
    @State private var showAlert = false
    @State private var alertMessage = ""
    
    private var allViewIdentifiers: String = "Алгоритм 73. «Заболевания глаза, века»"
    
    var body: some View {
        VStack {
            NavigationLink(destination: Prikaz1030Alg73View()) {
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
