//
//  Prikaz1030Alg1View.swift
//  7button
//
//  Created by Artur Vladymcev on 21.11.23.
//

import SwiftUI

struct WhatsNewAll: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var isTextExpanded1 = false
    var body: some View {
        
        ScrollView {
            Spacer()
            VStack {
                WhatsNew09()
                WhatsNew08()
                WhatsNew07()
                WhatsNew06()
                WhatsNew05()
                WhatsNew04()
                WhatsNew03()
                WhatsNew02()
                WhatsNew01()
            }
            .textSelection(.enabled)
            .padding(.horizontal, 10)
            .padding(.bottom, 55)
        }
        .background(Color.back)
        
        //        .edgesIgnoringSafeArea(.bottom)
        .navigationBarBackButtonHidden(false)
        .toolbar {
            ToolbarItem(placement: .principal) {
                VStack {
                    Text("История обновлений")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("""
                    «Подробное описание нововведений»
                    """)
                    .font(.caption2)
                    .foregroundStyle(Color.toolBar)
                }
            }
            
        }
        
        
    }
    
}
#Preview {
    WhatsNewAll()
}

struct WhatsNew09: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var isTextExpanded1 = false
    var body: some View {
        
            VStack {
                MyViewBuilder(title: Text("1.2.2"), content: Text("12 ноября 2024")).buildBlue591TextScales(isTextExpanded: isTextExpanded1)
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded1.toggle()
                        }
                    }
                if isTextExpanded1{
                    VStack(alignment: .leading, spacing: 10) {
                        
                        Group {
                            Text("**- Добавлена полугодовая подписка**")
                                .font(.subheadline)
                            Text("Теперь вариантов подписок еще больше - выберите наиболее подходящий для вас")
                        }
                        
                        
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
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded1.toggle()
                        }
                    }
                }
                
                
            }
         
    }
    
}

struct WhatsNew08: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var isTextExpanded1 = false
    var body: some View {
        
            VStack {
                MyViewBuilder(title: Text("1.2.1"), content: Text("11 ноября 2024")).buildBlue591TextScales(isTextExpanded: isTextExpanded1)
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded1.toggle()
                        }
                    }
                if isTextExpanded1{
                    VStack(alignment: .leading, spacing: 10) {
                        
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
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded1.toggle()
                        }
                    }
                }
                
                
            }
         
    }
    
}

struct WhatsNew07: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var isTextExpanded1 = false
    var body: some View {
        
            VStack {
                MyViewBuilder(title: Text("1.2.0"), content: Text("14 октября 2024")).buildBlue591TextScales(isTextExpanded: isTextExpanded1)
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded1.toggle()
                        }
                    }
                if isTextExpanded1{
                    VStack(alignment: .leading, spacing: 10) {
                        Group {
                            Text("**- Новый виджет графика работы**")
                                .font(.subheadline)
                            Text("Теперь вы можете просматривать свои рабочие смены прямо на главном экране. Виджет поможет вам всегда быть в курсе своего расписания без необходимости открывать приложение.")
                            Image("whatsnew07widget")
                                .resizable()
                                .scaledToFit()
                                .clipShape(Rectangle())
                                .cornerRadius(10)
                                .overlay(RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                )
                        }
                        
                        Group {
                            Text("**- Исправлена ошибка добавления смен**")
                                .font(.subheadline)
                            Text("Устранили проблему, при которой смены не добавлялись в календарь при выборе интервала повторения. Теперь планирование стало еще проще и удобнее.")
                        }
                        
                        Group {
                            Text("**- Улучшена анимация на iOS 18**")
                                .font(.subheadline)
                            Text("Оптимизировали анимационные эффекты для устройств с iOS 18, обеспечив более плавную и приятную работу приложения.")
                        }
                        Group {
                            Text("**- Информация об обновлении**")
                                .font(.subheadline)
                            Text("Теперь при первом запуске после обновления приложения появится всплывающее окно с информацией об обновлениях, чтобы вы всегда были в курсе всех изменений.")
                        }
                        Group {
                            Text("**- Общие улучшения и оптимизация**")
                                .font(.subheadline)
                            Text("Мы постоянно работаем над тем, чтобы сделать приложение лучше для вас. Внесены небольшие улучшения для повышения стабильности и производительности.")
                        }
                        
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
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded1.toggle()
                        }
                    }
                }
                
                
            }
         
    }
    
}

