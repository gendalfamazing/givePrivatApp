//
//  FavoriteItem.swift
//  8button
//
//  Created by Artur Vladymcev on 14.11.24.
//

import Foundation
import SwiftUI


struct FavoriteItem: Identifiable, Codable, Equatable, Hashable {
    let id: UUID
    var name: String
    var viewIdentifier: String
    var isExpanded: Bool = false
    var isNavigationLink: Bool = false

    init(id: UUID = UUID(), name: String, viewIdentifier: String, isExpanded: Bool, isNavigationLink: Bool) {
        self.id = id
        self.name = name
        self.viewIdentifier = viewIdentifier
        self.isExpanded = isExpanded
        self.isNavigationLink = isNavigationLink
    }
}

extension FavoriteItem {
    mutating func toggleExpanded() {
        self.isExpanded.toggle()
    }
}
