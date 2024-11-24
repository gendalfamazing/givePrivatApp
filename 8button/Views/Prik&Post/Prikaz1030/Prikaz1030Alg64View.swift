//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg64View: View {
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
                    
                            MyViewBuilder(title: Text("**Клинические признаки**:"), content: Text("""
                            - слабость и головокружение;
                            - бледность кожных покровов и конъюнктивы глаз;
                            - частый, мягкий пульс, слабого наполнения, снижение АД.
                            
                            **Объективные признаки**:
                            - **рвота кровью**;
                            - рвота **«кофейной гущей»**;
                            - **мелена**;
                            - **сгустки крови или ярко-красная кровь в кале**.
                            """)).buildGrayInAndHiddenBlock()
                         
                    Image(systemName: "arrow.down")
                      
                            MyViewBuilder(title: Text("**Наличие в анамнезе следующих заболеваний**:"), content: Text("""
                            - **язвенная болезнь желудка** и двенадцатиперстной кишки;
                            - **острые язвы и эрозии ЖКТ**;
                            - **синдром Маллори — Вейсса**;
                            - **варикозно расширенные вены пищевода**;
                            - **перианальные заболевания** (геморрой, анальные трещины, выпадение ануса), **колоректальные полипы, рак, язвенный колит** или неустановленный источник.
                            """)).buildGrayInAndHiddenBlock()
                        
                    Image(systemName: "arrow.down")
                      
                            MyViewBuilder(title: Text("**Диагностические мероприятия**:"), content: Text("""
                            - **пальцевое исследование прямой кишки при отсутствии явных объективных признаков кровотечения**;
                            - ЭКГ.
                            """)).buildGrayInAndHiddenBlock()
                         
                    Image(systemName: "arrow.down")
                      
                            MyViewBuilder(title: Text("**Неотложная помощь**:"), content: Text("""
                            1. **В/в инфузия**:
                            - **декстрана/натрия хлорида**, или
                            - **10% раствора гидросиэтилкрахмала**, или
                            - **раствора электролитов** вначале в/в струйно, затем (**при САД больше 80 мм.рт.ст.**) – капельно.
                            2. **При критической гиповолемии при САД менее 80 мм.рт.ст. дополнительно**:
                            - **1 мл 1% раствора фенилэфрина в 800 мл 5% глюкозы** в/в капельно;
                            - в/в **этамзилат натрия 2-4 мл 12,5%** раствора;
                            - **оксигенотерапия**;
                            - **«холод» на живот**.
                            3. При пищеводном кровотечении **ввести зонд Блекмора**.
                            """)).buildGrayInAndHiddenBlock()
                       
                    Image(systemName: "arrow.down")
                    
                            MyViewBuilder(title: Text("64"), content: Text("""
                            **Строгий носилочный режим**.
                            **При коллапсе** – транспортировка в положении **Тренделенбурга**.
                            **Запрещается прием пищи и воды**.
                            **Доставка в стационар** по профилю заболевания.
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
                    Text("Алгоритм 64")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Острые желудочно-кишечные кровотечения»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg64"), title: "Алгоритм 64")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}

#Preview {
    Prikaz1030Alg64View()
}
struct Prikaz1030Alg64ViewFavorites: View {
    @AppStorage("fontSize") var fontSize: Double = 14.0
    @EnvironmentObject var themeManager: ThemeManager
    @Environment(\.sizeCategory) var sizeCategory
    
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    
    @EnvironmentObject var favoritesManager: FavoritesManager
    @Environment(\.viewContext) var context: ViewContext
    @State private var showAlert = false
    @State private var alertMessage = ""
    
    private var allViewIdentifiers: String = "Алгоритм 64. «Острые желудочно-кишечные кровотечения»"
    
    var body: some View {
        VStack {
            NavigationLink(destination: Prikaz1030Alg64View()) {
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
