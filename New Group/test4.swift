

import SwiftUI
import Combine

struct CalendarEvent: Identifiable, Codable {
    var id = UUID()
    var date: Date
    var type: EventType
    var startTime: Date
    var repeatInterval: Int? // Интервал повторения в днях
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

class CalendarViewModel: ObservableObject {
    @Published var currentDate: Date = Date()
    @Published var events: [CalendarEvent] = [] {
        didSet {
            saveEvents()
        }
    }
    @Published var eventHistory: [CalendarEvent] = [] {
        didSet {
            saveEventHistory()
        }
    }
    @Published var selectedDate: Date? = Date() // Изначально выбранная текущая дата
    @Published var selectedEvent: CalendarEvent?
    @Published var showEventSheet = false

    init() {
        loadEvents()
        loadEventHistory()
    }

    func addEvent(on date: Date, type: EventType, startTime: Date, repeatInterval: Int) {
        var eventsToAdd = [CalendarEvent]()
        let calendar = Calendar.current
        var currentDate = date

        if repeatInterval == 0 {
            // Если интервал равен 1, добавляем событие только один раз
            let event = CalendarEvent(date: date, type: type, startTime: startTime, repeatInterval: nil)
            eventsToAdd.append(event)
        } else {
            // Если интервал больше 1, добавляем повторяющиеся события
            while currentDate <= calendar.date(byAdding: .month, value: 1, to: date)! {
                let event = CalendarEvent(date: currentDate, type: type, startTime: startTime, repeatInterval: repeatInterval)
                eventsToAdd.append(event)
                currentDate = calendar.date(byAdding: .day, value: repeatInterval, to: currentDate)!
            }
        }

        events.append(contentsOf: eventsToAdd)
    }
    
    func updateEvent(event: CalendarEvent, type: EventType, startTime: Date, repeatInterval: Int) {
        if let index = events.firstIndex(where: { $0.id == event.id }) {
            events[index].type = type
            events[index].startTime = startTime
            events[index].repeatInterval = repeatInterval == 1 ? nil : repeatInterval
        }
    }
    
    func deleteEvent(event: CalendarEvent) {
        if let index = events.firstIndex(where: { $0.id == event.id }) {
            events.remove(at: index)
        }
    }
    
    func deleteEvents(in dateRange: ClosedRange<Date>) {
        let calendar = Calendar.current
        
        events.removeAll { event in
            let eventDate = calendar.startOfDay(for: event.date)
            let startDate = calendar.startOfDay(for: dateRange.lowerBound)
            let endDate = calendar.startOfDay(for: dateRange.upperBound)
            
            return eventDate >= startDate && eventDate <= endDate
        }
        
        saveEvents() // Сохраняем изменения
    }
    
    func events(for date: Date) -> [CalendarEvent] {
        return events.filter { Calendar.current.isDate($0.date, inSameDayAs: date) }
    }
    
    func previousMonth() {
        currentDate = Calendar.current.date(byAdding: .month, value: -1, to: currentDate)!
    }
    
    func nextMonth() {
        currentDate = Calendar.current.date(byAdding: .month, value: 1, to: currentDate)!
    }

    // MARK: - History Management
    
    func addEventToHistory(type: EventType, startTime: Date, repeatInterval: Int) {
        let event = CalendarEvent(date: Date(), type: type, startTime: startTime, repeatInterval: repeatInterval)
        if !eventHistory.contains(where: { $0.type == event.type && $0.startTime == event.startTime && $0.repeatInterval == event.repeatInterval }) {
            eventHistory.append(event)
        }
    }
    
    func removeEventFromHistory(_ event: CalendarEvent) {
            if let index = eventHistory.firstIndex(where: { $0.id == event.id }) {
                eventHistory.remove(at: index)
            }
        }
    
    // MARK: - Persistence
    
    func saveEvents() {
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(events) {
            UserDefaults.standard.set(encoded, forKey: "CalendarEvents")
        }
    }

