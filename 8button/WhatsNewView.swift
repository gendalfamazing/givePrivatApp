import SwiftUI

struct WhatsNewView: View {
    @Environment(\.presentationMode) var presentationMode
    let currentVersion = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? ""
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 16) {
                    Text("Что нового в версии \(currentVersion) :")
                        .font(.title2)
                        .bold()
                        .padding(.bottom, 8)
                    
                    Group {
                        Text("**- Добавлена полугодовая подписка**")
                            .font(.subheadline)
                        Text("Теперь вариантов подписок еще больше - выберите наиболее подходящий для вас.")
                    }
                    Text("Изменения в предыдущей версии 1.2.1:")
                        .font(.title2)
                        .bold()
                        .padding(.bottom, 8)
                    Group {
                        Text("**- Новые шкалы в разделе 'Шкалы и таблицы'**")
                            .font(.subheadline)
                        Text("**Шкала Geneva** – для оценки вероятности развития тромбоэмболии легочной артерии (ТЭЛА).")
                        Text("**Шкала PESI** – для прогнозирования риска смертности у пациентов с ТЭЛА.")
                    }
                    Group {
                        Text("**- Раздел 'История обновлений'**")
                            .font(.subheadline)
                        Text("На странице «Информация о приложении» добавлен новый раздел, где вы можете увидеть все изменения, внесённые в каждом обновлении.")
                    }
                    Group {
                        Text("**- Выделение сегодняшней даты в виджете**")
                            .font(.subheadline)
                        Text("Теперь текущая дата выделяется на сетке календаря виджета, чтобы вы могли легко её определить с первого взгляда.")
                        
                    }
                    
                    Group {
                        Text("**- Упрощённый пробный период**")
                            .font(.subheadline)
                        Text("Пробный период доступен без необходимости выбора подписки. Это особенно полезно для пользователей, у которых не указан способ оплаты в Apple ID, но которые хотят попробовать приложение.")
                    }
                    
                    Group {
                        Text("**- Общие улучшения и оптимизация**")
                            .font(.subheadline)
                        Text("Мы постоянно работаем над тем, чтобы сделать приложение лучше для вас. Внесены небольшие улучшения для повышения стабильности и производительности.")
                    }
                    
                    
                    Text("Спасибо, что выбираете наше приложение! Ваши отзывы и предложения помогают нам становиться лучше. Если у вас есть вопросы или идеи, пожалуйста, поделитесь ими с нами.")
                        .padding(.top, 8)
                }
                .textSelection(.enabled)
                .padding(10)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .fixedSize(horizontal: false, vertical: false)
                .frame(minHeight: 50)
                .modifier(ThemeGrayColorModifier())
                .font(.subheadline)
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5) // Устанавливаем цвет и ширину границы
                )
                .padding(.horizontal, 10)
            }
            .background(.back)
            .navigationBarTitle("Приложение обновлено", displayMode: .inline)
            .navigationBarItems(trailing: Button("Закрыть") {
                presentationMode.wrappedValue.dismiss()
            })
        }
    }
}

#Preview {
    WhatsNewView()
}
