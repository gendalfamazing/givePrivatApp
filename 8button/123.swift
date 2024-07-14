//
//  123.swift
//  8button
//
//  Created by Artur Vladymcev on 14.07.24.
//

import SwiftUI

struct SubscriptionView: View {
    var body: some View {
        ScrollView {
        VStack(spacing: 20) {
            Text("AmbulanceDocs")
                .font(.title)
                .fontWeight(.bold)
                .padding(.top)
            
            Text("медицинский справочник для работников СМП Республики Беларусь")
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            VStack(alignment: .leading, spacing: 10) {
                Text("При оформлении подписки, Вы получите:")
                    .font(.headline)
                
                Text("""
                - Доступ к медицинским протоколам, приказам и постановлениям;
                - Кодификатор МКБ-10;
                - Более 50 учебных материалов, шпаргалок, таблиц;
                - Атлас ЭКГ - более 170 примеров ЭКГ при различных патологиях;
                - Медицинские калькуляторы;
                - Регулярные обновления и улучшения, основанные на Ваших отзывах;
                - Удобный и интуитивно понятный интерфейс с поддержкой темной темы
                """)
            }
            .padding(.horizontal)
            
            Text("Подписка имеет 14-дневный бесплатный период для ознакомления.")
                .font(.headline)
                .padding(.horizontal)
                .padding(.top)
            
            VStack(spacing: 10) {
                SubscriptionButton(price: "$14.99", description: "Premium")
                SubscriptionButton(price: "$0.99 / месяц", description: "Подписка на 1 месяц (первые 14 дней бесплатно)")
                SubscriptionButton(price: "$7.99 / год", description: "Подписка на 1 год (первые 14 дней бесплатно)")
            }
            .padding(.horizontal)
            
            Link("Обзор приложения (переход на сайт)", destination: URL(string: "https://yourwebsite.com")!)
                .padding(.top)
                .foregroundColor(.blue)
            
            HStack {
                Link("Лицензионное соглашение (EULA)", destination: URL(string: "https://yourwebsite.com/eula")!)
                    .foregroundColor(.blue)
                Text("и")
                Link("Политика конфиденциальности", destination: URL(string: "https://yourwebsite.com/privacy")!)
                    .foregroundColor(.blue)
            }
            .padding(.horizontal)
            
            Button(action: {
                // Handle restore purchases
            }) {
                Text("Восстановить покупки")
                    .foregroundColor(.blue)
            }
            .padding(.bottom)
            
            Text("После бесплатного пробного периода (14 дней), подписка автоматически продлевается по указанной выше цене и сроку действия, если не отменить её в течение этого периода.")
                .font(.footnote)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
        }
        .padding()
    }
}
}

struct SubscriptionButton: View {
    var price: String
    var description: String

    var body: some View {
        Button(action: {
            // Handle subscription purchase
        }) {
            HStack {
                Text(price)
                Spacer()
                Text(description)
            }
            .padding()
            .background(Color.blue.opacity(0.1))
            .cornerRadius(10)
        }
    }
}


#Preview {
    SubscriptionView()
}
