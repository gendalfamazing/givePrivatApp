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

    init(id: UUID = UUID(), name: String, viewIdentifier: String) {
        self.id = id
        self.name = name
        self.viewIdentifier = viewIdentifier
    }
}
