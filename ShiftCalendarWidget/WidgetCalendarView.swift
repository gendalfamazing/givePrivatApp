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
                        Text(day)
                            .font(.caption)
                            .bold()
                            .frame(maxWidth: .infinity)
                            .lineLimit(1)
                            .minimumScaleFactor(0.5)
                            .foregroundColor(.weekendRed)
                    } else if day.contains("Сб") {
                        Text(day)
                            .font(.caption)
                            .bold()
                            .frame(maxWidth: .infinity)
                            .lineLimit(1)
                            .minimumScaleFactor(0.5)
                            .foregroundColor(.weekendBlue)
                    } else {
                        Text(day)
                            .font(.caption)
                            .bold()
                            .frame(maxWidth: .infinity)
                            .lineLimit(1)
                            .minimumScaleFactor(0.5)
                            .foregroundColor(.textNumber1)
                    }
                }
            }
            .padding(.bottom, 5)
            // Сетка календаря
            LazyVGrid(columns: columns, spacing: 1) {
                ForEach(days, id: \.self) { date in
                    let isCurrentMonth = Calendar.current.isDate(date, equalTo: currentDate, toGranularity: .month)
                    let isToday = Calendar.current.isDate(date, inSameDayAs: self.currentDate)
                    let textColor: Color = isCurrentMonth ? .textNumber1 : .textNumber1.opacity(0.5)
                    
                    let event = events.first(where: { Calendar.current.isDate($0.date, inSameDayAs: date) })
                    
                    ZStack {
                        // Фон для сегодняшней даты
                        if isToday {
                            RoundedRectangle(cornerRadius: 3)
                                .fill(Color.clear)
                                .overlay(RoundedRectangle(cornerRadius: 3)
                                    .stroke(colorScheme == .dark ? Color.textNumber1.opacity(0.75) : Color.textNumber1.opacity(0.65), lineWidth: 1)
                                )
                                .frame(maxWidth: .infinity, minHeight: cellHeight, maxHeight: cellHeight)
                        }
                        
                        // Фон для события
                        if let event = event {
                            if isToday {
                                event.type.color
                                    .cornerRadius(3)
                                    .overlay(RoundedRectangle(cornerRadius: 3)
                                        .stroke(colorScheme == .dark ? Color.textNumber1.opacity(0.75) : Color.textNumber1.opacity(0.65), lineWidth: 1)
                                    )
                                    .frame(maxWidth: .infinity, minHeight: cellHeight, maxHeight: cellHeight)
                            } else {
                                event.type.color
                                    .cornerRadius(3)
                                    .overlay(RoundedRectangle(cornerRadius: 3)
                                        .stroke(colorScheme == .dark ? Color.textNumber1 : Color.textNumber1.opacity(0.65), lineWidth: 0.1)
                                    )
                                    .frame(maxWidth: .infinity, minHeight: cellHeight, maxHeight: cellHeight)
                            }
                        }
                        
                        Text("\(Calendar.current.component(.day, from: date))")
                            .font(.caption)
                            .foregroundColor(textColor)
                    }
                    .frame(maxWidth: .infinity, minHeight: cellHeight, maxHeight: cellHeight)
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