    func loadEvents() {
        if let savedEvents = UserDefaults.standard.data(forKey: "CalendarEvents") {
            let decoder = JSONDecoder()
            if let loadedEvents = try? decoder.decode([CalendarEvent].self, from: savedEvents) {
                events = loadedEvents
            }
        }
    }
    
    func saveEventHistory() {
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(eventHistory) {
            UserDefaults.standard.set(encoded, forKey: "EventHistory")
        }
    }

    func loadEventHistory() {
        if let savedHistory = UserDefaults.standard.data(forKey: "EventHistory") {
            let decoder = JSONDecoder()
            if let loadedHistory = try? decoder.decode([CalendarEvent].self, from: savedHistory) {
                eventHistory = loadedHistory
            }
        }
    }
}

struct DayView: View {
    @Environment(\.colorScheme) private var colorScheme
    let date: Date
    let events: [CalendarEvent]
    @ObservedObject var viewModel: CalendarViewModel
    @State private var showContextMenu = false
    @State private var showDeleteEventsView = false
    var body: some View {
        VStack {
            ZStack {
                if isSelected {
                    withAnimation(.bouncy) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 6)
                            .fill(!events.isEmpty ? events.first!.type.color.opacity(0.5) : Color.grayButton)
                            .frame(width: 40, height: 40)
                            .cornerRadius(6)
                            .zIndex(2)
                        
                        RoundedRectangle(cornerRadius: 6)
                            .fill(Color.grayButton)
                            .frame(width: 40, height: 40)
                            .cornerRadius(6)
                            .zIndex(1)
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color.green.opacity(0.5))
                            .frame(width: 45, height: 45)
                        
                        
                    }
                    .animation(.easeInOut(duration: 0.3), value: isSelected)
                }
                } else if isToday {
                    ZStack {
                        RoundedRectangle(cornerRadius: 6)
                            .fill(!events.isEmpty ? events.first!.type.color.opacity(0.5) : Color.grayButton)
                            .frame(width: 40, height: 40)
                            .cornerRadius(6)
                            .zIndex(2)
                        RoundedRectangle(cornerRadius: 6)
                            .fill(Color.grayButton)
                            .frame(width: 40, height: 40)
                            .cornerRadius(6)
                            .zIndex(1)
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color.gray.opacity(0.5))
                            .frame(width: 45, height: 45)
                    }
                } else if !events.isEmpty {
                    ZStack {
                    RoundedRectangle(cornerRadius: 6)
                        .fill(events.first!.type.color.opacity(0.5))
                        .frame(width: 40, height: 40)
                        .cornerRadius(6)
                        .zIndex(2)
                        RoundedRectangle(cornerRadius: 6)
                            .fill(Color.grayButton)
                            .frame(width: 40, height: 40)
                            .cornerRadius(6)
                            .shadow(color: .shadowGrayRectangle, radius: 0.5)
                            .zIndex(1)
                }
                    
                        
                    
                    
                }
                VStack {
                    Text("\(Calendar.current.component(.day, from: date))")
                        .foregroundColor(isToday || !events.isEmpty ? .primary : isCurrentMonth ? .primary : .gray)
                    if !events.isEmpty {
                        Text(formattedTime(for: events.first!.startTime))
                            .font(.caption2)
                            .foregroundColor(colorScheme == .dark ? Color(red: 0.9490196078431372, green: 0.9490196078431372, blue: 0.9490196078431372) : Color.black)
                    }
                }
            }
        }
        .frame(width: 50, height: 50)
        
        .background(Color.grayButton.opacity(0.01))
        .cornerRadius(6)
        .onTapGesture {
            withAnimation(.easeInOut(duration: 0.3)) {
                viewModel.selectedDate = date
            }
        }
        .simultaneousGesture(LongPressGesture(minimumDuration: 0.3).onEnded { _ in
                    withAnimation(.easeInOut(duration: 0.3)) {
                        viewModel.selectedDate = date
                    }
                })
        .contextMenu{
            if events.isEmpty {
                            Button(action: {
                                viewModel.selectedDate = date
                                viewModel.selectedEvent = nil
                                viewModel.showEventSheet = true
                            }) {
                                Text("Добавить смену")
                            }
            } else {
                ForEach(events) { event in
                    Button(action: {
                        viewModel.selectedEvent = event
                        viewModel.showEventSheet = true
                    }) {
                        Text("Редактировать смену")
                    }
                    
                    Button(action: {
                        viewModel.deleteEvent(event: event)
                    }) {
                        Text("Удалить смену")
                    }
                    Button(action: {
                        showDeleteEventsView = true
                    }) {
                        Text("Удалить группу смен")
                    }
                }
            }
        }
        
        
        .sheet(isPresented: $showDeleteEventsView) {
            DeleteEventsView(viewModel: viewModel, isPresented: $showDeleteEventsView)
        }
    }
    
    var isToday: Bool {
        Calendar.current.isDateInToday(date)
    }
    var isSelected: Bool {
            guard let selectedDate = viewModel.selectedDate else {
                return false
            }
            return Calendar.current.isDate(selectedDate, inSameDayAs: date)
        }
    
    var isCurrentMonth: Bool {
        let month = Calendar.current.component(.month, from: viewModel.currentDate)
        let dayMonth = Calendar.current.component(.month, from: date)
        return month == dayMonth
    }

    func formattedTime(for date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        return formatter.string(from: date)
    }
}


