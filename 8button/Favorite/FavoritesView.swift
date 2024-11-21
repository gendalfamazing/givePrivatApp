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
        case "Алгоритм 1. «Порядок оказания скорой (неотложной) медицинской помощи»":
            return AnyView(Prikaz1030Alg1ViewFavorites())
        case "Алгоритм 2. «Первичный осмотр пациента (ABCD)»":
            return AnyView(Prikaz1030Alg2ViewFavorites())
        case "Алгоритм 3. «Острая дыхательная недостаточность»":
            return AnyView(Prikaz1030Alg3ViewFavorites())
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

                VStack(alignment: .leading, spacing: 5) {
                    ForEach(favoritesManager.favorites) { item in
                        ViewFactory.view(for: item.viewIdentifier)
                            .frame(
                                minHeight: itemHeights[item.id],
                                maxHeight: item.isNavigationLink ? itemHeights[item.id] : .infinity
                            )
                            .frame(minWidth: 0, maxWidth: .infinity)
                            
                            .overlay(
                                HStack (spacing: 0){
                                    VStack (alignment: .leading){
                                        Text(item.name)
                                            .padding(.leading, 7)
                                            .font(.caption2)
                                            .opacity(0.65)
                                        
                                        Text(item.viewIdentifier)
                                            .padding(.leading, 7)
                                            .multilineTextAlignment(.leading)
                                            .fontWeight(.semibold)
                                            .font(.subheadline)
                                    }
                                    Spacer()
                                    Spacer()
                                    if item.isNavigationLink {
                                        Image(systemName: ("chevron.right"))
                                            .opacity(0.3)
                                            .padding(.trailing, 10)
                                            .padding(.leading, 10)
                                    } else {
                                        Image(systemName: ("chevron.down"))
                                            .rotationEffect(.degrees(item.isExpanded ? -180 : 0))
                                            .opacity(0.3)
                                            .padding(.trailing, 7)
                                    }
                                    
                                }
                                .padding(10.0)
                                .frame(
                                    maxHeight: itemHeights[item.id]
                                )
                                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                .background(item.isNavigationLink ? Color.blueButton : item.isExpanded ? Color.toggle : Color.blueButton)
                                .background(
                                    GeometryReader { geometry in
                                        Color.clear
                                            .onAppear {
                                                // Обновляем высоту только один раз после открытия представления
                                                DispatchQueue.main.async {
                                                    if itemHeights[item.id] == nil {
                                                        itemHeights[item.id] = geometry.size.height
                                                    }
                                                }
                                            }
                                    }
                                )
                                
                                .cornerRadius(10)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.shadowFavorites, lineWidth: 0.5)
                                )
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
            .padding(.horizontal, 10)
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

