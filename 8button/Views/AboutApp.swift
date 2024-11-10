//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI
import StoreKit

struct AboutApp: View {
    @AppStorage("fontSize") var fontSize: Double = 14.0
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.sizeCategory) var sizeCategory
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @EnvironmentObject private var entitlementManager: EntitlementManager
    @EnvironmentObject private var purchaseManager: PurchaseManager
    @EnvironmentObject private var trialManager: TrialManager // Добавляем trialManager

    @State private var isTextExpanded1 = false
    @State private var isTextExpanded2 = false
    let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as! String
    let buildNumber = Bundle.main.infoDictionary?["CFBundleVersion"] as! String
    
    var formattedRemainingTime: String {
            if let remainingTime = trialManager.remainingTime, remainingTime > 0 {
                let days = Int(remainingTime) / (24 * 3600)
                let hours = (Int(remainingTime) % (24 * 3600)) / 3600
                let minutes = (Int(remainingTime) % 3600) / 60
                // Вы можете также добавить секунды, если нужно
                // let seconds = Int(remainingTime) % 60

                return "\(days) дн \(hours) ч \(minutes) мин"
            } else {
                return "Пробный период истёк"
            }
        }
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack (spacing: 5) {
                    VStack (alignment: .center){
                        Image("About")
                            .resizable()
                            .frame(maxWidth: 180)
                            .frame(maxHeight: 180)
                            .scaledToFit()
                            .clipShape(Rectangle())
                    }
                        
                        VStack (spacing: 1){
                            Text("""
                            **Приложение для работников скорой медицинской помощи и студентов-медиков Республики Беларусь**
                            """)
                            .multilineTextAlignment(.center)
                            .textSelection(.enabled)
                            .padding(.vertical, 10)
                            .padding(.horizontal, 10)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                            .fixedSize(horizontal: false, vertical: true)
                            .frame(minHeight: 20)
                            .modifier(ThemeGrayColorModifier())
                            .font(.subheadline)
                            .cornerRadius(10)
                            
                            Divider()
                                .background(Color.divider)
                                .padding(.horizontal, 5)
                            Text("""
                            • Содержит клинические протоколы (стандарты диагностики и лечения), приказы и постановления разработанные МЗ РБ.
                            • Присутствуют шпаргалки, шкалы, различные тексты и таблицы для облегчения работы на СМП.
                            • **Приложение работает без интернета и доступно для использования в любой момент времени**.
                            """)
                            .multilineTextAlignment(.leading)
                            .textSelection(.enabled)
                            .padding(.vertical, 5)
                            .padding(.horizontal, 10)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .fixedSize(horizontal: false, vertical: true)
                            .frame(minHeight: 20)
                            .modifier(ThemeGrayColorModifier())
                            .font(.subheadline)
                            .cornerRadius(10)
                            
                        }
                        .background(Color.grayButton)
                        .cornerRadius(10)
                        .overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                        )
                        
                    
                    
                        
                        VStack (spacing: 1){
                            Text("""
                            Приложение предназначено для использования медицинскими работниками.
                            Лица, использующие эти данные для медицинских целей, не должны полностью полагаться на точность представленных здесь данных
                            """)
                            .multilineTextAlignment(.leading)
                            .textSelection(.enabled)
                            .padding(.vertical, 5)
                            .padding(.horizontal, 10)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .fixedSize(horizontal: false, vertical: true)
                            .frame(minHeight: 20)
                            .foregroundColor(.red)
                            .modifier(ThemeGrayColorModifier())
                            .font(.subheadline)
                            .bold()
                            .cornerRadius(10)
                            
                        }
                        .background(Color.grayButton)
                        .cornerRadius(10)
                        .overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                        )
                    if trialManager.isTrialActive && !entitlementManager.hasPro {
                                            VStack(spacing: 1) {
                                                Text("Оставшееся время пробного периода:")
                                                    .multilineTextAlignment(.center)
                                                    .textSelection(.enabled)
                                                    .padding(.vertical, 5)
                                                    .padding(.horizontal, 10)
                                                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                                                    .fixedSize(horizontal: false, vertical: true)
                                                    .frame(minHeight: 20)
                                                    .modifier(ThemeGrayColorModifier())
                                                    .font(.subheadline)
                                                    .cornerRadius(10)
                                                Divider()
                                                    .background(Color.divider)
                                                    .padding(.horizontal, 5)
                                                Text(formattedRemainingTime)
                                                    .multilineTextAlignment(.center)
                                                    .bold()
                                                    .textSelection(.enabled)
                                                    .padding(.vertical, 5)
                                                    .padding(.horizontal, 10)
                                                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                                                    .fixedSize(horizontal: false, vertical: true)
                                                    .frame(minHeight: 20)
                                                    .modifier(ThemeGrayColorModifier())
                                                    .font(.subheadline)
                                                    .cornerRadius(10)
                                            }
                                            .background(Color.grayButton)
                                            .cornerRadius(10)
                                            .overlay(
                                                RoundedRectangle(cornerRadius: 10)
                                                    .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                            )
                                        }
                    VStack (spacing: 5) {
                        if entitlementManager.hasPro {
                            VStack (spacing: 1){
                                Text("""
                                **Активные подписки и покупки:**
                                """)
                                .multilineTextAlignment(.center)
                                .textSelection(.enabled)
                                .padding(.vertical, 5)
                                .padding(.horizontal, 10)
                                .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                                .fixedSize(horizontal: false, vertical: true)
                                .frame(minHeight: 20)
                                .modifier(ThemeGrayColorModifier())
                                .font(.subheadline)
                                .cornerRadius(10)
                                Divider()
                                    .background(Color.divider)
                                    .padding(.horizontal, 5)
                                Text(purchaseManager.getSubscriptionDetails())
                                    .multilineTextAlignment(.center)
                                    .bold()
                                    .textSelection(.enabled)
                                    .padding(.vertical, 5)
                                    .padding(.horizontal, 10)
                                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                    .fixedSize(horizontal: false, vertical: true)
                                    .frame(minHeight: 20)
                                    .modifier(ThemeGrayColorModifier())
                                    .font(.subheadline)
                                    .cornerRadius(10)
                            }
                            .onAppear {
                                Task {
                                    do {
                                        try await purchaseManager.loadProducts()
                                        await purchaseManager.updatePurchasedProducts()
                                    } catch {
                                        print("Error loading products: \(error)")
                                    }
                                }
                            }
                            .background(Color.grayButton)
                            .cornerRadius(10)
                            .overlay(RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                            )
                        }
                        
                        if trialManager.isTrialActive && !entitlementManager.hasPro {
                            NavigationLink (destination: StoreKit10()) {
                                VStack (alignment: .center) {
                                    Text("Приобрести подписку")
                                        .multilineTextAlignment(.center)
                                        .padding(.horizontal, 3.0)
                                        .font(.subheadline)
                                    Text("(выбор подходящей покупки)")
                                        .multilineTextAlignment(.center)
                                        .padding(.horizontal, 3.0)
                                        .font(.footnote)
                                        .foregroundColor(colorScheme == .dark ? Color.white.opacity(0.4) : Color.gray)
                                }
                                .padding(7.0)
                                .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                                .fixedSize(horizontal: false, vertical: true)
                                .fontWeight(.semibold)
                                .frame(minHeight: 49)
                                .modifier(ThemeBlueColorModifier())
                                .background(Color.blueButtonStoreKit)
                                .background(Color.grayButton)
                                .cornerRadius(10)
                                .overlay(RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                )
                            }
                        }
                    }
                    NavigationLink (destination: WhatsNewAll()) {
                        VStack (alignment: .center) {
                            Text("История обновлений")
                                .multilineTextAlignment(.center)
                                .padding(.horizontal, 3.0)
                                .font(.subheadline)
                            Text("подробное описание нововведений")
                                .multilineTextAlignment(.center)
                                .padding(.horizontal, 3.0)
                                .font(.footnote)
                                .foregroundColor(colorScheme == .dark ? Color.white.opacity(0.4) : Color.gray)
                        }
                        .padding(7.0)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                        .fixedSize(horizontal: false, vertical: true)
                        .fontWeight(.semibold)
                        .frame(minHeight: 49)
                        .modifier(ThemeBlueColorModifier())
                        .background(Color.blueButtonStoreKit)
                        .background(Color.grayButton)
                        .cornerRadius(10)
                        .overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                        )
                    }
                    Spacer(minLength: 10)
                    AboutAppPersonal()
                    Spacer(minLength: 10)
                    HStack (spacing: 10) {
                        ZStack {
                            Image("telegram")
                                .resizable()
                                .scaledToFit()
                                .frame(maxWidth: 40, maxHeight: 40)
                                .padding(10)
                                
                                
                        }
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                        .fixedSize(horizontal: false, vertical: true)
                        .frame(minHeight: 50)
                        .background(Color.grayButton)
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5) // Устанавливаем цвет и ширину границы
                        )
                        .onTapGesture {
                            guard let url = URL(string: "https://t.me/ambulancedocs") else { return }
                            UIApplication.shared.open(url)
                        }
                        ZStack {
                            Image("insta")
                                .resizable()
                                .scaledToFit()
                                .frame(maxWidth: 40, maxHeight: 40)
                                .padding(10)
                                
                                
                        }
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                        .fixedSize(horizontal: false, vertical: true)
                        .frame(minHeight: 50)
                        .background(Color.grayButton)
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5) // Устанавливаем цвет и ширину границы
                        )
                        .onTapGesture {
                            guard let url = URL(string: "https://www.instagram.com/ambulance.docs") else { return }
                            UIApplication.shared.open(url)
                        }
                        ZStack {
                            Image("tiktok")
                                .resizable()
                                .scaledToFit()
                                .frame(maxWidth: 40, maxHeight: 40)
                                .padding(10)
                                
                                
                        }
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                        .fixedSize(horizontal: false, vertical: true)
                        .frame(minHeight: 50)
                        .foregroundColor(.blue)
                        .background(Color.grayButton)
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5) // Устанавливаем цвет и ширину границы
                        )
                        .onTapGesture {
                            guard let url = URL(string: "https://www.tiktok.com/@ambulance.docs") else { return }
                            UIApplication.shared.open(url)
                        }
                        ZStack {
                            Image("web")
                                .resizable()
                                .scaledToFit()
                                .frame(maxWidth: 40, maxHeight: 40)
                                .padding(10)
                                
                                
                        }
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                        .fixedSize(horizontal: false, vertical: true)
                        .frame(minHeight: 50)
                        .foregroundColor(.blue)
                        .background(Color.grayButton)
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5) // Устанавливаем цвет и ширину границы
                        )
                        .onTapGesture {
                            guard let url = URL(string: "http://ambulance-docs.site") else { return }
                            UIApplication.shared.open(url)
                        }
                    }
                    Spacer(minLength: 10)
                    
                    
                    
                    VStack (spacing:10){
                        Button {
                            _ = Task<Void, Never> {
                                do {
                                    try await AppStore.sync()
                                } catch {
                                    print(error)
                                }
                            }
                        } label: {
                            Text("Восстановить покупки")
                                .padding(7.0)
                                .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                                .fixedSize(horizontal: false, vertical: true)
                                .fontWeight(.semibold)
                                .frame(minHeight: 49)
                                .frame(minWidth: 49)
                                .foregroundColor(.blue)
                                .background(Color.grayButton)
                                .font(.subheadline)
                                .cornerRadius(10)
                                .overlay(RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                )
                        }
                        
                        Text("Лицензионное соглашение (EULA)")
                            .padding(7.0)
                        //                .lineLimit(2)
                        
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                            .fixedSize(horizontal: false, vertical: true)
                            .fontWeight(.semibold)
                            .frame(minHeight: 49)
                            .frame(minWidth: 49)
                        
                            .foregroundColor(.blue)
                        //                .background(Color.blueButton)
                            .background(Color.grayButton)
                            .font(.subheadline)
                            .cornerRadius(10)
                            .overlay(RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                            )
                            .onTapGesture {
                                guard let url = URL(string: "https://www.apple.com/legal/internet-services/itunes/dev/stdeula/") else { return }
                                UIApplication.shared.open(url)
                            }
                        Text("Политика конфиденциальности")
                            .padding(7.0)
                        //                .lineLimit(2)
                        
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                            .fixedSize(horizontal: false, vertical: true)
                            .fontWeight(.semibold)
                            .frame(minHeight: 49)
                            .frame(minWidth: 49)
                        
                            .foregroundColor(.blue)
                        //                .background(Color.blueButton)
                            .background(Color.grayButton)
                            .font(.subheadline)
                            .cornerRadius(10)
                            .overlay(RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                            )
                            .onTapGesture {
                                guard let url = URL(string: "http://ambulance-docs.site/privacy.html") else { return }
                                UIApplication.shared.open(url)
                            }
                        
                    }
                }
                .padding(.horizontal, 10)
                .padding(.bottom, 55)
            }
            
            .navigationBarBackButtonHidden(false)
            .navigationBarTitle("",displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    VStack {
                        Text("AmbulanceDocs")
                            .font(.headline)
                            .bold()
                        Text("«О приложении»")
                            .font(.caption2)
                    }
                }
                
            }
            //        .padding(.horizontal, 200)
            //            .edgesIgnoringSafeArea(.bottom)
            .background(Color.back)
            .environment(\.sizeCategory, fontSizeCategory)
        }
        var fontSizeCategory: ContentSizeCategory {
                switch fontSize {
                case ..<14: return .small
                case 14..<16: return .medium
                case 16..<18: return .large
                case 18..<20: return .extraLarge
                case 20..<22: return .extraExtraLarge
                default: return .extraExtraExtraLarge
                }
            }
    }
    
}
#Preview {
    AboutApp()
}


