//
//  FavoriteItem.swift
//  8button
//
//  Created by Artur Vladymcev on 14.11.24.
//

import Foundation
import SwiftUI


struct FavoriteItem: Identifiable, Codable, Equatable {
    let id: UUID
    var name: String
    var viewIdentifier: String
    let isExpandable: Bool // Новое свойство

    init(id: UUID = UUID(), name: String, viewIdentifier: String, isExpandable: Bool) {
        self.id = id
        self.name = name
        self.viewIdentifier = viewIdentifier
        self.isExpandable = isExpandable
    }
}
