import SwiftUI
import WidgetKit

struct WidgetCalendarView: View {
    let currentDate: Date
    let events: [CalendarEvent]
    let totalGridHeight: CGFloat
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        let (days, numberOfRows) = generateDays()
        let columns = Array(repeating: GridItem(.flexible(), spacing: 1), count: 7)
        let cellHeight = totalGridHeight / CGFloat(numberOfRows)
        
        VStack(spacing: 1) {
            // Заголовки дней недели
            HStack(spacing: 1) {
                ForEach(["Пн", "Вт", "Ср", "Чт", "Пт", "Сб", "Вс"], id: \.self) { day in
                    if day.contains("Вс") {
                        ZStack {
                            Text(day)
                                .font(.caption)
                                .bold()
                                .frame(maxWidth: .infinity)
                                .lineLimit(1)
                                .minimumScaleFactor(0.5)
                                .foregroundColor(.red)
                            Text(day)
                                .font(.caption)
                                .bold()
                                .frame(maxWidth: .infinity)
                                .lineLimit(1)
                                .minimumScaleFactor(0.5)
                                .foregroundColor(.white.opacity(0.15))
                        }
                    } else if day.contains("Сб") {
                        ZStack {
                            Text(day)
                                .font(.caption)
                                .bold()
                                .frame(maxWidth: .infinity)
                                .lineLimit(1)
                                .minimumScaleFactor(0.5)
                                .foregroundColor(.blue)
                            Text(day)
                                .font(.caption)
                                .bold()
                                .frame(maxWidth: .infinity)
                                .lineLimit(1)
                                .minimumScaleFactor(0.5)
                                .foregroundColor(.white.opacity(0.15))
                        }
                    }else {
                        Text(day)
                            .font(.caption)
                            .bold()
                            .frame(maxWidth: .infinity)
                            .lineLimit(1)
                            .minimumScaleFactor(0.5)
                            .foregroundColor(.primary)
                    }
                    
                }
            }
            .padding(.bottom, 5)
            // Сетка календаря
            LazyVGrid(columns: columns, spacing: 1) {
                ForEach(days, id: \.self) { date in
                    let isCurrentMonth = Calendar.current.isDate(date, equalTo: currentDate, toGranularity: .month)
                    let textColor: Color = isCurrentMonth ? (colorScheme == .dark ? Color(red: 0.9490196078431372, green: 0.9490196078431372, blue: 0.9490196078431372) : Color.black) : (colorScheme == .dark ? Color(red: 0.9490196078431372, green: 0.9490196078431372, blue: 0.9490196078431372).opacity(0.5) : Color.black.opacity(0.5))
                    
                    let event = events.first(where: { Calendar.current.isDate($0.date, inSameDayAs: date) })
                    Text("\(Calendar.current.component(.day, from: date))")
                        .font(.caption)
                        .foregroundColor(textColor)
                        .frame(maxWidth: .infinity, minHeight: cellHeight, maxHeight: cellHeight)
                        .background(event != nil ? event!.type.color.opacity(0.5) : Color.clear)
                        .cornerRadius(3)
                }
            }
            .frame(height: totalGridHeight)
        }
    }
    
    func generateDays() -> ([Date], Int) {
        let calendar = Calendar.current
        guard let monthInterval = calendar.dateInterval(of: .month, for: currentDate) else { return ([], 0) }
        var days = [Date]()

        // Начало месяца
        var startDate = monthInterval.start
        let weekday = calendar.component(.weekday, from: startDate)
        let daysToSubtract = (weekday + 5) % 7 // Приводим к началу недели (понедельник)
        startDate = calendar.date(byAdding: .day, value: -daysToSubtract, to: startDate)!

        // Конец месяца
        var endDate = monthInterval.end
        let endWeekday = calendar.component(.weekday, from: endDate)
        let daysToAdd = 7 - ((endWeekday + 5) % 7) - 1
        endDate = calendar.date(byAdding: .day, value: daysToAdd, to: endDate)!

        var currentDate = startDate
        while currentDate <= endDate {
            days.append(currentDate)
            currentDate = calendar.date(byAdding: .day, value: 1, to: currentDate)!
        }

        // Вычисляем количество строк
        let numberOfRows = Int(ceil(Double(days.count) / 7.0))

        return (days, numberOfRows)
    }
}