struct CalendarView: View {
    @ObservedObject var viewModel = CalendarViewModel()
    @State private var showDeleteEventsView = false
    
    var body: some View {
        NavigationStack {
            VStack {
                
                CalendarGrid(viewModel: viewModel)
                
                Spacer()
                
                LazyVStack {
                    if let selectedDate = viewModel.selectedDate {
                        EventsView(date: selectedDate, events: viewModel.events(for: selectedDate), viewModel: viewModel)
                            .transition(.move(edge: .bottom))
                            .animation(.easeInOut, value: viewModel.selectedDate)
                    }
                }
                
                
                
            }
            .padding(.horizontal)
            .padding(.bottom, 55)
            .gesture(
                DragGesture()
                    .onEnded { value in
                        if value.translation.width < 0 {
                            withAnimation (.interactiveSpring(duration: 0.3)){
                                viewModel.nextMonth()
                            }
                        } else if value.translation.width > 0 {
                            withAnimation (.interactiveSpring(duration: 0.3)){
                                viewModel.previousMonth()
                            }
                        }
                    }
            )
            .sheet(isPresented: $showDeleteEventsView) {
                DeleteEventsView(viewModel: viewModel, isPresented: $showDeleteEventsView)
            }
            .onAppear {
                viewModel.selectedDate = Date()
            }
            .background(Color.back)
            .navigationBarBackButtonHidden(false)
            .navigationBarTitle("",displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    VStack {
                        Text("График работы")
                            .font(.headline)
                            .bold()
                        Text("«Удобный календарь для записи смен»")
                            .font(.caption2)
                    }
                }
                
            }
            //        .padding(.horizontal, 200)
            //            .edgesIgnoringSafeArea(.bottom)
            .background(Color.back)
            
        }
    
    }
    
    var currentMonthYear: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "LLLL yyyy"
        return formatter.string(from: viewModel.currentDate)
    }
}


struct CalendarGrid: View {
    @ObservedObject var viewModel: CalendarViewModel
    
