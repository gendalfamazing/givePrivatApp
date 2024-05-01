

import SwiftUI
import StoreKit

struct StoreKit8: View {
    @EnvironmentObject
    private var entitlementManager: EntitlementManager
    
    @EnvironmentObject
    private var purchaseManager: PurchaseManager
    
    var body: some View {
        
        VStack {
            VStack(spacing: 5) {
                if entitlementManager.hasPro {
                    AppTabBarView()
                } else {
                    ScrollView {
                        VStack {
                            Image("LaunchImage1")
                                .resizable()
                                .frame(maxWidth: 37)
                                .frame(maxHeight: 50)
                                .scaledToFit()
                                .clipShape(Rectangle())
                            ZStack{
                                MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                                VStack (spacing: 1){
                                    Text("""
                                        **AmbulanceDocs** - медицинский справочник для работников СМП Республики Беларусь.
                                                                                
                                        **При оформление подписки, Вы получите**:
                                                                                
                                        - Доступ к медицинским протоколам, приказам и постановлениям; - Кодификатор МКБ-10; - Более 50 учебных материалов, шпаргалок, таблиц; - Атлас ЭКГ - более 170 примеров ЭКГ при различных патологиях;
                                        - Медицинские калькуляторы;
                                        - Регулярные обновления и улучшения, основанные на Ваших отзывах; - Удобный и интуитивно понятный интерфейс с поддержкой **темной темы**
                                                                                
                                        **Подписка имеет 14-дневный бесплатный период для ознакомления**.
                                                                                
                                        **При покупке Premium Вы получите**:
                                        - Тот же полный функционал приложения, что и при выборе подписки, но неограниченный во времени (одноразовая покупка НАВСЕГДА)
                                                                                
                                        Покупка **Premium** рекомендуется для тех, кто уже пользовался приложением
                                        """)
                                    .multilineTextAlignment(.leading)
                                    .textSelection(.enabled)
                                    .padding(.vertical, 5)
                                    .padding(.horizontal, 10)
                                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                    .fixedSize(horizontal: false, vertical: true)
                                    .frame(minHeight: 20)
                                    .modifier(ThemeGrayColorModifier())
                                    .font(.caption2)
                                    .cornerRadius(10)
                                    
                                }
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
                                            
                                            Text(product.displayName.contains("Premium") ? "\(product.displayPrice)" : product.displayName.contains("год") ? "\(product.displayPrice) / год" : product.displayName.contains("месяц") ? "\(product.displayPrice) / месяц" : product.displayName.contains("year") ? "\(product.displayPrice) / year" : "\(product.displayPrice) / month")
                                                .padding(.horizontal, 2)
                                                .frame(maxWidth: 130)
                                                .frame(minHeight: 20)
                                                .font(.subheadline)
                                                .padding(5.0)
                                                .background(Color.titleNumber)
                                                .cornerRadius(10)
                                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                                .foregroundColor(Color.titleNumberForeground)
                                                .bold()
                                            //                    .lineLimit(1)
                                            VStack (alignment: .leading){
                                                Text("\(product.displayName)")
                                                    .multilineTextAlignment(.leading)
                                                    .padding(.horizontal, 3.0)
                                                    .font(.footnote)
                                                if product.displayName.contains("Premium") {
                                                    
                                                } else if product.displayName.contains("year") || product.displayName.contains("month"){
                                                    Text("(first 14 days free)")
                                                        .multilineTextAlignment(.leading)
                                                        .padding(.horizontal, 3.0)
                                                        .font(.footnote)
                                                        .bold()
                                                        .foregroundColor(product.displayName.contains("навсегда") ? .blue : .red)
                                                } else {
                                                    Text("(первые 14 дней бесплатно)")
                                                        .multilineTextAlignment(.leading)
                                                        .padding(.horizontal, 3.0)
                                                        .font(.footnote)
                                                        .bold()
                                                        .foregroundColor(product.displayName.contains("навсегда") ? .clear : .red)
                                                }
                                            }
                                            
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
                            Spacer()
                            Text("Обзор приложения (переход на сайт)")
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
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .onTapGesture {
                                    guard let url = URL(string: "http://ambulance-docs.site") else { return }
                                    UIApplication.shared.open(url)
                                }
                            HStack {
                                Text("""
                                    Лицензионное 
                                    соглашение (EULA)
                                    """)
                                    .padding(.leading, 10.0)
                                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                                    .foregroundColor(.blue)
                                //                .background(Color.blueButton)
                                    
                                    .font(.caption)
                                    
                                    .onTapGesture {
                                        guard let url = URL(string: "https://www.apple.com/legal/internet-services/itunes/dev/stdeula/") else { return }
                                        UIApplication.shared.open(url)
                                }
                            
                            
                            Text("и")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                            Text("""
                                Политика 
                                конфиденциальности
                                """)
                                .padding(.leading, 10.0)
                                .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                            //                .lineLimit(2)
                            
                                .foregroundColor(.blue)
                            //                .background(Color.blueButton)
                                
                                .font(.caption)
                                
                                .onTapGesture {
                                    guard let url = URL(string: "http://ambulance-docs.site/privacy.html") else { return }
                                    UIApplication.shared.open(url)
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
                                    .padding(10.0)
                                //                .lineLimit(2)
                                
                                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                                    
                                
                                    .foregroundColor(.blue)
                                //                .background(Color.blueButton)
                                    
                                    .font(.subheadline)
                                    
                            }
                            Text("""
                                После бесплатного пробного периода (14 дней), подписка автоматически продлевается по указанной выше цене и сроку действия, если ее не отменить по крайней мере за 24 часа до окончания текущего периода. Оплата будет списана с вашего Apple ID при подтверждении покупки. Плата за продление будет списана с вашего счета в течение 24 часов до окончания текущего периода. Вы можете управлять своими подписками и отменять их, перейдя в настройки учетной записи в App Store после покупки. Неиспользованная часть бесплатного пробного периода будет аннулирована при покупке пользователем подписки на данное приложение.
                                """)
                                .padding(.leading, 10.0)
                                .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                            //                .lineLimit(2)
                            
                                .foregroundColor(.gray)
                            //                .background(Color.blueButton)
                                
                                .font(.caption)
                                
                                .onTapGesture {
                                    guard let url = URL(string: "http://ambulance-docs.site/privacy.html") else { return }
                                    UIApplication.shared.open(url)
                                }
                            
                            
                        }
                        .padding(.horizontal, 10)
                        .padding(.bottom, 10)
                    }
                    .background(.back)
                    .background(ignoresSafeAreaEdges: .all)
                    .navigationBarBackButtonHidden(false)
                    .navigationBarTitle("",displayMode: .inline)
                    .toolbar {
                        ToolbarItem(placement: .principal) {
                            VStack {
                                Text("AmbulanceDocs")
                                    .font(.headline)
                                    .foregroundStyle(Color.toolBar)
                                    .bold()
                                Text("Встроенные покупки")
                                    .font(.caption2)
                                    .foregroundStyle(Color.toolBar)
                                //
                            }
                        }
                        
                    }
                    
                }
            }
            .background(ignoresSafeAreaEdges: .all)
            
            .task {
                _ = Task<Void, Never> {
                    do {
                        try await purchaseManager.loadProducts()
                    } catch {
                        print(error)
                    }
                }
            }
            
            
        }
        
        
        
        
    }
}

#Preview {
    StoreKit8()
}

