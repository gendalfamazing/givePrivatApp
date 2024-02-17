//
//  ModelDannih.swift
//  8button
//
//  Created by Artur Vladymcev on 5.12.23.
//

import SwiftUI

struct Item: Identifiable {
    let id = UUID()
    let name: String
}

class DataModel: ObservableObject {
    @Published var items: [Item]

    init(items: [Item]) {
        self.items = items
    }
}

