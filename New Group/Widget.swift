import SwiftUI
import WidgetKit

struct ShiftEntry: TimelineEntry {
    let date: Date
    let shifts: [CalendarEvent]
}

struct ShiftWidgetView: View {
    var entry: ShiftProvider.Entry

    var body: some View {
        VStack(alignment: .leading) {
            Text("Upcoming Shifts")
                .font(.headline)
            ForEach(entry.shifts.prefix(5)) { shift in
                HStack {
                    Text(shift.type.rawValue)
                        .font(.body)
                        .foregroundColor(shift.type.color)
                    Spacer()
                    Text(formattedDate(for: shift.date))
                        .font(.caption)
                        .foregroundColor(.gray)
                }
            }
        }
        .padding()
    }
    
    func formattedDate(for date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd MMM, HH:mm"
        return formatter.string(from: date)
    }
}

struct ShiftProvider: TimelineProvider {
    func placeholder(in context: Context) -> ShiftEntry {
        ShiftEntry(date: Date(), shifts: [CalendarEvent(date: Date(), type: .day, startTime: Date(), repeatInterval: nil)])
    }

    func getSnapshot(in context: Context, completion: @escaping (ShiftEntry) -> Void) {
        let entry = ShiftEntry(date: Date(), shifts: loadEvents())
        completion(entry)
    }

    func getTimeline(in context: Context, completion: @escaping (Timeline<ShiftEntry>) -> Void) {
        let currentDate = Date()
        let entry = ShiftEntry(date: currentDate, shifts: loadEvents())
        let nextUpdateDate = Calendar.current.date(byAdding: .hour, value: 1, to: currentDate) ?? currentDate
        let timeline = Timeline(entries: [entry], policy: .after(nextUpdateDate))
        completion(timeline)
    }

    func loadEvents() -> [CalendarEvent] {
        if let savedEvents = UserDefaults(suiteName: "group.AmbulanceDocs.group")?.data(forKey: "CalendarEvents") {
            let decoder = JSONDecoder()
            if let loadedEvents = try? decoder.decode([CalendarEvent].self, from: savedEvents) {
                return loadedEvents
            }
        }
        return []
    }
}

struct ShiftWidget: Widget {
    let kind: String = "ShiftWidget"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: ShiftProvider()) { entry in
            ShiftWidgetView(entry: entry)
        }
        .configurationDisplayName("Shift Widget")
        .description("Displays upcoming shifts.")
        .supportedFamilies([.systemSmall, .systemMedium])
    }
}

@main
struct WidgetsBundle: WidgetBundle {
    @WidgetBundleBuilder
    var body: some Widget {
        ShiftWidget()
    }
}
