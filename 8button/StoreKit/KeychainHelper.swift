import Foundation
import Security

class KeychainHelper {
    static func saveBool(_ value: Bool, forKey key: String) -> Bool {
        let data = Data([value ? 1 : 0])
        return saveData(data, forKey: key)
    }

    static func loadBool(forKey key: String) -> Bool? {
        guard let data = loadData(forKey: key), data.count == 1 else {
            return nil
        }
        return data[0] == 1
    }

    static func saveDouble(_ value: Double, forKey key: String) -> Bool {
        var val = value
        let data = Data(bytes: &val, count: MemoryLayout<Double>.size)
        return saveData(data, forKey: key)
    }

    static func loadDouble(forKey key: String) -> Double? {
        guard let data = loadData(forKey: key), data.count == MemoryLayout<Double>.size else {
            return nil
        }
        return data.withUnsafeBytes { $0.load(as: Double.self) }
    }

    static func deleteItem(forKey key: String) {
        let query = [
            kSecClass: kSecClassGenericPassword,
            kSecAttrAccount: key
        ] as CFDictionary
        SecItemDelete(query)
    }

    static func saveData(_ data: Data, forKey key: String) -> Bool {
        // Удаляем существующий элемент, если он есть
        deleteItem(forKey: key)

        let attributes = [
            kSecClass: kSecClassGenericPassword,
            kSecAttrAccount: key,
            kSecValueData: data
        ] as CFDictionary

        let status = SecItemAdd(attributes, nil)
        return status == errSecSuccess
    }

    static func loadData(forKey key: String) -> Data? {
        let query = [
            kSecClass: kSecClassGenericPassword,
            kSecAttrAccount: key,
            kSecReturnData: true as CFBoolean,
            kSecMatchLimit: kSecMatchLimitOne
        ] as CFDictionary

        var dataTypeRef: AnyObject?

        let status = SecItemCopyMatching(query, &dataTypeRef)

        if status == errSecSuccess {
            return dataTypeRef as? Data
        } else {
            return nil
        }
    }
}