    var body: some View {
        let days = generateDays()
        
        return VStack (spacing: 1){
            HStack {
                Button(action: {
                    withAnimation (.interactiveSpring(duration: 0.3)){
                        viewModel.previousMonth()
                    }
                    
                }) {
                    Image(systemName: "chevron.left")
                        .resizable()
                        .frame(width: 10, height: 20)
                        .bold()
                        .foregroundColor(.gray).opacity(0.5)
                }
                Spacer()
                Text(currentMonthYear)
                    .font(.title2)
                    .bold()
                Spacer()
                Button(action: {
                    withAnimation (.interactiveSpring(duration: 0.3)){
                        viewModel.nextMonth()
                    }
                    
                }) {
                    Image(systemName: "chevron.right")
                        .resizable()
                        .frame(width: 10, height: 20)
                        .bold()
                        .foregroundColor(.gray).opacity(0.5)
                }
            }
            .padding(.bottom, 15)
            
            DaysOfWeekView()
                .padding(.bottom, 5)
            Divider()
                .background(Color.divider)
                .padding(.horizontal, 5)
                .padding(.bottom, 5)
            LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 7), spacing: 1) {
                ForEach(days, id: \.self) { date in
                    DayView(date: date, events: viewModel.events(for: date), viewModel: viewModel)
                        .onTapGesture {
                            viewModel.selectedDate = date
                        }
                    
                }
            
                
            }
            
        }
        .padding()
        .background(Color.grayButton) // Прямоугольник с серым фоном
        .cornerRadius(10)
        .shadow(color: .shadowGrayRectangle, radius: 0.5)
        .sheet(isPresented: $viewModel.showEventSheet) {
            EventCreationSheet(viewModel: viewModel)
        }
    }
    
    func generateDays() -> [Date] {
        let calendar = Calendar.current
        let components = calendar.dateComponents([.year, .month], from: viewModel.currentDate)
        let startOfMonth = calendar.date(from: components)!
        var days = [Date]()
        
        // Добавление дней предыдущего месяца, если месяц не начинается с понедельника
        let firstWeekday = calendar.component(.weekday, from: startOfMonth) - calendar.firstWeekday
        let startOffset = firstWeekday < 0 ? firstWeekday + 7 : firstWeekday
        if startOffset > 0 {
            for i in 1...startOffset {
                if let date = calendar.date(byAdding: .day, value: -i, to: startOfMonth) {
                    days.append(date)
                }
            }
            days.reverse() // Исправление порядка дней предыдущего месяца
        }
        
        // Добавление дней текущего месяца
        let range = calendar.range(of: .day, in: .month, for: startOfMonth)!
        for day in range {
            if let date = calendar.date(byAdding: .day, value: day - 1, to: startOfMonth) {
                days.append(date)
            }
        }
        
        // Добавление дней следующего месяца, если месяц не заканчивается в воскресенье
        let lastWeekday = calendar.component(.weekday, from: days.last!) - calendar.firstWeekday
        let endOffset = lastWeekday < 5 ? 6 - lastWeekday : lastWeekday
        if endOffset > 1 {
            for i in 1...endOffset {
                if let date = calendar.date(byAdding: .day, value: 1-6%i, to: days.last!) {
                    days.append(date)
                }
            }
        }
        
        return days
    }
    var currentMonthYear: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "LLLL yyyy"
        return formatter.string(from: viewModel.currentDate).capitalized
    }
}

struct DaysOfWeekView: View {
    let daysOfWeek = ["Пн", "Вт", "Ср", "Чт", "Пт", "Сб", "Вс"]
    
    var body: some View {
        HStack (alignment: .bottom){
            ForEach(daysOfWeek, id: \.self) { day in
                if day.contains("Вс") || day.contains("Сб"){
                    Text(day)
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.red)
                } else {
                    Text(day)
                        .frame(maxWidth: .infinity)
                }
                
            }
        }
    }
}

struct EventsView: View {
    let date: Date
    let events: [CalendarEvent]
    @ObservedObject var viewModel: CalendarViewModel
    @State private var showContextMenu = false
    @State private var showDeleteEventsView = false
    var body: some View {
        VStack {
            if events.isEmpty {
                Text("\(formattedDate)")
                    .font(.headline)
            } else {
                Text("\(formattedDate):")
                    .font(.headline)
                ForEach(events) { event in
                    Text("\(event.type.rawValue) - \(formattedTime(for: event.startTime))")
                        .padding()
                        .background(event.type.color.opacity(0.5))
                        .cornerRadius(8)
                }
            }
            
        }
        .padding()
        .background(Color.grayButton)
        .cornerRadius(10)
        .shadow(color: .shadowGrayRectangle, radius: 0.5)
        .padding(1)
        .cornerRadius(10)
        .contextMenu{
            if events.isEmpty {
                            Button(action: {
                                viewModel.selectedDate = date
                                viewModel.selectedEvent = nil
                                viewModel.showEventSheet = true
                            }) {
                                Text("Добавить смену")
                            }
            } else {
                ForEach(events) { event in
                    Button(action: {
                        viewModel.selectedEvent = event
                        viewModel.showEventSheet = true
                    }) {
                        Text("Редактировать смену")
                    }
                    
                    Button(action: {
                        viewModel.deleteEvent(event: event)
                    }) {
                        Text("Удалить смену")
                    }
                    Button(action: {
                        showDeleteEventsView = true
                    }) {
                        Text("Удалить группу смен")
                    }
                }
            }
        }
    }
    
