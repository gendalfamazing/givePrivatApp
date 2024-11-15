//
//  _buttonApp.swift
//  7button
//
//  Created by Artur Vladymcev on 21.11.23.
//
import SwiftUI

@main
struct _buttonApp: App {
    @StateObject var favoritesManager = FavoritesManager.shared
    @StateObject private var entitlementManager: EntitlementManager
    @StateObject private var purchaseManager: PurchaseManager
    @StateObject private var trialManager = TrialManager()
    @StateObject private var updateManager = UpdateManager()
    @StateObject var themeManager = ThemeManager()
    @AppStorage("fontSize") var fontSize: Double = 14.0
    
    init() {
        let entitlementManager = EntitlementManager()
        let purchaseManager = PurchaseManager(entitlementManager: entitlementManager)
        self._entitlementManager = StateObject(wrappedValue: entitlementManager)
        self._purchaseManager = StateObject(wrappedValue: purchaseManager)
    }
    
    var body: some Scene {
        WindowGroup {
            StoreKit8()
                .environmentObject(favoritesManager)
                .environmentObject(themeManager)
                .preferredColorScheme(colorScheme)
                .environment(\.sizeCategory, fontSizeCategory)
                .environmentObject(entitlementManager)
                .environmentObject(purchaseManager)
                .environmentObject(trialManager) // Добавляем trialManager в окружение
                .environmentObject(updateManager)
                .task {
                    await purchaseManager.updatePurchasedProducts()
                }
                .onAppear {
                    updateManager.checkForUpdate()
                }
                .sheet(isPresented: $updateManager.showWhatsNew) {
                    WhatsNewView()
                }
        }
        var colorScheme: ColorScheme? {
            switch themeManager.selectedTheme {
            case .light:
                return .light
            case .dark:
                return .dark
            case .system:
                return nil
            }
        }
        
        var fontSizeCategory: ContentSizeCategory {
            switch themeManager.fontSize {
            case ..<14: return .small
            case 14..<16: return .medium
            case 16..<18: return .large
            case 18..<20: return .extraLarge
            case 20..<22: return .extraExtraLarge
            default: return .extraExtraExtraLarge
            }
        }
    }
}

import Foundation
import SwiftUI

@MainActor
class UpdateManager: ObservableObject {
    @AppStorage("lastKnownVersion") private var lastKnownVersion: String = ""
    @Published var showWhatsNew: Bool = false
    
    func checkForUpdate() {
        let currentVersion = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? ""
        
        if lastKnownVersion != currentVersion {
            lastKnownVersion = currentVersion
            showWhatsNew = true
        }
    }
}
