

import SwiftUI
import StoreKit

struct StoreKit8: View {
    @EnvironmentObject
    private var entitlementManager: EntitlementManager

    @EnvironmentObject
    private var purchaseManager: PurchaseManager

    var body: some View {
        ScrollView {
        VStack(spacing: 5) {
            if entitlementManager.hasPro {
                AppTabBarView()
            } else {
                VStack(spacing: 1) {
                Image("LaunchImage1")
                    .resizable()
                    .frame(maxWidth: 150)
                    .frame(maxHeight: 200)
                    .scaledToFit()
                    .clipShape(Rectangle())
                MyViewBuilder(title: Text("""
                                          **Купить доступ**:
                                          """),
                              content: Text("""
                                            - **При выборе подписки** Вам будет предоставлен **бесплатный пробный период (30 дней)**. Денежные средства сразу **не будут списаны** с Вашей карты, они **автоматически спишутся через 30 дней, если вы не отмените подписку**.
                                            
                                            - При покупке **Премиума навсегда** денежные средства **сразу спишутся с вашей карты** (без бесплатного пробного периода), однаковы Вы получите **неограниченный во времени доступ к приложению**.
                                            (рекомендуется для пользователей, которые уже пользовались приложением).
                                            """)).buildGrayInAndHiddenBlock()
            }
                ForEach(purchaseManager.products ) { product in
                    Button {
                        _ = Task<Void, Never> {
                            do {
                                try await purchaseManager.purchase(product)
                            } catch {
                                print(error)
                            }
                        }
                    } label: {
                        HStack {
                            HStack (alignment: .center) {
                                
                                Text("\(product.displayPrice)")
                                    .padding(.horizontal, 2)
                                    .frame(maxWidth: 80)
                                    .frame(minHeight: 20)
                                    .font(.footnote)
                                    .padding(5.0)
                                    .background(Color.titleNumber)
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .foregroundColor(Color.titleNumberForeground)
                                    .bold()
                                //                    .lineLimit(1)
                                
                                Text("\(product.displayName)")
                                    .multilineTextAlignment(.leading)
                                    .padding(.horizontal, 3.0)
                                    .font(.footnote)
                                
                                
                            }
                            Spacer()
                        }
                        .padding(7.0)
                        //                .lineLimit(2)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .fixedSize(horizontal: false, vertical: true)
                        .fontWeight(.semibold)
                        .frame(minHeight: 49)
                        .frame(minWidth: 49)
                        .modifier(ThemeBlueColorModifier())
                        //                .background(Color.blueButton)
                        .background(Color.blueButton)
                        .background(Color.grayButton)
                        .font(.subheadline)
                        .cornerRadius(10)
                        .shadow(color: .shadowGrayRectangle, radius: 0.5)
                        
                    }
                }
                
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
                }
                
            }
        }.task {
            _ = Task<Void, Never> {
                do {
                    try await purchaseManager.loadProducts()
                } catch {
                    print(error)
                }
            }
        }
        .padding(.horizontal, 10)
        .padding(.bottom, 55)
    }
        .background(Color.back)
        
        
    }
}
#Preview {
    StoreKit8()
}
