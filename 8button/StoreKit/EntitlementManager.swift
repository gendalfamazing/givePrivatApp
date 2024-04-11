//
//  EntitlementManager.swift
//  8button
//
//  Created by Artur Vladymcev on 10.04.24.
//

import SwiftUI

class EntitlementManager: ObservableObject {
    static let userDefaults = UserDefaults(suiteName: "group.your.app")!

    @AppStorage("hasPro", store: userDefaults)
    var hasPro: Bool = false
}
