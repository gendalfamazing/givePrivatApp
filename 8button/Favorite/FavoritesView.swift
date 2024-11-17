// FavoritesView.swift

import SwiftUI
struct ViewFactory {
    static func view(for identifier: String) -> AnyView {
        switch identifier {
        case "GENEVA":
            return AnyView(Geneva())
                
        case "Приказы и постановления":
            return AnyView(PrikazyPostanovleniyaFavorites())
        case "МКБ-10":
            return AnyView(CodesMkb10Favorites())
        case "Шкалы и таблицы":
            return AnyView(ScalesTablesFavorites())
        case "Учебные материалы":
            return AnyView(StudMaterialsFavorites())
        case "Калькулятор Допамина":
            return AnyView(InfusionRateCalculatorViewFavorites())
        case "Акушерское пособие":
            return AnyView(AkusherskoePosobieFavorites())
        case "Атлас ЭКГ":
            return AnyView(AtlasECGFavorites())
        case "Поиск детских дозировок":
            return AnyView(FastChildDosesFavorites())
        case "Постановление №118 (детские протоколы)":
            return AnyView(Postanovlenie118ViewFavorites())
        case "Post1030Alg02":
            return AnyView(Prikaz1030Alg2View())
        case "Post1030Alg03":
            return AnyView(Prikaz1030Alg3View())
        // Добавьте остальные представления
        default:
            return AnyView(Text("Неизвестное представление"))
        }
    }
}


struct FavoritesView: View {
    @EnvironmentObject var favoritesManager: FavoritesManager
    @Environment(\.viewContext) var context: ViewContext
    @State private var itemHeights: [UUID: CGFloat] = [:] // Словарь для хранения высот элементов

    var body: some View {
        ScrollView {
            VStack(spacing: 1) {
                if favoritesManager.favorites.isEmpty {
                    Text("Нет элементов в избранном")
                        .foregroundColor(.gray)
                        .bold()
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.back)
                }

                VStack(alignment: .leading, spacing: 0) {
                    ForEach(favoritesManager.favorites) { item in
                        ViewFactory.view(for: item.viewIdentifier)
                            .background(
                                GeometryReader { geometry in
                                    Color.clear
                                        .onAppear {
                                            // Обновляем высоту только один раз после открытия представления
                                            DispatchQueue.main.async {
                                                if itemHeights[item.id] == nil {
                                                    itemHeights[item.id] = geometry.size.height - 5.5
                                                }
                                            }
                                        }
                                }
                            )
                            .overlay(
                                HStack (spacing: 0){
                                    VStack (alignment: .leading){
                                        Text(item.name)
                                            .padding(.leading, 7)
                                            .font(.caption2)
                                            .opacity(0.65)
                                            
                                        Text(item.viewIdentifier)
                                            .padding(.leading, 7)
                                            .fontWeight(.semibold)
                                            .font(.subheadline)
                                    }
                                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                    .frame(
                                        height: itemHeights[item.id]
                                    )
                                    .background(item.isExpanded ? Color.toggle : Color.blueButton)
                                    
                                    VStack {
                                        
                                    }
                                    .frame(
                                        height: itemHeights[item.id]
                                    )
                                    .frame(width: 35)
                                    .background(Color.clear)
                                    
                                    
                                }
                                .frame(
                                    height: itemHeights[item.id]
                                )
                                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                .cornerRadius(10)
                                .padding(2.5)
                                .allowsHitTesting(false)
                                .contextMenu {
                                    Button(action: {
                                        favoritesManager.removeItem(item)
                                    }) {
                                        Text("Удалить из избранного")
                                        Image(systemName: "star.slash")
                                    }
                                }
                                ,
                                alignment: .top
                            )
                            .environment(\.viewContext, .favorites)
//                            .contextMenu {
//                                switch context {
//                                case .favorites:
//                                    Button(action: {
//                                        favoritesManager.removeItem(item)
//                                    }) {
//                                        Text("Удалить из избранного")
//                                        Image(systemName: "star.slash")
//                                    }
//                                case .nonFavorites:
//                                    Button(action: {
//                                        favoritesManager.removeItem(item)
//                                    }) {
//                                        Text("Удалить из избранного")
//                                        Image(systemName: "star.slash")
//                                    }
//                                default:
//                                    EmptyView()
//                                }
//                            }
                    }
                }
            }
            .padding(.horizontal, 8)
            .padding(.bottom, 55)
            .navigationBarTitle("", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    VStack {
                        Text("Избранное")
                            .font(.headline)
                            .foregroundColor(Color.toolBar)
                            .bold()
                        Text("«Часто используемые элементы»")
                            .font(.caption2)
                            .foregroundColor(Color.toolBar)
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                                    Button(action: {
                                        removeAllFavorites() // Удаление всех элементов
                                    }) {
                                        Image(systemName: "trash")
                                            .foregroundColor(.red)
                                    }
                                }
            }
        }
        .background(Color.back)
        .onAppear {
            // Очищаем словарь высот, чтобы пересчитать при открытии
            itemHeights.removeAll()
        }
    }
    private func removeAllFavorites() {
            favoritesManager.favorites.removeAll()
        }
}
            
enum ViewContext {
    case favorites
    case nonFavorites
    case other
}
    
struct ViewContextKey: EnvironmentKey {
    static let defaultValue: ViewContext = .other
}

extension EnvironmentValues {
    var viewContext: ViewContext {
        get { self[ViewContextKey.self] }
        set { self[ViewContextKey.self] = newValue }
    }
}


#Preview {
    FavoritesView()
}

class SharedState: ObservableObject {
    @Published var isTextExpanded3 = false
}
