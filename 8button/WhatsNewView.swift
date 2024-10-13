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
                        Text("**- Новый виджет графика работы**")
                            .font(.headline)
                        Text("Теперь вы можете просматривать свои рабочие смены прямо на главном экране. Виджет поможет вам всегда быть в курсе своего расписания без необходимости открывать приложение.")
                    }

                    Group {
                        Text("**- Исправлена ошибка добавления смен**")
                            .font(.headline)
                        Text("Устранили проблему, при которой смены не добавлялись в календарь при выборе интервала повторения. Теперь планирование стало еще проще и удобнее.")
                    }

                    Group {
                        Text("**- Улучшена анимация на iOS 18**")
                            .font(.headline)
                        Text("Оптимизировали анимационные эффекты для устройств с iOS 18, обеспечив более плавную и приятную работу приложения.")
                    }
                    Group {
                        Text("**- Информация об обновлении**")
                            .font(.headline)
                        Text("Теперь при первом запуске после обновления приложения появится всплывающее окно с информацией об обновлениях, чтобы вы всегда были в курсе всех изменений.")
                    }
                    Group {
                        Text("**- Общие улучшения и оптимизация**")
                            .font(.headline)
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
