import WidgetKit
import SwiftUI

struct ShiftEntry: TimelineEntry {
    let date: Date
    let events: [CalendarEvent]
}

struct Provider: TimelineProvider {
    func placeholder(in context: Context) -> ShiftEntry {
        ShiftEntry(date: Date(), events: [])
    }

    func getSnapshot(in context: Context, completion: @escaping (ShiftEntry) -> ()) {
        let entry = ShiftEntry(date: Date(), events: loadEvents())
        completion(entry)
    }

    func getTimeline(in context: Context, completion: @escaping (Timeline<ShiftEntry>) -> ()) {
        let entryDate = Date()
        let entry = ShiftEntry(date: entryDate, events: loadEvents())
        let timeline = Timeline(entries: [entry], policy: .after(nextUpdateDate()))
        completion(timeline)
    }

    func loadEvents() -> [CalendarEvent] {
        // Ваша логика загрузки событий
        // Например, загрузка событий из UserDefaults или другого хранилища
        let userDefaults = UserDefaults(suiteName: "group.com.arturvladymcev.ambulancewidget")!
        if let savedEvents = userDefaults.data(forKey: "CalendarEvents") {
            let decoder = JSONDecoder()
            if let loadedEvents = try? decoder.decode([CalendarEvent].self, from: savedEvents) {
                return loadedEvents
            }
        }
        return []
    }

    func nextUpdateDate() -> Date {
        let calendar = Calendar.current
        let now = Date()
        // Получаем дату следующего дня
        guard let nextDay = calendar.date(byAdding: .day, value: 1, to: now) else {
            return now.addingTimeInterval(60 * 60) // Если не удалось получить следующую дату, обновляем через час
        }
        // Получаем начало следующего дня (00:00)
        let midnight = calendar.startOfDay(for: nextDay)
        return midnight
    }
}

struct ShiftCalendarWidgetEntryView: View {
    var entry: Provider.Entry
    @Environment(\.widgetFamily) var family
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        if #available(iOSApplicationExtension 17.0, *) {
            mainView
                .containerBackground(Color.grayButtonWidget, for: .widget)
        } else {
            mainView
                .background(Color.grayButtonWidget)
        }
    }

    @ViewBuilder
    var mainView: some View {
        switch family {
        case .systemSmall:
            smallWidgetView
        case .systemMedium:
            mediumWidgetView
        default:
            smallWidgetView
        }
    }

    var smallWidgetView: some View {
        VStack(spacing: 4) {
            Text(formattedFullDate(Date()))
                .font(.headline)
                .padding(.top, 4)
            WidgetCalendarView(currentDate: Date(), events: entry.events)
                .padding(2)
                .aspectRatio(1, contentMode: .fill)
        }
    }

    var mediumWidgetView: some View {
        HStack(spacing: 4) {
            // Левая половина: информация о сегодняшних событиях
            VStack(alignment: .leading, spacing: 4) {
                Text(formattedFullDate(Date()))
                    .font(.headline)
                    .padding(.top, 4)
                let todayEvents = entry.events.filter { Calendar.current.isDate($0.date, inSameDayAs: Date()) }
                if !todayEvents.isEmpty {
                                    ForEach(todayEvents, id: \.id) { event in
                                        ZStack {
                                            Text("\(event.type.rawValue)")
                                                .font(.subheadline)
                                                .bold()
                                                .foregroundColor(event.type.color)
                                            Text("\(event.type.rawValue)")
                                                .font(.subheadline)
                                                .bold()
                                                .foregroundColor(.black.opacity(0.15))
                                        }
                                        Text("Время: \(formattedTime(event.startTime))")
                                            .font(.caption)
                                        if !event.note.isEmpty {
                                            Text("Заметка: \(event.note)")
                                                .font(.caption)
                                        }
                                    }
                } else {
                    Text("Нет событий")
                        .font(.subheadline)
                }
                Spacer()
            }
            .frame(width: 130)
            // Правая половина: сетка календаря
            VStack(spacing: 4) {
                Text(formattedMonthYear(Date()))
                    .font(.headline)
                    .padding(.top, 4)
                WidgetCalendarView(currentDate: Date(), events: entry.events)
                    .padding(2)
                    .aspectRatio(1, contentMode: .fill)
            }
        }
    }

    // Добавьте эти функции внутри структуры, но вне других функций
    func formattedFullDate(_ date: Date) -> String {
            let formatter = DateFormatter()
            formatter.dateFormat = "dd.MM.yyyy (EE)"
            formatter.locale = Locale(identifier: "ru_RU")
            return formatter.string(from: date)
        }
    
    func formattedMonthYear(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "LLLL yyyy"
        formatter.locale = Locale(identifier: "ru_RU")
        return formatter.string(from: date).capitalized
    }

    func formattedTime(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        formatter.locale = Locale(identifier: "ru_RU")
        return formatter.string(from: date)
    }
}

@main
struct ShiftCalendarWidget: Widget {
    let kind: String = "ShiftCalendarWidget"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Provider()) { entry in
            ShiftCalendarWidgetEntryView(entry: entry)
        }
        .configurationDisplayName("Календарь смен")
        .description("Ваши предстоящие рабочие смены.")
        .supportedFamilies([.systemSmall, .systemMedium])
    }
}
