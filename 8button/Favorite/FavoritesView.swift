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
        case "ScalesTablesFavorites":
            return AnyView(ScalesTablesFavorites())
        case "StudMaterialsFavorites":
            return AnyView(StudMaterialsFavorites())
        case "InfusionRateCalculatorViewFavorites":
            return AnyView(InfusionRateCalculatorViewFavorites())
        case "AkusherskoePosobieFavorites":
            return AnyView(AkusherskoePosobieFavorites())
        case "AtlasECGFavorites":
            return AnyView(AtlasECGFavorites())
        case "FastChildDosesFavorites":
            return AnyView(FastChildDosesFavorites())
        case "Postanovlenie118ViewFavorites":
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
                                                    itemHeights[item.id] = geometry.size.height - 8
                                                }
                                            }
                                        }
                                }
                            )
                            .overlay(
                                HStack (spacing: 0){
                                    VStack {
                                        Text(item.viewIdentifier)
                                    }
                                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                    .frame(
                                        height: itemHeights[item.id]
                                    )
                                    .background(Color.brown)
                                    
                                    VStack {
                                        
                                    }
                                    .frame(
                                        height: itemHeights[item.id]
                                    )
                                    .frame(width: 35)
                                    .background(Color.red)
                                    
                                    
                                }
                                .frame(
                                    height: itemHeights[item.id]
                                )
                                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                .cornerRadius(10)
                                .padding(4)
                                .allowsHitTesting(true)
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
            }
        }
        .background(Color.back)
        .onAppear {
            // Очищаем словарь высот, чтобы пересчитать при открытии
            itemHeights.removeAll()
        }
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
