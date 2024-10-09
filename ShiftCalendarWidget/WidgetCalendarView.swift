import SwiftUI
import WidgetKit

import SwiftUI
import WidgetKit

struct WidgetCalendarView: View {
    let currentDate: Date
    let events: [CalendarEvent]
    @Environment(\.colorScheme) private var colorScheme
    var body: some View {
        let days = generateDays()
        let columns = Array(repeating: GridItem(.flexible(), spacing: 1), count: 7)
        
        VStack(spacing: 5) {
            // Отображение дней недели
            HStack(spacing: 2) {
                ForEach(["Пн", "Вт", "Ср", "Чт", "Пт", "Сб", "Вс"], id: \.self) { day in
                    Text(day)
                        .font(.caption) // Увеличенный размер шрифта
                        .bold()
                        .frame(maxWidth: .infinity)
                        .lineLimit(1)
                        .minimumScaleFactor(0.5)
                        .foregroundColor(day == "Сб" ? .blue : day == "Вс" ? .red : .primary)
                }
            }
            // Сетка дней
            LazyVGrid(columns: columns, spacing: 5) {
                ForEach(days, id: \.self) { date in
                    let event = events.first(where: { Calendar.current.isDate($0.date, inSameDayAs: date) })
                    Text("\(Calendar.current.component(.day, from: date))")
                        .font(.caption) // Увеличенный размер шрифта
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .lineLimit(1)
                        .minimumScaleFactor(0.5)
                        .foregroundColor(colorScheme == .dark ? Color(red: 0.9490196078431372, green: 0.9490196078431372, blue: 0.9490196078431372) : Color.black)
                        .background(event != nil ? event!.type.color.opacity(0.5) : Color.clear)
                        .cornerRadius(3)
                }
            }
        }
    }

    func generateDays() -> [Date] {
        let calendar = Calendar.current
        guard let monthInterval = calendar.dateInterval(of: .month, for: currentDate) else { return [] }
        var days = [Date]()

        // Начало недели
        var startDate = monthInterval.start
        let weekday = calendar.component(.weekday, from: startDate)
        let daysToSubtract = (weekday + 5) % 7 // Приводим к началу недели (понедельник)
        startDate = calendar.date(byAdding: .day, value: -daysToSubtract, to: startDate)!

        // Конец недели
        var endDate = monthInterval.end
        let endWeekday = calendar.component(.weekday, from: endDate)
        let daysToAdd = 7 - ((endWeekday + 5) % 7) - 1
        endDate = calendar.date(byAdding: .day, value: daysToAdd, to: endDate)!

        var currentDate = startDate
        while currentDate <= endDate {
            days.append(currentDate)
            currentDate = calendar.date(byAdding: .day, value: 1, to: currentDate)!
        }

        return days
    }
}
