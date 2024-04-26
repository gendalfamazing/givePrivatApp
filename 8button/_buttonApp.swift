//
//  _buttonApp.swift
//  7button
//
//  Created by Artur Vladymcev on 21.11.23.
//


import SwiftUI

@main
struct _buttonApp: App {
    @StateObject
    private var entitlementManager: EntitlementManager

    @StateObject
    private var purchaseManager: PurchaseManager

    init() {
        let entitlementManager = EntitlementManager()
        let purchaseManager = PurchaseManager(entitlementManager: entitlementManager)
        self._entitlementManager = StateObject(wrappedValue: entitlementManager)
        self._purchaseManager = StateObject(wrappedValue: purchaseManager)
    }

    var body: some Scene {
        WindowGroup {
            StoreKit8()
                .environmentObject(entitlementManager)
                .environmentObject(purchaseManager)
                .task {
                    await purchaseManager.updatePurchasedProducts()
                }
        }
    }
}