    var formattedDate: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "d MMMM yyyy"
        return formatter.string(from: date)
    }
    
    func formattedTime(for date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        return formatter.string(from: date)
    }
}

struct EventCreationSheet: View {
    @Environment(\.colorScheme) var colorScheme
    @ObservedObject var viewModel: CalendarViewModel
    @State private var eventType: EventType = .day
    @State private var selectedHour: Int = 0
    @State private var selectedMinute: Int = 0
    @State private var repeatInterval: Int = 0 // Интервал повторения, 0 означает без повторения
    @State private var selectedTemplateIndex: Int? = nil
    
    let availableHours = Array(0...23)
    let availableMinutes = [0, 15, 30, 45]
    let availableIntervals = [1, 2, 3, 4] // Интервалы повторения
    
    var sortedEventHistory: [CalendarEvent] {
        viewModel.eventHistory.sorted { first, second in
            if first.type == second.type {
                let firstComponents = Calendar.current.dateComponents([.hour, .minute], from: first.startTime)
                let secondComponents = Calendar.current.dateComponents([.hour, .minute], from: second.startTime)
                if firstComponents.hour == secondComponents.hour {
                    return firstComponents.minute! < secondComponents.minute!
                }
                return firstComponents.hour! < secondComponents.hour!
            } else {
                return first.type.rawValue < second.type.rawValue
            }
        }
    }
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack (alignment: .leading, spacing: 1) {
                    
                    VStack (alignment: .leading, spacing: 1){
                        Text("""
                            Тип смены:
                            """)
                        .font(.footnote)
                        .bold()
                        .padding(.leading, 10)
                        .opacity(0.5)
                    }
                    Spacer(minLength: 5)
                    Picker("Тип события", selection: $eventType) {
                        Text("День").tag(EventType.day)
                        Text("Ночь").tag(EventType.night)
                        Text("Сутки").tag(EventType.twentyFourHours)
                    }
                    .background(colorScheme == .dark ? Color.white.opacity(0) : Color.white.opacity(0.95))
                    .cornerRadius(10)
                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                    .pickerStyle(SegmentedPickerStyle())
                    
                    Spacer(minLength: 10)
                    
                    
                    VStack (alignment: .leading, spacing: 1){
                        Text("""
                            Время начала:
                            """)
                        .font(.footnote)
                        .bold()
                        .padding(.leading, 10)
                        .opacity(0.5)
                    }
                    Spacer(minLength: 5)
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        VStack (spacing: 1) {
                            HStack {
                                Spacer()
                                Picker("Часы", selection: $selectedHour) {
                                    ForEach(availableHours, id: \.self) { hour in
                                        Text(String(format: "%02d", hour)).tag(hour)
                                    }
                                }
                                
                                .pickerStyle(WheelPickerStyle())
                                .frame(width: 80, height: 80)
                                .clipped()
                                
                                Picker("Минуты", selection: $selectedMinute) {
                                    ForEach(availableMinutes, id: \.self) { minute in
                                        Text(String(format: "%02d", minute)).tag(minute)
                                    }
                                }
                                .pickerStyle(WheelPickerStyle())
                                .frame(width: 80, height: 100)
                                .clipped()
                                Spacer()
                            }
                            
                        }
                    }
                    Spacer(minLength: 10)
                    
                    
                    VStack (alignment: .leading, spacing: 1){
                        Text("""
                            Интервал повторения:
                            """)
                        .font(.footnote)
                        .bold()
                        .padding(.leading, 10)
                        .opacity(0.5)
                    }
                    Spacer(minLength: 5)
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        VStack (spacing: 1) {
                            Picker("Повторять каждые", selection: $repeatInterval) {
                                Text("Без повторения").tag(1)
                                ForEach(availableIntervals, id: \.self) { interval in
                                    Text(interval == 1 ? "Каждый день" : "Каждый \(interval) день").tag(interval)
                                }
                            }
                            .pickerStyle(WheelPickerStyle())
                            .frame(height: 100)
                            .clipped()
                        }
                    }
                    Spacer(minLength: 10)
                    if !viewModel.eventHistory.isEmpty {
                                            historySection
                                        }
                    
                    Spacer()
                }
                .padding(.horizontal)
                .background(.back)
                .navigationBarBackButtonHidden(true)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        VStack {
                            Text(viewModel.selectedEvent == nil ? "Новая смена" : "Редактировать смену")
                                .font(.subheadline)
                                .foregroundStyle(Color.toolBar)
                                .bold()
                            Text("""
                            \(formattedDate(viewModel.selectedDate))
                            """)
                            .font(.caption)
                            .foregroundStyle(Color.toolBar)
                        }
                    }
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button("Закрыть") {
                            viewModel.showEventSheet = false
                        }
                        
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(viewModel.selectedEvent == nil ? "Добавить" : "Обновить") {
                            if let selectedDate = viewModel.selectedDate {
                                            let calendar = Calendar.current
                                            var components = calendar.dateComponents([.year, .month, .day], from: selectedDate)
                                            components.hour = selectedHour
                                            components.minute = selectedMinute
                                            let startTime = calendar.date(from: components) ?? selectedDate
                                            
                                            if let event = viewModel.selectedEvent {
                                                viewModel.updateEvent(event: event, type: eventType, startTime: startTime, repeatInterval: repeatInterval)
                                            } else {
                                                viewModel.addEvent(on: selectedDate, type: eventType, startTime: startTime, repeatInterval: repeatInterval)
                                                viewModel.addEventToHistory(type: eventType, startTime: startTime, repeatInterval: repeatInterval)
                                            }
                                            viewModel.showEventSheet = false
                            }
                        }
                        
                    }
                }
            }
            .background(.back)
        }
        
        
        .onAppear {
            if let event = viewModel.selectedEvent {
                eventType = event.type
                let calendar = Calendar.current
                let components = calendar.dateComponents([.hour, .minute], from: event.startTime)
                selectedHour = components.hour ?? 0
                selectedMinute = components.minute ?? 0
                repeatInterval = event.repeatInterval ?? 1
            }
        }
    }
    var historySection: some View {
        VStack(alignment: .leading, spacing: 5) {
            VStack (alignment: .leading, spacing: 1){
                Text("""
                    Шаблоны добавленных смен:
                    """)
                .font(.footnote)
                .bold()
                .padding(.leading, 10)
                .opacity(0.5)
            }
            ForEach(sortedEventHistory.indices, id: \.self) { index in
                let template = sortedEventHistory[index]
                VStack {
                    HStack (alignment: .center) {
                        Button(action: {
                            applyTemplate(template)
                            selectedTemplateIndex = index
                            if let selectedDate = viewModel.selectedDate {
                                let calendar = Calendar.current
                                var components = calendar.dateComponents([.year, .month, .day], from: selectedDate)
                                components.hour = selectedHour
                                components.minute = selectedMinute
                                let startTime = calendar.date(from: components) ?? selectedDate
                                
                                if let event = viewModel.selectedEvent {
                                    viewModel.updateEvent(event: event, type: eventType, startTime: startTime, repeatInterval: repeatInterval)
                                } else {
                                    viewModel.addEvent(on: selectedDate, type: eventType, startTime: startTime, repeatInterval: repeatInterval)
                                }
                                viewModel.showEventSheet = false
                            }
                        }) {
                            HStack (alignment: .center){
                                Text(template.type.rawValue)
                                    .frame(width: 50)
                                Text("\(String(format: "%02d", Calendar.current.component(.hour, from: template.startTime))):\(String(format: "%02d", Calendar.current.component(.minute, from: template.startTime)))")
                                    .frame(width: 50)
                                if template.repeatInterval! == 1 {
                                    Text("Каждый день")
                                        .frame(width: 150)
                                } else {
                                    Text("\(template.repeatInterval! == 0 ? "Без повторения" : "Каждый \(template.repeatInterval!) день")")
                                        .frame(width: 150)
                                }
                                
                            }
                            .padding()
                            .background(selectedTemplateIndex == index ? Color.gray.opacity(0.2) : Color.clear)
                            .cornerRadius(8)
                        }
                        .buttonStyle(PlainButtonStyle())
                        Spacer()
                        Button(action: {
                            viewModel.removeEventFromHistory(template)
                        }) {
                            Image(systemName: "trash")
                                .foregroundColor(.red)
                        }
                        Spacer()
                    }
                    .background(
                        template.type.rawValue.contains("День") ? .yellow.opacity(0.5) :
                            template.type.rawValue.contains("Ночь") ? .blue.opacity(0.5) : .red.opacity(0.5))
                    
                }
                .background(.grayButton)
                .cornerRadius(10)
                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                
            }
            
        }
        
    }
    
    func applyTemplate(_ template: CalendarEvent) {
        eventType = template.type
        let components = Calendar.current.dateComponents([.hour, .minute], from: template.startTime)
        selectedHour = components.hour ?? 0
        selectedMinute = components.minute ?? 0
        repeatInterval = template.repeatInterval ?? 1
    }
    
    func formattedDate(_ date: Date?) -> String {
        guard let date = date else { return "" }
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter.string(from: date)
    }
}

