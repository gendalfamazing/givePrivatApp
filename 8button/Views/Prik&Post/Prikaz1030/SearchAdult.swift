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
    @Environment(\.sizeCategory) var sizeCategory

    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    @ObservedObject var viewModel: SearchableViewModelAdult
    @EnvironmentObject var favoritesManager: FavoritesManager
    @Environment(\.viewContext) var context: ViewContext
    
    init(viewModel: SearchableViewModelAdult? = nil) {
        if let viewModel = viewModel {
            _viewModel = ObservedObject(wrappedValue: viewModel)
        } else {
            _viewModel = ObservedObject(wrappedValue: SearchableViewModelAdult())
        }
    }

    var body: some View {
        ZStack {
            ScrollView {
                if viewModel.isSearching && viewModel.filteredAdult.isEmpty {
                    Text("Совпадений не найдено")
                        .foregroundColor(.secondary)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.back)
                } else {
                    VStack(spacing: 5) {
                        ForEach(viewModel.isSearching ? viewModel.filteredAdult : viewModel.allAdult) { adult in
                            adultRow(adult: adult)
                                .padding(.horizontal, 10)
                                .environmentObject(favoritesManager)
                        }
                    }
                    .padding(.bottom, 55)
                    .background(Color.back)
                }
            }
            .background(Color.back)
            .searchable(text: $viewModel.searchText, placement: .automatic, prompt: Text("Поиск..."))
            .navigationBarTitle("", displayMode: .inline)
            .toolbar {
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
        }
    }

    private func adultRow(adult: Adult) -> some View {
        VStack(spacing: 5) {
            HStack {
                NavigationLink(destination: adult.view) {
                    HStack {
                        ZStack {
                            Rectangle()
                                .frame(width: 40, height: 40)
                                .foregroundColor(Color.titleNumber)
                                .cornerRadius(10)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
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
                    }
                }

                // Кнопка управления избранным
                Button(action: {
                    if viewModel.isInFavorites(adult: adult) {
                        viewModel.removeFromFavorites(adult: adult)
                    } else {
                        viewModel.addToFavorites(adult: adult)
                    }
                }) {
                    Image(systemName: viewModel.isInFavorites(adult: adult) ? "star.fill" : "star")
                        .foregroundColor(viewModel.isInFavorites(adult: adult) ? .yellow : .gray)
                }
            }
            .padding(5.0)
            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            .fixedSize(horizontal: false, vertical: true)
            .frame(minHeight: 50)
            .modifier(ThemeTitleBlueColorModifier())
            .cornerRadius(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
            )
            .background(Color.back)
        }
        .background(Color.back)
        
    }
}





#Preview {
    NavigationStack {
        SearchAdult(viewModel: SearchableViewModelAdult())
            .background(Color.back)
    }
}

