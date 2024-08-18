//
//  HomeView.swift
//  8button
//
//  Created by Artur Vladymcev on 11.12.23.
//

import SwiftUI

struct HomeView: View {
    @AppStorage("selectedTheme") var selectedTheme: String = Theme.system.rawValue
    @AppStorage("fontSize") var fontSize: Double = 14.0
    
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @Environment(\.sizeCategory) var sizeCategory
    
    var body: some View {
        
        NavigationStack {
            ScrollView {
                Spacer(minLength: 5)
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
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5) // Устанавливаем цвет и ширину границы
                                )
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
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5) // Устанавливаем цвет и ширину границы
                        )
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
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5) // Устанавливаем цвет и ширину границы
                                )
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
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5) // Устанавливаем цвет и ширину границы
                        )
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
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5) // Устанавливаем цвет и ширину границы
                                )
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
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5) // Устанавливаем цвет и ширину границы
                        )
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
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5) // Устанавливаем цвет и ширину границы
                                )
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
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5) // Устанавливаем цвет и ширину границы
                        )
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
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5) // Устанавливаем цвет и ширину границы
                                )
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
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5) // Устанавливаем цвет и ширину границы
                        )
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
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5) // Устанавливаем цвет и ширину границы
                                )
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
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5) // Устанавливаем цвет и ширину границы
                        )
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
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5) // Устанавливаем цвет и ширину границы
                                )
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
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5) // Устанавливаем цвет и ширину границы
                        )
                    }
//                    
                    NavigationLink(destination: FastChildDoses()) {
                        HStack {
                            Image(systemName: "doc.text.magnifyingglass")
                                .resizable()
                                .frame(width: 18, height: 24)
                            //                                .padding(.horizontal)
                                .font(.caption2)
                                .padding(.horizontal, 11.0)
                                .padding(.vertical, 8.0)
                                .background(Color.titleNumber)
                                .cornerRadius(10)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5) // Устанавливаем цвет и ширину границы
                                )
                                .foregroundColor(Color.titleNumberForeground)
                            Spacer()
                            Spacer()
                            Text("Поиск детских дозировок")
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
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5) // Устанавливаем цвет и ширину границы
                        )
                    }
                    
                    
                    
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
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Menu {
                            Menu {
                                VStack {
                                    Button(action: {
                                        selectedTheme = Theme.light.rawValue
                                    }) {
                                        Label("Светлая тема", systemImage: "sun.max")
                                            
                                    }
                                    Button(action: {
                                        selectedTheme = Theme.dark.rawValue
                                    }) {
                                        Label("Темная тема", systemImage: "moon")
                                    }
                                    Button(action: {
                                        selectedTheme = Theme.system.rawValue
                                    }) {
                                        Label("Системная тема", systemImage: "circle.righthalf.filled")
                                    }
                                }
                            } label: {
                                Label("Выбор темы", systemImage: "moonphase.last.quarter")
                            } //moonphase.last.quarter.inverse
                            
                            Menu {
                                VStack {
                                    Slider(value: $fontSize, in: 12...20, step: 2) {
                                        
                                    }
                                    .padding()
                                    Text("Текущий размер: \(Int(fontSize))")
                                        .font(.system(size: CGFloat(fontSize)))
                                }
                            } label: {
                                Label("Размер шрифта", systemImage: "textformat.size")
                            }
                        } label: {
                            Image(systemName: "gear")
                                .foregroundColor(.titleNumberForeground)
                        }
                    }
                }
                
            }
            .background(Color.back)
            .environment(\.sizeCategory, fontSizeCategory)
            
            //        .onReceive(NotificationCenter.default.publisher(for: Notification.Name("ResetNavigationForTab"))) { notification in
            //            if let tab = notification.object as? TabBarItem {
            //                // Выполните здесь сброс навигации для вкладки tab
            //                print("Сброс навигации для вкладки \(tab.title)")
            //            }
            //        }
        }
        
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
#Preview {
    HomeView()
}
