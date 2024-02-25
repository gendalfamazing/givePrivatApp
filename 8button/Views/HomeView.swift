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
                    
                    NavigationLink(destination: PrikazyPostanovleniya()) {
                        HStack {
                            
                            Image(systemName: "doc.on.doc")
                                .resizable()
                                .frame(width: 18, height: 20)
//                                .padding(.horizontal)
                                .font(.caption2)
                                .padding(.horizontal, 11.0)
                                .padding(.vertical, 10.0)
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
                            Image(systemName: "stethoscope")
                                .resizable()
                                .frame(width: 25, height: 20)
//                                .padding(.horizontal)
                                .font(.caption2)
                                .padding(.horizontal, 7.5)
                                .padding(.vertical, 10.0)
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
                            Image(systemName: "doc.text.below.ecg")
                                .resizable()
                                .frame(width: 18, height: 20)
//                                .padding(.horizontal)
                                .font(.caption2)
                                .padding(.horizontal, 11.0)
                                .padding(.vertical, 10.0)
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
                    Spacer()
                    
                    
                    
                    
                }
                .navigationBarTitle("СМП", displayMode: .inline)
                .padding()
            }
            
            
//            .padding(.horizontal, 300)
            .edgesIgnoringSafeArea(.bottom)
            .background(Color.back)
            .foregroundColor(colorScheme == .dark ? Color(red: 0.9490196078431372, green: 0.9490196078431372, blue: 0.9490196078431372) : Color.black)
            .navigationBarTitleDisplayMode(.inline)
            
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
