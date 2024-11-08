import Foundation
import SwiftUI
import Combine

@MainActor
class TrialManager: ObservableObject {
    private let trialActivatedTimeIntervalKey = "trialActivatedTimeInterval"
    private let hasUsedTrialKey = "hasUsedTrial"

    @Published var isTrialActive: Bool = false
    @Published var isTrialExpired: Bool = false
    @Published var remainingTime: TimeInterval? = nil

    private var trialDuration: TimeInterval = 14 * 24 * 60 * 60

    private var timer: Timer?

    var hasUsedTrial: Bool {
        get {
            return KeychainHelper.loadBool(forKey: hasUsedTrialKey) ?? false
        }
        set {
            _ = KeychainHelper.saveBool(newValue, forKey: hasUsedTrialKey)
        }
    }

    var trialActivatedTimeInterval: Double? {
        get {
            return KeychainHelper.loadDouble(forKey: trialActivatedTimeIntervalKey)
        }
        set {
            if let value = newValue {
                _ = KeychainHelper.saveDouble(value, forKey: trialActivatedTimeIntervalKey)
            } else {
                KeychainHelper.deleteItem(forKey: trialActivatedTimeIntervalKey)
            }
        }
    }

    init() {
        checkTrialStatus()
        startTimer()
    }

    func activateTrial() {
        trialActivatedTimeInterval = Date().timeIntervalSince1970
        hasUsedTrial = true
        checkTrialStatus()
    }

    func checkTrialStatus() {
        if let activationTimeInterval = trialActivatedTimeInterval {
            let activationDate = Date(timeIntervalSince1970: activationTimeInterval)
            let elapsedTime = Date().timeIntervalSince(activationDate)
            if elapsedTime < trialDuration {
                isTrialActive = true
                isTrialExpired = false
                remainingTime = trialDuration - elapsedTime
            } else {
                isTrialActive = false
                isTrialExpired = true
                remainingTime = nil
            }
        } else {
            isTrialActive = false
            isTrialExpired = hasUsedTrial
            remainingTime = nil
        }
    }

    private func startTimer() {
        timer = Timer.scheduledTimer(withTimeInterval: 60, repeats: true) { [weak self] _ in
            self?.checkTrialStatus()
        }
    }

    deinit {
        timer?.invalidate()
    }
}


//import Foundation
//import SwiftUI
//import Combine
//
//@MainActor
//class TrialManager: ObservableObject {
//    @AppStorage("trialActivatedTimeInterval") private var trialActivatedTimeInterval: Double?
//    @AppStorage("hasUsedTrial") var hasUsedTrial: Bool = false
//
//    @Published var isTrialActive: Bool = false
//    @Published var isTrialExpired: Bool = false
//    @Published var remainingTime: TimeInterval? = nil // Добавлено свойство
//
//    // Длительность пробного периода в секундах (14 дней по умолчанию)
//    private var trialDuration: TimeInterval = 14 * 24 * 60 * 60
//
//    private var timer: Timer?
//
//    init() {
//        // Для тестирования можно установить более короткий период
//        // self.trialDuration = 60 // 60 секунд
//
//        // Проверяем статус пробного периода при инициализации
//        checkTrialStatus()
//
//        // Запускаем таймер для периодической проверки статуса
//        startTimer()
//    }
//
//    func activateTrial() {
//        trialActivatedTimeInterval = Date().timeIntervalSince1970
//        hasUsedTrial = true
//        checkTrialStatus()
//    }
//
//    func checkTrialStatus() {
//        if let activationTimeInterval = trialActivatedTimeInterval {
//            let activationDate = Date(timeIntervalSince1970: activationTimeInterval)
//            let elapsedTime = Date().timeIntervalSince(activationDate)
//            if elapsedTime < trialDuration {
//                isTrialActive = true
//                isTrialExpired = false
//                remainingTime = trialDuration - elapsedTime // Вычисляем оставшееся время
//            } else {
//                isTrialActive = false
//                isTrialExpired = true
//                remainingTime = nil
//            }
//        } else {
//            isTrialActive = false
//            isTrialExpired = hasUsedTrial
//            remainingTime = nil
//        }
//    }
//
//    private func startTimer() {
//        // Обновляем статус каждую минуту
//        timer = Timer.scheduledTimer(withTimeInterval: 60, repeats: true) { [weak self] _ in
//            self?.checkTrialStatus()
//        }
//    }
//
//    deinit {
//        timer?.invalidate()
//    }
//}
