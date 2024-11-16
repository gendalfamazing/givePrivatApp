// FavoritesManager.swift

import Foundation
import Combine

class FavoritesManager: ObservableObject {
    @Published var favorites: [FavoriteItem] = []

    static let shared = FavoritesManager()

    private let userDefaultsKey = "favorites_items"

    private init() {
        loadFavorites()
    }

    func loadFavorites() {
        if let data = UserDefaults.standard.data(forKey: userDefaultsKey) {
            let decoder = JSONDecoder()
            if let decoded = try? decoder.decode([FavoriteItem].self, from: data) {
                self.favorites = decoded
                return
            }
        }
        self.favorites = []
    }

    func saveFavorites() {
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(self.favorites) {
            UserDefaults.standard.set(encoded, forKey: userDefaultsKey)
        }
    }

    func addItem(_ item: FavoriteItem) -> Bool {
        if favorites.contains(where: { $0.viewIdentifier == item.viewIdentifier }) {
            return false // Элемент уже существует
        } else {
            favorites.append(item)
            saveFavorites()
            return true
        }
    }

    func removeItem(_ item: FavoriteItem) {
        if let index = favorites.firstIndex(of: item) {
            favorites.remove(at: index)
            saveFavorites()
        }
    }
}