struct AboutAppPersonal: View {
    @AppStorage("fontSize") var fontSize: Double = 14.0
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.sizeCategory) var sizeCategory
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @EnvironmentObject private var entitlementManager: EntitlementManager
    @EnvironmentObject private var purchaseManager: PurchaseManager
    @EnvironmentObject private var trialManager: TrialManager // Добавляем trialManager
    
    @State private var isTextExpanded1 = false
    @State private var isTextExpanded2 = false
    let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as! String
    let buildNumber = Bundle.main.infoDictionary?["CFBundleVersion"] as! String
    
    
    var body: some View {
        VStack {
            HStack (spacing: 5) {
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(maxWidth: 20)
                    .frame(maxHeight: 20)
                    .scaledToFit()
                    .clipShape(Rectangle())
                Spacer()
                Text("Artur Vladymcev")
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(maxWidth: 20)
                    .frame(maxHeight: 20)
                    .foregroundColor(Color.clear)
                    .scaledToFit()
                    .clipShape(Rectangle())
            }
            Divider()
                .background(Color.divider)
            HStack (spacing: 5) {
                Image(systemName: "envelope.fill")
                    .resizable()
                    .frame(maxWidth: 20)
                    .frame(maxHeight: 15)
                    .scaledToFit()
                    .clipShape(Rectangle())
                Spacer()
                Text("ambulance.docs@gmail.com")
                    .textSelection(.enabled)
                Spacer()
                Image(systemName: "envelope.fill")
                    .resizable()
                    .frame(maxWidth: 20)
                    .frame(maxHeight: 15)
                    .foregroundColor(Color.clear)
                    .scaledToFit()
                    .clipShape(Rectangle())
            }
            Divider()
                .background(Color.divider)
            HStack (spacing: 5) {
                Image(systemName: "location.square.fill")
                    .resizable()
                    .frame(maxWidth: 20)
                    .frame(maxHeight: 20)
                    .scaledToFit()
                    .clipShape(Rectangle())
                Spacer()
                Text("Belarus, Gomel")
                Spacer()
                Image(systemName: "location.square.fill")
                    .resizable()
                    .frame(maxWidth: 20)
                    .frame(maxHeight: 20)
                    .foregroundColor(Color.clear)
                    .scaledToFit()
                    .clipShape(Rectangle())
            }
            Divider()
                .background(Color.divider)
            HStack (spacing: 5) {
                Image(systemName: "externaldrive.fill.badge.icloud")
                    .resizable()
                    .frame(maxWidth: 20)
                    .frame(maxHeight: 15)
                    .scaledToFit()
                    .clipShape(Rectangle())
                Spacer()
                Text("Version: \(version)")
                Spacer()
                Image(systemName: "externaldrive.fill.badge.icloud")
                    .resizable()
                    .frame(maxWidth: 20)
                    .frame(maxHeight: 15)
                    .foregroundColor(Color.clear)
                    .scaledToFit()
                    .clipShape(Rectangle())
            }
            
        }
            .multilineTextAlignment(.center)
            .textSelection(.enabled)
            .padding(.vertical, 5)
            .padding(.horizontal, 10)
            .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
            .fixedSize(horizontal: false, vertical: true)
            .frame(minHeight: 20)
            .modifier(ThemeGrayColorModifier())
            .font(.subheadline)
            .cornerRadius(10)
            .overlay(RoundedRectangle(cornerRadius: 10)
                .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
            )
    }
}
