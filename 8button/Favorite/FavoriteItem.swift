//
//  FavoriteItem.swift
//  8button
//
//  Created by Artur Vladymcev on 14.11.24.
//

import Foundation
import SwiftUI

import Foundation

struct FavoriteItem: Identifiable, Codable, Equatable {
    let id: UUID
    var name: String
    var destinationIdentifier: String // Идентификатор вью для навигации

    init(id: UUID = UUID(), name: String, destinationIdentifier: String) {
        self.id = id
        self.name = name
        self.destinationIdentifier = destinationIdentifier
    }
}

struct FavoriteTextBlock: Identifiable, Codable, Equatable {
    let id: UUID
    var title: String
    var contentKey: String // Ключ для локализованного контента

    init(id: UUID = UUID(), title: String, contentKey: String) {
        self.id = id
        self.title = title
        self.contentKey = contentKey
    }
}

