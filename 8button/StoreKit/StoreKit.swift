

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
                                .frame(maxWidth: 150)
                                .frame(maxHeight: 200)
                                .scaledToFit()
                                .clipShape(Rectangle())
                            ZStack{
                                MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                                VStack (spacing: 1){
                                    Text("""
                                        **AmbulanceDocs** - медицинский справочник для работников СМП Республики Беларусь.
                                        
                                        **При оформление подписки, Вы получите**:
                                        
                                        -Полный доступ БЕЗ ОГРАНИЧЕНИЯ.
                                        -Удобный интерфейс с поддержкой темной темы.
                                        -Большой объем медицинской документации, учебных материалов, шпаргалок и таблиц.
                                        -Регулярные обновления и улучшения, основанные на Ваших отзывах.
                                        
                                        **Подписка имеет 14-дневный бесплатный период, для ознакомления**.
                                        
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
                                            
                                            Text(product.displayName.contains("Premium") ? "\(product.displayPrice)" : product.displayName.contains("год") ? "\(product.displayPrice) / 1 год" : "\(product.displayPrice) / 1 мес.")
                                                .padding(.horizontal, 2)
                                                .frame(maxWidth: 100)
                                                .frame(minHeight: 20)
                                                .font(.footnote)
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
                            }
                            Spacer()
                            
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
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .onTapGesture {
                                    guard let url = URL(string: "https://www.apple.com/legal/internet-services/itunes/dev/stdeula/") else { return }
                                    UIApplication.shared.open(url)
                                }
                            Spacer()
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
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .onTapGesture {
                                    guard let url = URL(string: "http://ambulance-docs.site/privacy.html") else { return }
                                    UIApplication.shared.open(url)
                                }
                            Spacer()
                            Text("Обзор приложения")
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

struct WebView: View {
    let url: URL
    
    var body: some View {
        WebView(url: url)
    }
}
