import SwiftUI
import Foundation
import UIKit

struct AppTabBarView: View {
    @AppStorage("fontSize") var fontSize: Double = 14.0
    @Environment(\.sizeCategory) var sizeCategory
    @State private var tabSelection: TabBarItem = .home

    // Навигационные пути для каждой вкладки
    @State private var homePath = NavigationPath()
    @State private var adultPath = NavigationPath()
    @State private var childPath = NavigationPath()
    @State private var organizerPath = NavigationPath()
    @State private var searchPath = NavigationPath()

    // Идентификаторы сброса навигации
    @State private var homeResetID = UUID()
    @State private var adultResetID = UUID()
    @State private var childResetID = UUID()
    @State private var organizerResetID = UUID()
    @State private var searchResetID = UUID()

    var body: some View {
        CustomTabBarContainerView(
            selection: $tabSelection,
            homePath: $homePath,
            adultPath: $adultPath,
            childPath: $childPath,
            organizerPath: $organizerPath,
            searchPath: $searchPath,
            homeResetID: $homeResetID,
            adultResetID: $adultResetID,
            childResetID: $childResetID,
            organizerResetID: $organizerResetID,
            searchResetID: $searchResetID
        )
        .ignoresSafeArea(.keyboard)
    }

    var fontSizeCategory: ContentSizeCategory {
        switch fontSize {
        case ..<14: return .small
        case 14..<16: return .medium
        case 16..<18: return .large
        case 18..<20: return .extraLarge
        case 20..<22: return .extraExtraLarge
        default: return .extraExtraExtraLarge
        }
    }
}

#Preview {
    AppTabBarView()
}
