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
    var body: some View {
        VStack {
            MyViewBuilder(title: Text("PESI"), content: Text("Оценка прогноза 30-дневного летального исхода больных с ТЭЛА")).buildBlue591TextScales(isTextExpanded: isTextExpanded)
                .onTapGesture {
                    withAnimation(.snappy) {
                        isTextExpanded.toggle()
                    }
                }
            if isTextExpanded {
                MyViewBuilder(title: Text(""), content: Text("""
                **Шкала PESI** используется для прогнозирования риска смертности у пациентов с острой тромбоэмболией легочной артерии (ТЭЛА). Она помогает определить необходимость госпитализации и интенсивности терапии.
                """)).buildGrayText()
                    .onTapGesture {
                        withAnimation(.snappy) {
                            isTextExpanded.toggle()
                        }
                    }
                VStack  {
                    VStack(spacing: 1) {
                        MyViewBuilder(title: Text(""), content: Text("**Оценка риска по шкале PESI**")).buildGrayInText()
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
                                    .font(.headline)
                                    .fontWeight(.bold)
                                    .frame(maxWidth: 200, alignment: .leading)
                                Spacer()
                                Text("\(displayedPoints)")
                                    .font(.headline)
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
                                    .font(.headline)
                                    .fontWeight(.bold)
                                    .frame(maxWidth: 200, alignment: .leading)
                                Spacer()
                                Text("\(riskClass)")
                                    .font(.headline)
                                    .fontWeight(.bold)
                                Spacer()
                            }
                            .padding(10)
                            .background(Color.grayButton)
                            
                            HStack(spacing: 10) {
                                
                                Text("\(riskLevel)")
                                    .font(.headline)
                                    .fontWeight(.bold)
                                Spacer()
                            }
                            .padding(10)
                            .background(Color.grayButton)
                        }
                        .onTapGesture {
                            withAnimation(.snappy) {
                                isTextExpanded.toggle()
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