struct DeleteEventsView: View {
    @Environment(\.colorScheme) var colorScheme
    @ObservedObject var viewModel: CalendarViewModel
    @Binding var isPresented: Bool
    @State private var startDate = Date()
    @State private var endDate = Date()
    @State private var showAlert = false

    var body: some View {
        NavigationView {
            ScrollView {
                VStack (alignment: .leading, spacing: 1){
                    VStack (alignment: .leading, spacing: 1){
                        Text("""
                        Начальная дата:
                        """)
                        .font(.footnote)
                        .bold()
                        .padding(.leading, 10)
                        .opacity(0.5)
                    }
                    Spacer(minLength: 5)
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        VStack (spacing: 1) {
                            DatePicker("Начальная дата", selection: $startDate, displayedComponents: .date)
                                .datePickerStyle(.compact)
                                .padding()
                                .cornerRadius(10)
                        }
                    }
                    Spacer(minLength: 10)
                    
                    VStack (alignment: .leading, spacing: 1){
                        Text("""
                        Конечная дата:
                        """)
                        .font(.footnote)
                        .bold()
                        .padding(.leading, 10)
                        .opacity(0.5)
                    }
                    Spacer(minLength: 5)
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        VStack (spacing: 1) {
                    DatePicker("Конечная дата", selection: $endDate, displayedComponents: .date)
                        .datePickerStyle(.compact)
                        .padding()
                        .cornerRadius(10)
                }
            }
                Spacer()
            }
            .padding(.horizontal)
            .background(.back)
            .navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    VStack {
                        Text("Удалить смены")
                            .font(.headline)
                            .foregroundStyle(Color.toolBar)
                            .bold()
                        
                    }
                }
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Закрыть") {
                        isPresented = false
                    }
                        
                    }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Удалить") {
                        if startDate <= endDate {
                            let dateRange = startDate...endDate
                            viewModel.deleteEvents(in: dateRange)
                            isPresented = false // Закрываем экран после успешного удаления событий
                        } else {
                            showAlert = true
                        }
                    }
                    .foregroundColor(.red)
                    .alert(isPresented: $showAlert) {
                        Alert(title: Text("Ошибка"), message: Text("Конечная дата должна быть больше или равна начальной дате"), dismissButton: .default(Text("OK")))
                    }
                    }
        }
        }
            .background(.back)
        }
    }
}

#Preview {
    CalendarView()
}
