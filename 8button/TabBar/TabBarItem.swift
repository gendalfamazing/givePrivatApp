import SwiftUI

enum TabBarItem: Hashable, CaseIterable {
    case home, adult, child, organizer, search

    var iconName: String {
        switch self {
        case .home: return "house.fill"
        case .adult: return "person.fill"
        case .child: return "person"
        case .organizer: return "calendar"
        case .search: return "questionmark.app"
        }
    }

    var title: String {
        switch self {
        case .home: return "Главная"
        case .adult: return "Взрослые"
        case .child: return "Дети"
        case .organizer: return "График"
        case .search: return "Инфо"
        }
    }

    var color: Color {
        return Color.gray
    }
}
