//
//  SearchAdult.swift
//  8button
//
//  Created by Artur Vladymcev on 15.01.24.
//

import SwiftUI
import Combine

struct Adult: Identifiable {
    let id: String
    let title: String
    let content: String
    let view: AnyView
    let viewIdentifier: String
}

@MainActor
final class AdultManager {
    func getAllAdult() async throws -> [Adult] {
        [
            Adult(id: "1",title: "01", content: "«Порядок оказания скорой (неотложной) медицинской помощи»", view: AnyView(Prikaz1030Alg1View()), viewIdentifier: "Алгоритм 1. «Порядок оказания скорой (неотложной) медицинской помощи»"),
            Adult(id: "2",title: "02", content: "«Первичный осмотр пациента (ABCD)»", view: AnyView(Prikaz1030Alg2View()), viewIdentifier: "Алгоритм 2. «Первичный осмотр пациента (ABCD)»"),
            Adult(id: "3",title: "03", content: "«Острая дыхательная недостаточность»", view: AnyView(Prikaz1030Alg3View()), viewIdentifier: "Алгоритм 3. «Острая дыхательная недостаточность»")
            
        ]
    }
}

@MainActor
final class SearchableViewModelAdult: ObservableObject {
    @Published private(set) var allAdult: [Adult] = []
    @Published private(set) var filteredAdult: [Adult] = []
    @Published var searchText: String = ""
    let manager = AdultManager()
    private var cancellables = Set<AnyCancellable>()
    
    @EnvironmentObject var favoritesManager: FavoritesManager
    @Environment(\.viewContext) var context: ViewContext
    
    var isSearching: Bool {
        !searchText.isEmpty
    }

    init() {
        addSubscribers()
        Task {
            await loadDataIfNeeded()
        }
    }

    private func addSubscribers() {
        $searchText
            .sink { [weak self] searchText in
                self?.filterAdult(seachText: searchText)
            }
            .store(in: &cancellables)
    }

    private func filterAdult(seachText: String) {
        guard !seachText.isEmpty else {
            filteredAdult = []
            return
        }

        let search = searchText.lowercased()
        filteredAdult = allAdult.filter { adult in
            adult.content.lowercased().contains(search)
        }
    }

    @MainActor
    func loadAdult() async {
        do {
            allAdult = try await manager.getAllAdult()
        } catch {
            print(error)
        }
    }

