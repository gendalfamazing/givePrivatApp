import SwiftUI

struct CriterionPESI: Identifiable {
    let id = UUID()
    let description: String
    let points: Int
    var isSelected: Bool = false
}

struct PESI: View {
    @State private var criteria = [
        CriterionPESI(description: "Мужской пол", points: 10),
        CriterionPESI(description: "Онкологическое заболевание", points: 30),
        CriterionPESI(description: "Хроническая сердечная недостаточность", points: 10),
        CriterionPESI(description: "Хронические заболевания лёгких", points: 10),
        CriterionPESI(description: "Частота пульса ≥ 110 в минуту", points: 20),
        CriterionPESI(description: "Систолическое АД < 100 мм рт.ст.", points: 30),
        CriterionPESI(description: "Частота дыхания > 30 в минуту", points: 20),
        CriterionPESI(description: "Температура < 36°C", points: 20),
        CriterionPESI(description: "Нарушения сознания", points: 60),
        CriterionPESI(description: "SaO2 < 90%", points: 20)
    ]
    
    @State private var displayedPoints = 0 // Для анимации
    @State private var isTextExpanded = false
    @State private var age = ""
    @FocusState private var isAgeFieldFocused: Bool
    
    @Environment(\.viewContext) var context: ViewContext
    @EnvironmentObject var favoritesManager: FavoritesManager
    @State private var showAlert = false
    @State private var alertMessage = ""
    
    private var allViewIdentifiersTitle: String = "Шкалы и таблицы"
    private var allViewIdentifiers: String = "PESI"
    
    var isInFavorites: Bool {
        return favoritesManager.favorites.contains { $0.viewIdentifier == allViewIdentifiers }
    }
    var shouldShowOverlay: Bool {
            switch context {
            case .favorites:
                // В избранном не показываем оверлей
                return false
            case .nonFavorites, .other:
                // В других контекстах показываем оверлей
                return true
            }
        }
    func addToFavorites() {
        let newItem = FavoriteItem(name: allViewIdentifiersTitle, viewIdentifier: allViewIdentifiers, isExpanded: false, isNavigationLink: false)
        let success = favoritesManager.addItem(newItem)
        if success {
            // Элемент успешно добавлен
        } else {
            // Элемент уже существует
            alertMessage = "Этот элемент уже добавлен в избранное"
            showAlert = true
        }
    }
    
    func removeFromFavorites() {
        if let item = favoritesManager.favorites.first(where: { $0.viewIdentifier == allViewIdentifiers }) {
            favoritesManager.removeItem(item)
        }
    }
    
