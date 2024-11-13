import SwiftUI

enum Theme: String, CaseIterable {
    case light = "Светлая тема"
    case dark = "Темная тема"
    case system = "Системная тема"
}

class ThemeManager: ObservableObject {
    @Published var selectedTheme: Theme {
        didSet {
            // Сохранение выбранной темы в UserDefaults
            UserDefaults.standard.set(selectedTheme.rawValue, forKey: "selectedTheme")
        }
    }
    
    @Published var fontSize: Double {
        didSet {
            UserDefaults.standard.set(fontSize, forKey: "fontSize")
        }
    }

    init() {
        // Загрузка выбранной темы из UserDefaults
        if let savedTheme = UserDefaults.standard.string(forKey: "selectedTheme"),
           let theme = Theme(rawValue: savedTheme) {
            self.selectedTheme = theme
        } else {
            self.selectedTheme = .system
        }
        
        // Загрузка размера шрифта из UserDefaults
        self.fontSize = UserDefaults.standard.double(forKey: "fontSize")
        if self.fontSize == 0 {
            self.fontSize = 14.0 // Значение по умолчанию
        }
    }
}

struct HomeViewGear: View {
    @EnvironmentObject var themeManager: ThemeManager
    @Environment(\.sizeCategory) var sizeCategory
    var body: some View {
        HomeView()
            .preferredColorScheme(colorScheme)
            .environment(\.sizeCategory, fontSizeCategory)
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
struct SearchAdultGear: View {
    @AppStorage("selectedTheme") var selectedTheme: String = Theme.system.rawValue
    @AppStorage("fontSize") var fontSize: Double = 14.0
    @StateObject private var viewModel = SearchableViewModelAdult()
    @State private var isDataLoaded = false
    var body: some View {
        SearchAdult(viewModel: SearchableViewModelAdult())
            .onAppear {
                Task {
                    await viewModel.loadAdult()
                    isDataLoaded = true
                }
            }
            .preferredColorScheme(colorScheme)
            .environment(\.sizeCategory, fontSizeCategory)
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
    var fontSizeCategory: ContentSizeCategory {
            switch fontSize {
            case 12..<14: return .small
            case 14..<16: return .medium
            case 16..<18: return .large
            case 18..<20: return .extraLarge
            case 20..<22: return .extraExtraLarge
            default: return .extraExtraExtraLarge
            }
        }
}
struct Postanovlenie118ViewGear: View {
    @AppStorage("selectedTheme") var selectedTheme: String = Theme.system.rawValue
    @AppStorage("fontSize") var fontSize: Double = 14.0
    var body: some View {
        Postanovlenie118View()
            .preferredColorScheme(colorScheme)
            .environment(\.sizeCategory, fontSizeCategory)
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
struct AboutAppGear: View {
    @AppStorage("selectedTheme") var selectedTheme: String = Theme.system.rawValue
    @AppStorage("fontSize") var fontSize: Double = 14.0
    var body: some View {
        AboutApp()
            .preferredColorScheme(colorScheme)
            .environment(\.sizeCategory, fontSizeCategory)
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
struct CalendarViewGear: View {
    @AppStorage("selectedTheme") var selectedTheme: String = Theme.system.rawValue
    @AppStorage("fontSize") var fontSize: Double = 14.0
    var body: some View {
        CalendarView()
            .preferredColorScheme(colorScheme)
            .environment(\.sizeCategory, fontSizeCategory)
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
struct FontSizeCategoryKey: EnvironmentKey {
    static let defaultValue: ContentSizeCategory = .medium
}

extension EnvironmentValues {
    var fontSizeCategory: ContentSizeCategory {
        get { self[FontSizeCategoryKey.self] }
        set { self[FontSizeCategoryKey.self] = newValue }
    }
}

extension View {
    func customFontSizeCategory(_ sizeCategory: ContentSizeCategory) -> some View {
        self.environment(\.fontSizeCategory, sizeCategory)
    }
}
