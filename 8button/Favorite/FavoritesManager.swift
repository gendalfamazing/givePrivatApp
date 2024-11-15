//
//  FavoritesManager.swift
//  8button
//
//  Created by Artur Vladymcev on 14.11.24.
//

// FavoritesManager.swift

import Foundation
import Combine

class FavoritesManager: ObservableObject {
    @Published var sections: [FavoritesSection] = []
        @Published var favoriteTextBlocks: [FavoriteTextBlock] = []

        static let shared = FavoritesManager()

        private let userDefaultsKey = "favorites_data"
        private let textBlocksKey = "favorite_text_blocks"

        private init() {
            loadFavorites()
        }

    func loadFavorites() {
            let decoder = JSONDecoder()
            if let data = UserDefaults.standard.data(forKey: userDefaultsKey),
               let decoded = try? decoder.decode([FavoritesSection].self, from: data) {
                self.sections = decoded
            }

            if let data = UserDefaults.standard.data(forKey: textBlocksKey),
               let decoded = try? decoder.decode([FavoriteTextBlock].self, from: data) {
                self.favoriteTextBlocks = decoded
            }
        }

        func saveFavorites() {
            let encoder = JSONEncoder()
            if let encoded = try? encoder.encode(self.sections) {
                UserDefaults.standard.set(encoded, forKey: userDefaultsKey)
            }

            if let encoded = try? encoder.encode(self.favoriteTextBlocks) {
                UserDefaults.standard.set(encoded, forKey: textBlocksKey)
            }
        }

        func addTextBlock(_ textBlock: FavoriteTextBlock) -> Bool {
            if favoriteTextBlocks.contains(where: { $0.id == textBlock.id }) {
                return false // Текстовый блок уже существует в избранном
            } else {
                favoriteTextBlocks.append(textBlock)
                saveFavorites()
                return true
            }
        }

        func removeTextBlock(_ textBlock: FavoriteTextBlock) {
            if let index = favoriteTextBlocks.firstIndex(of: textBlock) {
                favoriteTextBlocks.remove(at: index)
                saveFavorites()
            }
        }

    func addItem(_ item: FavoriteItem, toSection sectionName: String) -> Bool {
        // Проверяем, существует ли раздел
        if let index = sections.firstIndex(where: { $0.name == sectionName }) {
            // Проверяем, есть ли уже такой элемент
            if sections[index].items.contains(where: { $0.destinationIdentifier == item.destinationIdentifier }) {
                return false // Элемент уже существует в этом разделе
            } else {
                sections[index].items.append(item)
                sections[index].items.sort { $0.name < $1.name }
                saveFavorites()
                return true
            }
        } else {
            // Создаем новый раздел
            let newSection = FavoritesSection(name: sectionName, items: [item])
            sections.append(newSection)
            sections.sort { $0.name < $1.name }
            saveFavorites()
            return true
        }
    }

    func removeItem(_ item: FavoriteItem, fromSection section: FavoritesSection) {
        if let sectionIndex = sections.firstIndex(where: { $0.id == section.id }) {
            if let itemIndex = sections[sectionIndex].items.firstIndex(of: item) {
                sections[sectionIndex].items.remove(at: itemIndex)
                if sections[sectionIndex].items.isEmpty {
                    sections.remove(at: sectionIndex)
                }
                saveFavorites()
            }
        }
    }

    func removeSection(_ section: FavoritesSection) {
        if let index = sections.firstIndex(where: { $0.id == section.id }) {
            sections.remove(at: index)
            saveFavorites()
        }
    }
}
