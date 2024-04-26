//
//  HomeView.swift
//  8button
//
//  Created by Artur Vladymcev on 11.12.23.
//

import SwiftUI

struct HomeView: View {
    
    
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        
        NavigationStack {
            ScrollView {
                VStack(spacing: 5) {
                    // яды cross.vial
                    NavigationLink(destination: PrikazyPostanovleniya()) {
                        HStack {
                            Image(systemName: "list.bullet.clipboard")
                                .resizable()
                                .frame(width: 18, height: 28)
                            //                                .padding(.horizontal)
                                .font(.caption2)
                                .padding(.horizontal, 11.0)
                                .padding(.vertical, 6.0)
                                .background(Color.titleNumber)
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .foregroundColor(Color.titleNumberForeground)
                            
                            Spacer()
                            
                            Text("Приказы и постановления")
                                .padding(.horizontal, 3.0)
                                .font(.subheadline)
                                .fontWeight(.semibold)
                            Spacer()
                            Image(systemName: ("chevron.right"))
                                .opacity(0.3)
                                .padding(.trailing, 15)
                                .padding(.leading, 10)
                            
                        }
                        .padding(5.0)
                        //        .lineLimit(2)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .fixedSize(horizontal: false, vertical: true)
                        .frame(minHeight: 50)
                        .modifier(ThemeTitleBlueColorModifier())
                        .cornerRadius(10)
                        .shadow(color: .shadowGrayRectangle, radius: 0.5)
                    }
                    
                    
                    NavigationLink(destination: CodesMkb10()) {
                        HStack {
                            Image(systemName: "doc.append") //ivfluid.bag  candybarphone
                                .resizable()
                                .frame(width: 18, height: 24)
                            //                                .padding(.horizontal)
                                .font(.caption2)
                                .padding(.horizontal, 11.0)
                                .padding(.vertical, 8.0)
                                .background(Color.titleNumber)
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .foregroundColor(Color.titleNumberForeground)
                            Spacer()
                            Spacer()
                            Text("МКБ-10")
                                .padding(.horizontal, 3.0)
                                .font(.subheadline)
                                .fontWeight(.semibold)
                            Spacer()
                            Spacer()
                            Image(systemName: ("chevron.right"))
                                .opacity(0.3)
                                .padding(.trailing, 15)
                                .padding(.leading, 10)
                        }
                        .padding(5.0)
                        //        .lineLimit(2)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .fixedSize(horizontal: false, vertical: true)
                        .frame(minHeight: 50)
                        .modifier(ThemeTitleBlueColorModifier())
                        .cornerRadius(10)
                        .shadow(color: .shadowGrayRectangle, radius: 0.5)
                    }
                    
                    NavigationLink(destination: ScalesTables()) {
                        HStack {
                            Image(systemName: "chart.bar.doc.horizontal")
                                .resizable()
                                .frame(width: 18, height: 24)
                            //                                .padding(.horizontal)
                                .font(.caption2)
                                .padding(.horizontal, 11.0)
                                .padding(.vertical, 8.0)
                                .background(Color.titleNumber)
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .foregroundColor(Color.titleNumberForeground)
                            Spacer()
                            Spacer()
                            Text("Шкалы и таблицы")
                                .padding(.horizontal, 3.0)
                                .font(.subheadline)
                                .fontWeight(.semibold)
                            Spacer()
                            Spacer()
                            Image(systemName: ("chevron.right"))
                                .opacity(0.3)
                                .padding(.trailing, 15)
                                .padding(.leading, 10)
                        }
                        .padding(5.0)
                        //        .lineLimit(2)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .fixedSize(horizontal: false, vertical: true)
                        .frame(minHeight: 50)
                        .modifier(ThemeTitleBlueColorModifier())
                        .cornerRadius(10)
                        .shadow(color: .shadowGrayRectangle, radius: 0.5)
                    }
                    NavigationLink(destination: StudMaterials()) {
                        HStack {
                            Image(systemName: "doc.richtext")
                                .resizable()
                                .frame(width: 18, height: 24)
                            //                                .padding(.horizontal)
                                .font(.caption2)
                                .padding(.horizontal, 11.0)
                                .padding(.vertical, 8.0)
                                .background(Color.titleNumber)
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .foregroundColor(Color.titleNumberForeground)
                            Spacer()
                            Spacer()
                            Text("Учебные материалы")
                                .padding(.horizontal, 3.0)
                                .font(.subheadline)
                                .fontWeight(.semibold)
                            Spacer()
                            Spacer()
                            Image(systemName: ("chevron.right"))
                                .opacity(0.3)
                                .padding(.trailing, 15)
                                .padding(.leading, 10)
                        }
                        .padding(5.0)
                        //        .lineLimit(2)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .fixedSize(horizontal: false, vertical: true)
                        .frame(minHeight: 50)
                        .modifier(ThemeTitleBlueColorModifier())
                        .cornerRadius(10)
                        .shadow(color: .shadowGrayRectangle, radius: 0.5)
                    }
                    NavigationLink(destination: InfusionRateCalculatorView()) {
                        HStack {
                            Image(systemName: "ivfluid.bag") //ivfluid.bag  candybarphone
                                .resizable()
                                .frame(width: 16, height: 25)
                            //                                .padding(.horizontal)
                                .font(.caption2)
                                .padding(.horizontal, 12.0)
                                .padding(.vertical, 7.5)
                                .background(Color.titleNumber)
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .foregroundColor(Color.titleNumberForeground)
                            Spacer()
                            Spacer()
                            Text("Калькулятор Допамина")
                                .padding(.horizontal, 3.0)
                                .font(.subheadline)
                                .fontWeight(.semibold)
                            Spacer()
                            Spacer()
                            Image(systemName: ("chevron.right"))
                                .opacity(0.3)
                                .padding(.trailing, 15)
                                .padding(.leading, 10)
                        }
                        .padding(5.0)
                        //        .lineLimit(2)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .fixedSize(horizontal: false, vertical: true)
                        .frame(minHeight: 50)
                        .modifier(ThemeTitleBlueColorModifier())
                        .cornerRadius(10)
                        .shadow(color: .shadowGrayRectangle, radius: 0.5)
                    }
                    NavigationLink(destination: AkusherskoePosobie()) {
                        HStack {
                            Image(systemName: "square.text.square")
                                .resizable()
                                .frame(width: 18, height: 24)
                            //                                .padding(.horizontal)
                                .font(.caption2)
                                .padding(.horizontal, 11.0)
                                .padding(.vertical, 8.0)
                                .background(Color.titleNumber)
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .foregroundColor(Color.titleNumberForeground)
                            Spacer()
                            Spacer()
                            Text("Акушерское пособие")
                                .padding(.horizontal, 3.0)
                                .font(.subheadline)
                                .fontWeight(.semibold)
                            Spacer()
                            Spacer()
                            Image(systemName: ("chevron.right"))
                                .opacity(0.3)
                                .padding(.trailing, 15)
                                .padding(.leading, 10)
                        }
                        .padding(5.0)
                        //        .lineLimit(2)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .fixedSize(horizontal: false, vertical: true)
                        .frame(minHeight: 50)
                        .modifier(ThemeTitleBlueColorModifier())
                        .cornerRadius(10)
                        .shadow(color: .shadowGrayRectangle, radius: 0.5)
                    }
                    NavigationLink(destination: AtlasECG()) {
                        HStack {
                            Image(systemName: "doc.text.below.ecg")
                                .resizable()
                                .frame(width: 18, height: 24)
                            //                                .padding(.horizontal)
                                .font(.caption2)
                                .padding(.horizontal, 11.0)
                                .padding(.vertical, 8.0)
                                .background(Color.titleNumber)
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .foregroundColor(Color.titleNumberForeground)
                            Spacer()
                            Spacer()
                            Text("Атлас ЭКГ")
                                .padding(.horizontal, 3.0)
                                .font(.subheadline)
                                .fontWeight(.semibold)
                            Spacer()
                            Spacer()
                            Image(systemName: ("chevron.right"))
                                .opacity(0.3)
                                .padding(.trailing, 15)
                                .padding(.leading, 10)
                        }
                        .padding(5.0)
                        //        .lineLimit(2)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .fixedSize(horizontal: false, vertical: true)
                        .frame(minHeight: 50)
                        .modifier(ThemeTitleBlueColorModifier())
                        .cornerRadius(10)
                        .shadow(color: .shadowGrayRectangle, radius: 0.5)
                    }
//                    Spacer(minLength: 30)
//                    ZStack{
//                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
//                        VStack (spacing: 1){
//                            Text("""
//                                **Тестовая версия приложения**
//                                """)
//                                .multilineTextAlignment(.center)
//                                .padding(.top, 5)
//                                .padding(.horizontal, 10)
//                                .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
//                                .fixedSize(horizontal: false, vertical: true)
//                                .frame(minHeight: 20)
//                                .modifier(ThemeGrayColorModifier())
//                                .font(.caption2)
//                                .cornerRadius(10)
//                            Text("""
//                                Так как приложение разрабатывается одним разработчиком, запускаю **донатную** систему для помощи в открытии **юр.лица**.
//                                Ваша посильная помощь поможет ускорить **релиз приложения в AppStore.**
//                                """)
//                                .multilineTextAlignment(.leading)
//                                .padding(.horizontal, 10)
//                                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
//                                .fixedSize(horizontal: false, vertical: true)
//                                .frame(minHeight: 20)
//                                .modifier(ThemeGrayColorModifier())
//                                .font(.caption2)
//                                .cornerRadius(10)
//                            Text("""
//                                **БНБ-банк. Номер карты:**
//                                """)
//                                .multilineTextAlignment(.leading)
//                                .padding(.horizontal, 10)
//                                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
//                                .fixedSize(horizontal: false, vertical: true)
//                                .frame(minHeight: 20)
//                                .modifier(ThemeGrayColorModifier())
//                                .font(.caption2)
//                                .cornerRadius(10)
//                            Text("""
//                                5265520005677683
//                                """)
//                                .multilineTextAlignment(.leading)
//                                .textSelection(.enabled)
//                                .padding(.horizontal, 10)
//                                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
//                                .fixedSize(horizontal: false, vertical: true)
//                                .frame(minHeight: 20)
//                                .modifier(ThemeGrayColorModifier())
//                                .font(.subheadline)
//                                .cornerRadius(10)
//                            Text("""
//                                **БНБ-банк. Реквизиты пополнения через ЕРИП:**
//                                """)
//                                .multilineTextAlignment(.leading)
//                                .padding(.horizontal, 10)
//                                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
//                                .fixedSize(horizontal: false, vertical: true)
//                                .frame(minHeight: 20)
//                                .modifier(ThemeGrayColorModifier())
//                                .font(.caption2)
//                                .cornerRadius(10)
//                            Text("""
//                                3001779330262551/7683
//                                """)
//                                .multilineTextAlignment(.leading)
//                                .textSelection(.enabled)
//                                .padding(.bottom, 10)
//                                .padding(.horizontal, 10)
//                                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
//                                .fixedSize(horizontal: false, vertical: true)
//                                .frame(minHeight: 20)
//                                .modifier(ThemeGrayColorModifier())
//                                .font(.subheadline)
//                                .cornerRadius(10)
//                        }
//                    }
                    
                }
                .padding(.horizontal, 10)
                .padding(.bottom, 55)
                .navigationBarTitle("", displayMode: .inline)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        VStack {
                            Text("AmbulanceDocs")
                                .font(.headline)
                                .foregroundStyle(Color.toolBar)
                                .bold()
                            Text("""
                            «Справочник для работников СМП»
                            """)
                            .font(.caption2)
                            .foregroundStyle(Color.toolBar)
                        }
                    }
                    
                }
                
            }
            .background(Color.back)
            
            //        .onReceive(NotificationCenter.default.publisher(for: Notification.Name("ResetNavigationForTab"))) { notification in
            //            if let tab = notification.object as? TabBarItem {
            //                // Выполните здесь сброс навигации для вкладки tab
            //                print("Сброс навигации для вкладки \(tab.title)")
            //            }
            //        }
        }
        
    }
}
#Preview {
    HomeView()
}
