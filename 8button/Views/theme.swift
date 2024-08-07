import SwiftUI

enum Theme: String, CaseIterable {
    case light = "Светлая тема"
    case dark = "Темная тема"
    case system = "Системная тема"
}

struct ContentView: View {
    @AppStorage("selectedTheme") var selectedTheme: String = Theme.system.rawValue

    var body: some View {
        HomeView()
            .preferredColorScheme(colorScheme)
    }

    var colorScheme: ColorScheme? {
        switch Theme(rawValue: selectedTheme) ?? .system {
        case .light:
            return .light
        case .dark:
            return .dark
        case .system:
            return nil
        }
    }
}
