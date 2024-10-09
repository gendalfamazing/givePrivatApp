import SwiftUI

struct CalendarEvent: Identifiable, Codable {
    var id = UUID()
    var date: Date
    var type: EventType
    var startTime: Date
    var repeatInterval: Int? // Интервал повторения в днях
    var note: String = ""
}

enum EventType: String, Codable {
    case day = "День"
    case night = "Ночь"
    case twentyFourHours = "Сутки"
    
    var color: Color {
        switch self {
        case .day:
            return .yellow
        case .night:
            return .blue
        case .twentyFourHours:
            return .red
        }
    }
}
