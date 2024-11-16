// FavoritesView.swift

import SwiftUI
struct ViewFactory {
    static func view(for identifier: String) -> AnyView {
        switch identifier {
        case "Geneva":
            return AnyView(Geneva())
        case "PrikazyPostanovleniyaFavorites":
            return AnyView(PrikazyPostanovleniyaFavorites())
        case "CodesMkb10Favorites":
            return AnyView(CodesMkb10Favorites())
        case "Post1030Alg01":
            return AnyView(Prikaz1030Alg1View())
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
                
                VStack(alignment: .leading, spacing: 1) {
                    
                    ForEach(favoritesManager.favorites) { item in
                        ViewFactory.view(for: item.viewIdentifier)
                            .environment(\.viewContext, .favorites)
                            .contextMenu {
                                switch context {
                                case .favorites:
                                    // Опции контекстного меню для FavoritesView
                                    Button(action: {
                                        favoritesManager.removeItem(item)
                                    }) {
                                        Text("Удалить из избранного")
                                        Image(systemName: "star.slash")
                                    }
                                case .nonFavorites:
                                    // Опции контекстного меню для ScalesTables
                                    Button(action: {
                                        favoritesManager.removeItem(item)
                                    }) {
                                        Text("Удалить из избранного")
                                        Image(systemName: "star.slash")
                                    }
                                    
                                default:
                                    // Опции по умолчанию или пусто
                                    EmptyView()
                                }
                            }
                        
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
            }
        }
        .background(Color.back)
        
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