struct WhatsNew06: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var isTextExpanded1 = false
    var body: some View {
        
            VStack {
                MyViewBuilder(title: Text("1.1.4"), content: Text("06 сентября 2024")).buildBlue591TextScales(isTextExpanded: isTextExpanded1)
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded1.toggle()
                        }
                    }
                if isTextExpanded1{
                    VStack(alignment: .leading, spacing: 10) {
                        Group {
                            Text("**- Обновленные анимации**")
                                .font(.subheadline)
                            Text("Плавные и улучшенные переходы делают работу с приложением еще приятнее.")
                           
                        }
                        
                        Group {
                            Text("**- Небольшие изменения интерфейса**")
                                .font(.subheadline)
                            Text("Оптимизация деталей для вашего удобства и эстетики.")
                        }
                        
                        Group {
                            Text("**- Повышена стабильность**")
                                .font(.subheadline)
                            Text("Улучшенная производительность и надежность приложения для вашей уверенности в каждом использовании.")
                        }
                        
                        
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
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded1.toggle()
                        }
                    }
                }
                
                
            }
         
    }
    
}

struct WhatsNew05: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var isTextExpanded1 = false
    var body: some View {
        
            VStack {
                MyViewBuilder(title: Text("1.1.3"), content: Text("12 августа 2024")).buildBlue591TextScales(isTextExpanded: isTextExpanded1)
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded1.toggle()
                        }
                    }
                if isTextExpanded1{
                    VStack(alignment: .leading, spacing: 10) {
                        Group {
                            Text("**- Новая кнопка 'Настройки'**")
                                .font(.subheadline)
                            Text("На главной странице появилась кнопка “Настройки”, с помощью которой можно выбрать любимую тему оформления (светлая, темная или системная) и настроить размер шрифта для всего приложения, обеспечивая максимальный комфорт при использовании.")
                            Image("whatsnew05ButtSett")
                                .resizable()
                                .scaledToFit()
                                .clipShape(Rectangle())
                                .cornerRadius(10)
                                .overlay(RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                )
                           
                        }
                        
                        Group {
                            Text("**- Обновление раздела 'Календарь для записи рабочих смен'**")
                                .font(.subheadline)
                            Text("Теперь у вас есть возможность добавлять заметки при создании записи в календарь, что поможет лучше организовать рабочее время и не упустить важные детали.")
                            HStack {
                                Image("whatsnew05CalNotes1")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Rectangle())
                                    .cornerRadius(10)
                                    .overlay(RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                    )
                                Image("whatsnew05CalNotes2")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Rectangle())
                                    .cornerRadius(10)
                                    .overlay(RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                    )
                            }
                        }
                        
                        Group {
                            Text("**Важно**")
                                .font(.subheadline)
                            Text("В связи с необходимостью переписать код календаря для добавления функции заметок, данные, внесенные ранее в календарь, могут быть удалены при обновлении. Мы рекомендуем вам перед обновлением сделать скриншоты или записать текущие смены, чтобы сохранить важную информацию.")
                        }
                        
                        
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
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded1.toggle()
                        }
                    }
                }
                
                
            }
         
    }
    
}

struct WhatsNew04: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var isTextExpanded1 = false
    var body: some View {
        
            VStack {
                MyViewBuilder(title: Text("1.1.2"), content: Text("15 июля 2024")).buildBlue591TextScales(isTextExpanded: isTextExpanded1)
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded1.toggle()
                        }
                    }
                if isTextExpanded1{
                    VStack(alignment: .leading, spacing: 10) {
                        Group {
                            Text("**- В раздел 'Шкалы и таблицы' добавлены пункт: Шоковый индекс**")
                                .font(.subheadline)
                            Text("Теперь вы можете быстро и удобно рассчитывать шоковый индекс и объем необходимой инфузии.")
                            
                        }
                        
                        Group {
                            Text("**- В раздел 'Шкалы и таблицы' добавлены пункт: Расчет кислорода**")
                                .font(.subheadline)
                            Text("Новый инструмент для расчета остаточного объема кислорода в баллоне и расчета МОД.")
                            
                        }
                        
                        Group {
                            Text("**- Повышена стабильность**")
                                .font(.subheadline)
                            Text("Были исправлены мелкие ошибки и улучшена общая производительность приложения.")
                        }
                        
                        
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
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded1.toggle()
                        }
                    }
                }
                
                
            }
         
    }
    
}

