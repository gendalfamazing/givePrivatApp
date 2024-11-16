//
//  FavoritesSection.swift
//  8button
//
//  Created by Artur Vladymcev on 14.11.24.
//

import Foundation

struct FavoritesSection: Identifiable, Codable, Equatable {
    let id: UUID
    var name: String
    var items: [FavoriteItem]

    init(id: UUID = UUID(), name: String, items: [FavoriteItem] = []) {
        self.id = id
        self.name = name
        self.items = items
    }
}
