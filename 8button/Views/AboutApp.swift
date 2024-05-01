//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI
import StoreKit

struct AboutApp: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
   
    @State private var isTextExpanded1 = false
    @State private var isTextExpanded2 = false
    let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as! String
    let buildNumber = Bundle.main.infoDictionary?["CFBundleVersion"] as! String
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
                
                ZStack{
                    MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                    VStack (spacing: 1){
                        Text("""
                            **Приложение для работников скорой (неотложной) медицинской помощи Республики Беларусь**
                            """)
                            .multilineTextAlignment(.center)
                            .textSelection(.enabled)
                            .padding(.vertical, 10)
                            .padding(.horizontal, 10)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                            .fixedSize(horizontal: false, vertical: true)
                            .frame(minHeight: 20)
                            .modifier(ThemeGrayColorModifier())
                            .font(.caption2)
                            .cornerRadius(10)
                        
                        Divider()
                            .background(Color.divider)
                            .padding(.horizontal, 5)
                        Text("""
                            Приложение содержит клинические протоколы (стандарты диагностики и лечения), приказы и постановления разработанные МЗ РБ.
                            Внешний вид содержащихся данных переработан для лучшего понимания изложенной информации.
                            Так же в приложении присутствуют шпаргалки, шкалы, различные тексты и таблицы для облегчения работы на СМП.
                            Приложение работает без интернета и доступно для использования в любой момент времени.
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
                ZStack{
                    MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
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
                            .font(.caption2)
                            .bold()
                            
                            .cornerRadius(10)
                        
                    }
                }
                ZStack{
                    MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                    VStack (spacing: 1){
                        Text("""
                            Если вы нашли ошибки в тексте либо у вас есть предложения по добавлению информации или функций - пишите на указанный ниже e-mail адрес.
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
                
                //                    ZStack{
                //                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                //                        VStack (spacing: 1){
                //                            MyViewBuilder(title: Text("1"),
                //                                          content: Text("""
                //                                                        Данная программа предназначена для использования медицинскими работниками.
                //
                //                                                        Приложение поддерживает любое устройство под управлением ios 16 и выше.
                //
                //                                                        Лица, использующие эти данные для медицинских целей, не должны полностью полагаться на точность ограниченных здесь данных.
                //
                //                                                        Информация, имеющаяся здесь, поставляется "как есть" и без какой-либо гарантии, явной или подразумеваемой.
                //                                                        """)).buildGrayInText()
                //                                .foregroundColor(.red)
                //
                //                        }
                //
                //                    }
                Spacer(minLength: 10)
                VStack (spacing:10){
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
                        Text("Version: \(version) (\(buildNumber))")
                        Spacer()
                    }
                    Divider()
                        .background(Color.divider)
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
    }
        
    }
    
}
#Preview {
    AboutApp()
}