    @MainActor
    private func loadDataIfNeeded() async {
        if allAdult.isEmpty {
            await loadAdult()
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
    func addToFavorites(adult: Adult) {
        let newItem = FavoriteItem(name: "Приказ №1030", viewIdentifier: adult.viewIdentifier, isExpanded: false, isNavigationLink: true)
        _ = FavoritesManager.shared.addItem(newItem) // Добавляем элемент в избранное
    }

    func removeFromFavorites(adult: Adult) {
        if let item = FavoritesManager.shared.favorites.first(where: { $0.viewIdentifier == adult.viewIdentifier }) {
            FavoritesManager.shared.removeItem(item) // Удаляем элемент из избранного
        }
    }
    func isInFavorites(adult: Adult) -> Bool {
        return FavoritesManager.shared.favorites.contains { $0.viewIdentifier == adult.viewIdentifier }
    }
    
}

struct SearchAdult: View {
    @AppStorage("fontSize") var fontSize: Double = 14.0
    @EnvironmentObject var themeManager: ThemeManager
    @EnvironmentObject var favoritesManager: FavoritesManager
    @Environment(\.viewContext) var context: ViewContext
    @ObservedObject var viewModel: SearchableViewModelAdult

    init(viewModel: SearchableViewModelAdult? = nil) {
        _viewModel = ObservedObject(wrappedValue: viewModel ?? SearchableViewModelAdult())
    }

    var body: some View {
        ZStack {
            ScrollView {
                if viewModel.isSearching && viewModel.filteredAdult.isEmpty {
                    noResultsView
                } else {
                    adultListView
                }
            }
            .background(Color.back)
            .searchable(text: $viewModel.searchText, placement: .automatic, prompt: Text("Поиск..."))
            .navigationBarTitle("", displayMode: .inline)
            .toolbar { toolbarContent }
        }
    }

    /// Отображение, если совпадений нет
    private var noResultsView: some View {
        Text("Совпадений не найдено")
            .foregroundColor(.secondary)
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.back)
    }

    /// Список элементов
    private var adultListView: some View {
        VStack(spacing: 1) {
            ForEach(viewModel.isSearching ? viewModel.filteredAdult : viewModel.allAdult) { adult in
                adultRow(for: adult)
                    .padding(.horizontal, 8)
            }
        }
        .padding(.bottom, 55)
        .background(Color.back)
    }

    /// Верхняя панель инструментов
    private var toolbarContent: some ToolbarContent {
        ToolbarItem(placement: .principal) {
            VStack {
                Text("Приказ МЗ РБ № 1030")
                    .font(.headline)
                    .foregroundStyle(Color.toolBar)
                    .bold()
                Text("«Взрослые протоколы»")
                    .font(.caption2)
                    .foregroundStyle(Color.toolBar)
            }
        }
    }

    /// Отображение элемента с контекстным меню
    private func adultRow(for adult: Adult) -> some View {
        VStack(spacing: 1) {
            HStack {
                NavigationLink(destination: adult.view) {
                    rowContent(for: adult)
                }
            }
            .padding(5.0)
            .modifier(ThemeTitleBlueColorModifier())
            .cornerRadius(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.shadowFavorites, lineWidth: 1)
            )
            .background(Color.back)
            .cornerRadius(10)
            .padding(2)
            .contextMenu {
                contextMenuContent(for: adult)
            }
        }
        .background(Color.back)
    }

    /// Содержимое строки
    private func rowContent(for adult: Adult) -> some View {
        HStack {
            ZStack {
                Rectangle()
                    .frame(width: 40, height: 40)
                    .foregroundColor(Color.titleNumber)
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.shadowFavorites, lineWidth: 0.5)
                    )
                Text(adult.title)
                    .font(.headline)
                    .foregroundColor(Color.titleNumberForeground)
                    .bold()
                    .lineLimit(1)
            }
            Text(adult.content)
                .multilineTextAlignment(.leading)
                .padding(.horizontal, 3.0)
                .font(.footnote)
                .fontWeight(.semibold)
            Spacer()
            Image(systemName: ("chevron.right"))
                .opacity(0.3)
                .padding(.trailing, 15)
                .padding(.leading, 10)
        }
        .overlay(
            HStack {
                Spacer()
                VStack {
                    if viewModel.shouldShowOverlay {
                        Image(systemName: "star.fill")
                            .resizable()
                            .frame(width: 14, height: 14)
                            .foregroundColor(viewModel.isInFavorites(adult: adult) ? .favoriteStar : Color.clear)
                            .rotationEffect(.degrees(viewModel.isInFavorites(adult: adult) ? -360 : 0))
                            .animation(.snappy, value: viewModel.isInFavorites(adult: adult))
                            .padding(.vertical, -2)
                            .padding(.horizontal, -2)
                    }
                    Spacer()
                }
            }
        )
    }

    /// Кнопка управления избранным
    

    /// Контекстное меню
    private func contextMenuContent(for adult: Adult) -> some View {
        Group {
            if context == .favorites || viewModel.isInFavorites(adult: adult) {
                Button(action: {
                    viewModel.removeFromFavorites(adult: adult)
                }) {
                    Text("Удалить из избранного")
                    Image(systemName: "star.slash")
                }
            } else {
                Button(action: {
                    viewModel.addToFavorites(adult: adult)
                }) {
                    Text("Добавить в избранное")
                    Image(systemName: "star.fill")
                }
            }
        }
    }
}





#Preview {
    NavigationStack {
        SearchAdult(viewModel: SearchableViewModelAdult())
            .background(Color.back)
    }
}

