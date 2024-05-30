
import Foundation
import StoreKit

@MainActor
class PurchaseManager: NSObject, ObservableObject {

    private let productIds = ["Premium_Year", "PremiumMonth", "Premium_Forever"]

    @Published
    private(set) var products: [Product] = []
    @Published
    private(set) var purchasedProductIDs = Set<String>()
    @Published private(set) var subscriptionInfo: [String: Date] = [:]
    
    private var productDisplayNames: [String: String] = [:]
    private let entitlementManager: EntitlementManager
    private var productsLoaded = false
    private var updates: Task<Void, Never>? = nil

    init(entitlementManager: EntitlementManager) {
        self.entitlementManager = entitlementManager
        super.init()
        self.updates = observeTransactionUpdates()
        SKPaymentQueue.default().add(self)
    }

    deinit {
        self.updates?.cancel()
    }

    func loadProducts() async throws {
            guard !self.productsLoaded else { return }
            self.products = try await Product.products(for: productIds)
            for product in products {
                productDisplayNames[product.id] = product.displayName
            }
            self.productsLoaded = true
        }

    func purchase(_ product: Product) async throws {
        let result = try await product.purchase()

        switch result {
        case let .success(.verified(transaction)):
            // Successful purchase
            await transaction.finish()
            await self.updatePurchasedProducts()
        case let .success(.unverified(_, error)):
            // Successful purchase but transaction/receipt can't be verified
            // Could be a jailbroken phone
            break
        case .pending:
            // Transaction waiting on SCA (Strong Customer Authentication) or
            // approval from Ask to Buy
            break
        case .userCancelled:
            // ^^^
            break
        @unknown default:
            break
        }
    }

    func updatePurchasedProducts() async {
            for await result in Transaction.currentEntitlements {
                guard case .verified(let transaction) = result else {
                    continue
                }

                if transaction.revocationDate == nil {
                    self.purchasedProductIDs.insert(transaction.productID)
                    if let expirationDate = transaction.expirationDate {
                        self.subscriptionInfo[transaction.productID] = expirationDate
                    } else {
                        self.subscriptionInfo.removeValue(forKey: transaction.productID)
                    }
                } else {
                    self.purchasedProductIDs.remove(transaction.productID)
                    self.subscriptionInfo.removeValue(forKey: transaction.productID)
                }
            }

            self.entitlementManager.hasPro = !self.purchasedProductIDs.isEmpty
            
            if self.purchasedProductIDs.isEmpty {
                self.entitlementManager.hasPro = false
            }
        }
    
    func getSubscriptionDetails() -> String {
            var details = ""
            
            for productID in purchasedProductIDs {
                if let displayName = productDisplayNames[productID] {
                    details += "• \(displayName)"
                } else {
                    details += "• \(productID)"
                }
                
                if let expirationDate = subscriptionInfo[productID] {
                    let formatter = DateFormatter()
                    formatter.dateStyle = .short
                    details += " (истекает \(formatter.string(from: expirationDate)))"
                }
                details += ""
            }
            
            if purchasedProductIDs.isEmpty {
                details += "Нет активных подписок или покупок."
            }

            return details
        }

    private func observeTransactionUpdates() -> Task<Void, Never> {
        Task(priority: .background) { [unowned self] in
            for await verificationResult in Transaction.updates {
                // Using verificationResult directly would be better
                // but this way works for this tutorial
                await self.updatePurchasedProducts()
            }
        }
    }
}

extension PurchaseManager: SKPaymentTransactionObserver {
    func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]) {
        for transaction in transactions {
            if transaction.transactionState == .purchased {
                //User payment successful
                print("Transaction successful!")
                SKPaymentQueue.default().finishTransaction(transaction)
            } else if transaction.transactionState == .failed {
                //Payment failed
                
                if let error = transaction.error {
                    let errorDescription = error.localizedDescription
                    print("Transaction failed! \(errorDescription)")
                }
                
                SKPaymentQueue.default().finishTransaction(transaction)
            }
        }
    }
    func paymentQueue(_ queue: SKPaymentQueue, shouldAddStorePayment payment: SKPayment, for product: SKProduct) -> Bool {
        return true
    }
}