struct WhatsNew03: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var isTextExpanded1 = false
    var body: some View {
        
            VStack {
                MyViewBuilder(title: Text("1.1.1"), content: Text("24 июня 2024")).buildBlue591TextScales(isTextExpanded: isTextExpanded1)
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded1.toggle()
                        }
                    }
                if isTextExpanded1{
                    VStack(alignment: .leading, spacing: 10) {
                        Group {
                            Text("**- Новый способ управления сменами**")
                                .font(.subheadline)
                            Text("Теперь вы можете добавлять и редактировать смены еще проще! Просто один тап по информации о выбранном дне и появится меню с нужными действиями.")
                            HStack {
                                Image("whatsnew03CalAdd1")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Rectangle())
                                    .cornerRadius(10)
                                    .overlay(RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                    )
                                Image("whatsnew03CalAdd2")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Rectangle())
                                    .cornerRadius(10)
                                    .overlay(RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                    )
                            }
                            
                        }
                        
                        Group {
                            Text("**- Исправление ошибок и улучшение производительности**")
                                .font(.subheadline)
                            Text("Мы исправили несколько мелких ошибок и улучшили общую производительность приложения для вашего удобства.")
                            
                        }
                        
                        
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
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded1.toggle()
                        }
                    }
                }
                
                
            }
         
    }
    
}

struct WhatsNew02: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var isTextExpanded1 = false
    var body: some View {
        
            VStack {
                MyViewBuilder(title: Text("1.1.0"), content: Text("23 июня 2024")).buildBlue591TextScales(isTextExpanded: isTextExpanded1)
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded1.toggle()
                        }
                    }
                if isTextExpanded1{
                    VStack(alignment: .leading, spacing: 10) {
                        Group {
                            Text("**- Новый раздел - 'Календарь для записи рабочих смен'**")
                                .font(.subheadline)
                            Text("Теперь вы можете легко планировать и отслеживать свои рабочие смены с помощью встроенного календаря. Управление вашим графиком стало еще удобнее!")
                            HStack {
                                Image("whatsnew02Callendar1")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Rectangle())
                                    .cornerRadius(10)
                                    .overlay(RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                    )
                                Image("whatsnew02Callendar2")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Rectangle())
                                    .cornerRadius(10)
                                    .overlay(RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                    )
                            }
                            
                        }
                        
                        Group {
                            Text("**- Информация об актуальной подписке**")
                                .font(.subheadline)
                            Text("На странице 'О приложении' добавлена информация о текущем статусе вашей подписки. Теперь вы всегда в курсе актуальной информации о своем подписочном плане.")
                            
                            
                        }
                        
                        Group {
                            Text("**- Исправления и улучшения**")
                                .font(.subheadline)
                            Text("Мы исправили ряд мелких ошибок и улучшили анимации, чтобы сделать использование приложения еще более приятным.")
                            
                        }
                        
                        
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
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded1.toggle()
                        }
                    }
                }
                
                
            }
         
    }
    
}

struct WhatsNew01: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var isTextExpanded1 = false
    var body: some View {
        
            VStack {
                MyViewBuilder(title: Text("1.0.1"), content: Text("30 мая 2024")).buildBlue591TextScales(isTextExpanded: isTextExpanded1)
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded1.toggle()
                        }
                    }
                if isTextExpanded1{
                    VStack(alignment: .leading, spacing: 10) {
                        Group {
                            Text("**- Новый раздел - 'Поиск детских дозировок'**")
                                .font(.subheadline)
                            Text("Теперь вы в 3 клика сможете найти необходимую дозировку препарата, которая применяется при выбранном Вами заболевании. Так же в этом разделе ВСЕ дозировки мг/кг дублированы в мл/кг (для более простого и быстрого поиска дозировки).")
                            HStack {
                                Image("whatsnew01ChildDoses1")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Rectangle())
                                    .cornerRadius(10)
                                    .overlay(RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                    )
                                Image("whatsnew01ChildDoses2")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Rectangle())
                                    .cornerRadius(10)
                                    .overlay(RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                    )
                            }
                            
                        }
                        
                        
                        Group {
                            Text("**- Исправления и улучшения**")
                                .font(.subheadline)
                            Text("Добавлены мелкие анимации, исправлены незначительные ошибки.")
                            
                        }
                        
                        
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
                    .onTapGesture {
                        withAnimation (.snappy) {
                            isTextExpanded1.toggle()
                        }
                    }
                }
                
                
            }
         
    }
    
}
