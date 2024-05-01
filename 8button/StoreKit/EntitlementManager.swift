//
//  EntitlementManager.swift
//  8button
//
//  Created by Artur Vladymcev on 10.04.24.
//

import SwiftUI
import StoreKit

class EntitlementManager: NSObject, ObservableObject, SKPaymentTransactionObserver {
    static let userDefaults = UserDefaults(suiteName: "group.your.app")!

    @AppStorage("hasPro", store: userDefaults)
    var hasPro: Bool = false

    override init() {
        super.init()
        SKPaymentQueue.default().add(self)
    }

    deinit {
        SKPaymentQueue.default().remove(self)
    }

    func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]) {
        for transaction in transactions {
            switch transaction.transactionState {
            case .purchased, .restored:
                hasPro = true
            case .failed, .purchasing, .deferred:
                hasPro = false
            default:
                hasPro = false
            }
            objectWillChange.send() // Отправить уведомление об изменении
        }
    }
}