    var body: some View {
        VStack {
            MyViewBuilder(title: Text("PESI"), content: Text("Оценка прогноза 30-дневного летального исхода больных с ТЭЛА")).buildBlue591TextScalesFavorites(isTextExpanded: isTextExpanded, isInFavorites: isInFavorites, shouldShowOverlay: shouldShowOverlay, allViewIdentifiersTitle: allViewIdentifiersTitle, allViewIdentifiers: allViewIdentifiers, context: context)
                .onTapGesture {
                    withAnimation(.snappy) {
                        isTextExpanded.toggle()
                        if let index = favoritesManager.favorites.firstIndex(where: { $0.viewIdentifier == allViewIdentifiers }) {
                            favoritesManager.favorites[index].isExpanded.toggle() // Изменяем состояние
                            NotificationCenter.default.post(name: .didUpdateContentSize, object: nil)
                        }
                    }
                }
            if isTextExpanded {
                MyViewBuilder(title: Text(""), content: Text("""
                **Шкала PESI** используется для прогнозирования риска смертности у пациентов с острой тромбоэмболией легочной артерии (ТЭЛА). Она помогает определить необходимость госпитализации и интенсивности терапии.
                """)).buildGrayText()
                    .onTapGesture {
                        withAnimation(.snappy) {
                            isTextExpanded.toggle()
                            if let index = favoritesManager.favorites.firstIndex(where: { $0.viewIdentifier == allViewIdentifiers }) {
                                favoritesManager.favorites[index].isExpanded.toggle() // Изменяем состояние
                            }
                        }
                    }
                VStack  {
                    VStack(spacing: 1) {
                        VStack {
                            MyViewBuilder(title: Text(""), content: Text("**Оценка риска по шкале PESI**")).buildGrayInText()
                            Text("(выберите подходящие пункты)")
                                .padding(.top,-15)
                                .padding(.bottom, 5)
                                .multilineTextAlignment(.center)
                                .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                                .fixedSize(horizontal: false, vertical: true)
                                .font(.subheadline)
                                .foregroundColor(Color.gray)
                        }
                        .background(Color.grayButton)
                        
                        // Ввод возраста
                        HStack {
                            Text("Возраст:")
                                .font(.subheadline)
                                .padding(5)
                                .padding(.leading, 5)
                            Spacer()
                            TextField("Введите...", text: $age)
                                .keyboardType(.numberPad)
                                .frame(width: 100)
                                .padding(5)
                                .cornerRadius(10)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                )
                                .padding(5)
                                .focused($isAgeFieldFocused)
                                .onChange(of: age) { newValue in
                                    // Удаляем все нецифровые символы
                                    let filtered = newValue.filter { "0123456789".contains($0) }
                                    // Ограничиваем количество символов до двух
                                    if filtered.count > 2 {
                                        age = String(filtered.prefix(2))
                                    } else {
                                        age = filtered
                                    }
                                    // Ограничиваем значение до 99
                                    if let ageValue = Int(age), ageValue > 99 {
                                        age = "99"
                                    }
                                }
                                .toolbar {
                                    ToolbarItemGroup(placement: .keyboard) {
                                        Spacer()
                                        Button("Готово") {
                                            isAgeFieldFocused = false
                                        }
                                    }
                                }
                        }
                        .background(Color.grayButton)
                        
                        // Список критериев
                        VStack(spacing: 1) {
                            ForEach($criteria) { $criterion in
                                CriterionRowPESI(criterion: $criterion)
                            }
                            .background(Color.grayButton)
                        }
                        .background(Color.backtables)
                        
                        // Результаты
                        VStack(spacing: 1) {
                            HStack(spacing: 10) {
                                Text("Сумма баллов:")
                                    .font(.subheadline)
                                    .fontWeight(.bold)
                                    .frame(maxWidth: 200, alignment: .leading)
                                Spacer()
                                Text("\(displayedPoints)")
                                    .font(.subheadline)
                                    .fontWeight(.bold)
                                Spacer()
                            }
                            .padding(10)
                            .background(Color.grayButton)
                            .onAppear {
                                animatePointsChange()
                            }
                            .onChange(of: totalPoints) { _ in
                                animatePointsChange()
                            }
                            
                            HStack(spacing: 10) {
                                Text("Класс риска:")
                                    .font(.subheadline)
                                    .fontWeight(.bold)
                                    .frame(maxWidth: 200, alignment: .leading)
                                Spacer()
                                Text("\(riskClass)")
                                    .font(.subheadline)
                                    .fontWeight(.bold)
                                Spacer()
                            }
                            .padding(10)
                            .background(Color.grayButton)
                            
                            HStack(spacing: 10) {
                                
                                Text("\(riskLevel)")
                                    .font(.subheadline)
                                    .fontWeight(.bold)
                                Spacer()
                            }
                            .padding(10)
                            .background(Color.grayButton)
                        }
                        .onTapGesture {
                            withAnimation(.snappy) {
                                isTextExpanded.toggle()
                                if let index = favoritesManager.favorites.firstIndex(where: { $0.viewIdentifier == allViewIdentifiers }) {
                                    favoritesManager.favorites[index].isExpanded.toggle() // Изменяем состояние
                                }
                            }
                        }
                        .frame(maxWidth: .infinity)
                    }
                    .background(Color.backtables)
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                    )
                    
                }
            }
        }
        .background(
            GeometryReader { geometry in
                Color.clear
                    .preference(key: ContentSizePreferenceKey.self, value: geometry.size)
            }
        )
        .onPreferenceChange(ContentSizePreferenceKey.self) { _ in
            // Ничего не нужно делать здесь
        }
        
        .padding(2)
        .contextMenu {
            switch context {
            case .favorites:
                Button(action: {
                    removeFromFavorites()
                }) {
                    Text("Удалить из избранного")
                    Image(systemName: "star.slash")
                }
            case .nonFavorites:
                if isInFavorites {
                    Button(action: {
                        removeFromFavorites()
                    }) {
                        Text("Удалить из избранного")
                        Image(systemName: "star.slash")
                    }
                } else {
                    Button(action: {
                        addToFavorites()
                    }) {
                        Text("Добавить в избранное")
                        Image(systemName: "star.fill")
                    }
                }
                
                
            default:
                EmptyView()
            }
        }
        .alert(isPresented: $showAlert) {
            Alert(title: Text(alertMessage))
        }
    }
    private func animatePointsChange() {
        let stepTime = 0.035 // Интервал между изменениями значений

        Timer.scheduledTimer(withTimeInterval: stepTime, repeats: true) { timer in
            if displayedPoints == totalPoints {
                timer.invalidate()
            } else {
                let difference = abs(totalPoints - displayedPoints)
                
                if difference >= 10 {
                    if displayedPoints < totalPoints {
                        displayedPoints += 10
                    } else if displayedPoints > totalPoints {
                        displayedPoints -= 10
                    }
                } else {
                    if displayedPoints < totalPoints {
                        displayedPoints += 1
                    } else if displayedPoints > totalPoints {
                        displayedPoints -= 1
                    }
                }
            }
        }
    }
    
    var totalPoints: Int {
        let agePoints = Int(age) ?? 0
        let criteriaPoints = criteria.filter { $0.isSelected }.map { $0.points }.reduce(0, +)
        return agePoints + criteriaPoints
    }
    
    var riskClass: String {
        switch totalPoints {
        case ..<66:
            return "Класс I"
        case 66...85:
            return "Класс II"
        case 86...105:
            return "Класс III"
        case 106...125:
            return "Класс IV"
        default:
            return "Класс V"
        }
    }
    
    var riskLevel: String {
        switch totalPoints {
        case ..<66:
            return "Очень низкий риск (0 - 1.6%)"
        case 66...85:
            return "Низкий риск (1.7 - 3.5%)"
        case 86...105:
            return "Умеренный риск (3.2 - 7.1%)"
        case 106...125:
            return "Высокий риск (4.0 - 11.4%)"
        default:
            return "Очень высокий риск (10.0 - 24.5%)"
        }
    }
}

struct CriterionRowPESI: View {
    @Binding var criterion: CriterionPESI
    
    var body: some View {
        HStack(spacing: 1) {
            Text(criterion.description)
                .font(.subheadline)
                .foregroundColor(.primary)
                .lineLimit(3)
                .padding(10)
                .padding(.vertical, -5)
            Spacer()
            Button(action: {
                criterion.isSelected.toggle()
            }) {
                Image(systemName: criterion.isSelected ? "checkmark.circle.fill" : "multiply.circle.fill")
                    .foregroundColor(criterion.isSelected ? .green : .gray)
                    .scaleEffect(1.25)
                    .padding(10)
                    .padding(.vertical, -5)
            }
        }
        .background(Color.grayButton)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    PESI()
}
