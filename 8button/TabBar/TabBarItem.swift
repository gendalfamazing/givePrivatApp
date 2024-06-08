//
//  TabBarItem.swift
//  CustomTabBar
//
//  Created by Artur Vladymcev on 13.12.23.
//

import Foundation
import SwiftUI

//struct TabBarItem: Hashable {
//    let iconName: String
//    let title: String
//    let color: Color
//}


enum TabBarItem: Hashable {
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
        switch self {
        case .home: return Color.gray
        case .adult: return Color.gray
        case .child: return Color.gray
        case .organizer: return Color.gray
        case .search: return Color.gray
        }
    }
    var path: UUID {
        switch self {
        case .home: return UUID()
        case .adult: return UUID()
        case .child: return UUID()
        case .organizer: return UUID()
        case .search: return UUID()
        }
    }
}

