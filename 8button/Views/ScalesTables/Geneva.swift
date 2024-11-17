import SwiftUI

struct Criterion: Identifiable {
    let id = UUID()
    let description: String
    let points: Int
    var isSelected: Bool = false
}

struct Geneva: View {
    @State private var criteria = [
        Criterion(description: "Возраст >65 лет", points: 1),
        Criterion(description: "Тромбоз глубоких вен или ТЭЛА в анамнезе", points: 3),
        Criterion(description: "Операция под общим наркозом или перелом нижних конечностей ≤1 месяца назад", points: 2),
        Criterion(description: "Злокачественное новообразование (активное или ≤1 года назад)", points: 2),
        Criterion(description: "Кровохарканье", points: 2),
        Criterion(description: "Односторонняя боль в нижней конечности", points: 3),
        Criterion(description: "Частота сердечных сокращений 75-94 ударов в минуту", points: 3),
        Criterion(description: "Частота сердечных сокращений ≥95 ударов в минуту", points: 5),
        Criterion(description: "Односторонний отек и болезненная пальпация по ходу глубоких вен нижних конечностей", points: 4)
    ]
    
    @State private var displayedPoints = 0 // Для анимации
    @State private var isTextExpanded3 = false
    @Environment(\.colorScheme) private var colorScheme
    @EnvironmentObject var favoritesManager: FavoritesManager
    
    @Environment(\.viewContext) var context: ViewContext
    @State private var showAlert = false
    @State private var alertMessage = ""
    var isInFavorites: Bool {
        return favoritesManager.favorites.contains { $0.viewIdentifier == "Geneva" }
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
        let newItem = FavoriteItem(name: "GENEVA", viewIdentifier: "Geneva", isExpandable: true)
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
        if let item = favoritesManager.favorites.first(where: { $0.viewIdentifier == "Geneva" }) {
            favoritesManager.removeItem(item)
        }
    }
    var body: some View {
        VStack {
            MyViewBuilder(title: Text("GENEVA"), content: Text("Оценка вероятности развития ТЭЛА")).buildBlue591TextScalesFavorites(isTextExpanded: isTextExpanded3, isInFavorites: isInFavorites, shouldShowOverlay: shouldShowOverlay)
                
                .onTapGesture {
                    withAnimation(.snappy) {
                        isTextExpanded3.toggle()
                    }
                }
            if isTextExpanded3 {
                MyViewBuilder(title: Text(""), content: Text("""
                    **Женевская шкала** используется для оценки клинической вероятности тромбоэмболии легочной артерии (ТЭЛА). Чем больше факторов, предрасполагающих к возникновению тромбоза глубоких вен и ТЭЛА, а также симптомов и признаков, характерных для данных состояний, тем более вероятно наличие легочной эмболии.
                    """)).buildGrayText()
                    .onTapGesture {
                        withAnimation(.snappy) {
                            isTextExpanded3.toggle()
                        }
                    }
                VStack {
                    VStack(spacing: 1) {
                        VStack {
                            MyViewBuilder(title: Text(""),
                                          content: Text("""
                                                    **Оценка вероятности развития ТЭЛА по шкале Geneva**
                                                    """)).buildGrayInText()
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
                        VStack(spacing: 1) {
                            ForEach($criteria) { $criterion in
                                CriterionRow(criterion: $criterion)
                            }
                        }
                        .background(Color.backtables)
                        
                        VStack(spacing: 1) {
                            HStack(alignment: .bottom, spacing: 10) {
                                Text("Сумма баллов:")
                                    .font(.subheadline)
                                    .fontWeight(.bold)
                                    .frame(maxWidth: 200, alignment: .leading)
                                Spacer()
                                Text("\(displayedPoints)")
                                    .font(.subheadline)
                                    .fontWeight(.bold)
                                    .frame(alignment: .center)
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
                            
                            HStack(alignment: .bottom) {
                                Text("Трехуровневая шкала:")
                                    .font(.subheadline)
                                    .fontWeight(.bold)
                                    .frame(maxWidth: 200, alignment: .leading)
                                Spacer()
                                Text("\(riskLevel)")
                                    .font(.subheadline)
                                    .fontWeight(.bold)
                                Spacer()
                            }
                            .padding(10)
                            .background(Color.grayButton)
                            
                            HStack(alignment: .bottom) {
                                Text("Двухуровневая шкала:")
                                    .font(.subheadline)
                                    .fontWeight(.bold)
                                    .frame(maxWidth: 200, alignment: .leading)
                                Spacer()
                                Text("\(riskLevel1)")
                                    .font(.subheadline)
                                    .fontWeight(.bold)
                                    .frame(alignment: .center)
                                Spacer()
                            }
                            .padding(10)
                            .background(Color.grayButton)
                        }
                        .frame(maxWidth: .infinity)
                        .onTapGesture {
                            withAnimation(.snappy) {
                                isTextExpanded3.toggle()
                            }
                        }
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
        
        .padding(2)
        .contextMenu {
            switch context {
            case .favorites:
                EmptyView()
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
    
    // Метод для анимации изменения суммы баллов
    private func animatePointsChange() {
        let duration = 0.05 // Длительность анимации
        let stepTime = 0.05 // Интервал изменения значений
        
        // Таймер для плавного увеличения или уменьшения значения
        Timer.scheduledTimer(withTimeInterval: stepTime, repeats: true) { timer in
            if displayedPoints == totalPoints {
                timer.invalidate()
            } else if displayedPoints < totalPoints {
                displayedPoints += 1
            } else if displayedPoints > totalPoints {
                displayedPoints -= 1
            }
        }
    }
    
    // Подсчет итоговой суммы баллов
    var totalPoints: Int {
        criteria.filter { $0.isSelected }.map { $0.points }.reduce(0, +)
    }
    
    // Уровень риска по трехуровневой шкале
    var riskLevel: String {
        switch totalPoints {
        case 0...3:
            return "Низкая"
        case 4...10:
            return "Средняя"
        default:
            return "Высокая"
        }
    }
    
    // Уровень риска по двухуровневой шкале
    var riskLevel1: String {
        switch totalPoints {
        case 0...5:
            return "Маловероятна"
        default:
            return "Вероятна"
        }
    }
}

struct CriterionRow: View {
    @Binding var criterion: Criterion
    
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
    Geneva()
}
