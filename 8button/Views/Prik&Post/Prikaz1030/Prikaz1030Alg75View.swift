//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg75View: View {
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
                            MyViewBuilder(title: Text("**Осмотр**:"), content: Text("""
                            1. Оценка сознания.
                            2. АД, ЧСС, ЧДД.
                            3. ЭКГ.
                            4. Неврологический осмотр.
                            """)).buildGrayInAndHiddenBlock()
                        
                    Image(systemName: "arrow.down")
                       
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack {
                            
                            MyViewBuilder(title: Text("75"), content: Text("""
                            **Степень тяжести**:
                            """)).buildGrayInText().padding(-5)
                            HStack{
                                MyViewBuilder(title: Text("75"), content: Text("""
                            **Легкая**
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
                                        }
                                    }
                                MyViewBuilder(title: Text("75"), content: Text("""
                            **Средняя**
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
                                        }
                                    }
                                MyViewBuilder(title: Text("75"), content: Text("""
                            **Тяжелая**
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
                                        }
                                    }
                            }
                        }
                        .padding(5)
                    }
                    
                    if isTextExpanded1{
                        Image(systemName: "arrow.down")
                           
                                MyViewBuilder(title: Text("**Клиническая картина**:"), content: Text("""
                                - тремор языка, век, рук;
                                - головная боль; бессонница;
                                - небольшая артериальная гипертензия;
                                - синусовая тахикардия, без патологических изменений ЭКГ
                                """)).buildGrayInAndHiddenBlock()
                           
                        Image(systemName: "arrow.down")
                           
                                MyViewBuilder(title: Text("**Неотложная помощь**:"), content: Text("""
                                1. **Магния сульфат 25% - 5-10 мл** в/м.
                                2. **Пропранолол 20-40 мг** внутрь.
                                3. **Карбамазепин 400 мг** внутрь.
                                """)).buildGrayInAndHiddenBlock()
                            
                        Image(systemName: "arrow.down")
                           
                                MyViewBuilder(title: Text("**Рекомендовать**:"), content: Text("""
                                - пероральную регидратацию;
                                - обратиться к наркологу.
                                """)).buildGrayInAndHiddenBlock()
                            
                    }
                    if isTextExpanded2{
                        Image(systemName: "arrow.down")
                           
                                MyViewBuilder(title: Text("**Клиническая картина**:"), content: Text("""
                                - значительное увеличение ЧСС,
                                - снижение тургора кожи,
                                - повышение температуры тела,
                                - повышенная потливость,
                                - нистагм,
                                - возможны судорожные припадки,
                                - дисметаболические изменения ЭКГ
                                """)).buildGrayInAndHiddenBlock()
                           
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack (spacing:1){
                                
                                MyViewBuilder(title: Text("75"), content: Text("""
                                **При развитии судорожного синдрома** см. алгоритм 29 «Судорожный синдром»
                                """)).buildGrayInHiddenText().padding(.top, 5)
                                NavigationLink (destination: Prikaz1030Alg29View()) {
                                    MyViewBuilder(title: Text("75"), content: Text("Алгоритм 29 «Судорожный синдром»")).buildNavigationText().padding(5)
                                }
                            }
                            
                        }
                        Image(systemName: "arrow.down")
                         
                                MyViewBuilder(title: Text("**Неотложная помощь**:"), content: Text("""
                                1. **Тиамин до 100 мг**, ввести в/венно.
                                2. **Диазепам 10-40 мг** в/м (0,5% р-р 2-8 мл) **по 2 мл через 30 мин до достижения седации** под контролем дыхания и АД.
                                3. **Магния сульфат 5-10 мл 25%** раствора в/в капельно **в 400 мл 5% раствора глюкозы**.
                                4. **Пероральная регидратация** при отсутствии рвоты, **при рвоте – глюкоза 200 мл 5% раствора** в/в, **растворы электролитов 250 мл** в/венно.
                                """)).buildGrayInAndHiddenBlock()
                            
                        Image(systemName: "arrow.down")
                           
                        
                        
                        MyViewBuilder(title: Text("75"), content: Text("""
                                **Доставка в стационар** по профилю основного заболевания
                                """)).buildGrayText()
                        
                    }
                    if isTextExpanded3{
                        Image(systemName: "arrow.down")
                           
                                MyViewBuilder(title: Text("**Клиническая картина**:"), content: Text("""
                                - угнетение сознания вплоть до делирия,
                                - многократная рвота,
                                - снижение на 20% АД от адаптационного,
                                - одышка,
                                - возможны судорожные припадки,
                                - дисметаболические изменения ЭКГ,
                                - нарушения ритма
                                """)).buildGrayInAndHiddenBlock()
                          
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack (spacing:1){
                                
                                MyViewBuilder(title: Text("75"), content: Text("""
                                **При развитии судорожного синдрома** см. алгоритм 29 «Судорожный синдром»
                                """)).buildGrayInHiddenText().padding(.top, 5)
                                NavigationLink (destination: Prikaz1030Alg29View()) {
                                    MyViewBuilder(title: Text("75"), content: Text("Алгоритм 29 «Судорожный синдром»")).buildNavigationText().padding(5)
                                }
                            }
                            
                        }
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack (spacing:1){
                                
                                MyViewBuilder(title: Text("**Неотложная помощь**:"), content: Text("""
                                1. **Тиамин до 100 мг**, ввести в/венно.
                                2. **Диазепам 10-40 мг** (0,5% раствор 2-8 мл) в **10 мл 40% раствора глюкозы в/в медленно до достижения седации** под контролем дыхания и АД.
                                3. **Магния сульфат 5-10 мл 25%** раствора в/в капельно в **400 мл 5% раствора глюкозы**.
                                4. **Глюкоза 400 мл 5% раствора** в/в **с 10 мл калия и магния аспартата**.
                                5. **Растворы электролитов 250 мл** в/венно.
                                
                                **При развитии алкогольного психоза** – алгоритм 62.
                                **При опасных для жизни нарушениях ритма** см. соответсвующие алгоритмы.
                                """)).buildGrayInAndHiddenBlockWithBlueButtons()
                                NavigationLink (destination: Prikaz1030Alg62View()) {
                                    MyViewBuilder(title: Text("75"), content: Text("Алгоритм 62 «Острые психотические расстройства при употреблении психоактивных веществ (ПАВ)»")).buildNavigationText().padding(5)
                                }
                            }
                            
                        }
                        Image(systemName: "arrow.down")
                           
                        
                        
                        MyViewBuilder(title: Text("75"), content: Text("""
                                **Доставка в стационар** по профилю основного заболевания
                                """)).buildGrayText()
                        
                    }
                    
                    
                    
                    Spacer(minLength: 30)
                    Divider()
                        .background(Color.divider)
                    Spacer(minLength: 15)
                            MyViewBuilder(title: Text("**Примечание**."), content: Text("""
                                    **При наличии малейших подозрений (данные анамнеза) на ЧМТ – доставка в стационар по профилю**.
                                    """)).buildGrayInAndHiddenBlock()
                      
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
                    Text("Алгоритм 75")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Алкогольный абстинентный синдром»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg75"), title: "Алгоритм 75")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}

#Preview {
    Prikaz1030Alg75View()
}
struct Prikaz1030Alg75ViewFavorites: View {
    @AppStorage("fontSize") var fontSize: Double = 14.0
    @EnvironmentObject var themeManager: ThemeManager
    @Environment(\.sizeCategory) var sizeCategory
    
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    
    @EnvironmentObject var favoritesManager: FavoritesManager
    @Environment(\.viewContext) var context: ViewContext
    @State private var showAlert = false
    @State private var alertMessage = ""
    
    private var allViewIdentifiers: String = "Алгоритм 75. «Алкогольный абстинентный синдром»"
    
    var body: some View {
        VStack {
            NavigationLink(destination: Prikaz1030Alg75View()) {
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
