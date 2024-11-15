// FavoritesView.swift

import SwiftUI

struct FavoritesView: View {
    @EnvironmentObject var favoritesManager: FavoritesManager

    
    
    var body: some View {
        ScrollView {
            Spacer()
            VStack (spacing: 5) {
                if favoritesManager.sections.isEmpty {
                    VStack {
                        Text("Нет элементов в избранном")
                            .font(.headline)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                            .fixedSize(horizontal: false, vertical: true)
                            .frame(minHeight: 50)
                            .foregroundColor(Color.gray)
                        Spacer()
                    }
                }
                if !favoritesManager.favoriteTextBlocks.isEmpty {
                    VStack(alignment: .leading, spacing: 5) {
                        Text("Избранные записи")
                            .font(.headline)
                            .padding(.vertical, 5)
                        
                        ForEach(favoritesManager.favoriteTextBlocks) { textBlock in
                            ExpandableTextBlockView(textBlock: textBlock)
                        }
                    }
                }
                ForEach(favoritesManager.sections) { section in
                    VStack(alignment: .leading, spacing: 1) {
                        HStack {
                            
                            Text(section.name)
                            .font(.footnote)
                            .bold()
                            .padding(.leading, 10)
                            .opacity(0.5)
                            
                            Spacer()
                                // Кнопка удаления раздела
                                Button(action: {
                                    favoritesManager.removeSection(section)
                                }) {
                                    Image(systemName: "trash")
                                        .foregroundColor(.red)
                                }
                            }
                            .padding(.vertical, 5)
                        ForEach(section.items) { item in
                            NavigationLink(destination: destinationView(for: item.destinationIdentifier)) {
                                HStack {
                                    HStack (alignment: .center) {
                                        
                                        Text(item.name)
                                            .multilineTextAlignment(.leading)
                                            .padding(.horizontal, 3.0)
                                            .font(.footnote)
                                            .fontWeight(.semibold)
                                        Spacer()
                                        Spacer()
                                        Image(systemName: ("chevron.right"))
                        //                        .resizable()
                        //                        .frame(width: 20, height: 20)
                                            .opacity(0.3)
                        //                        .multilineTextAlignment(.center)
                                            .padding(.trailing, 7)
                                    }
                                    Spacer()
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
                            .padding(2)
                            .contextMenu {
                                Button(action: {
                                    favoritesManager.removeItem(item, fromSection: section)
                                }) {
                                    Text("Удалить")
                                    Image(systemName: "trash")
                                }
                            }
                        }
                        
                    }
                }
                
                
            }
            .navigationBarTitle("", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    VStack {
                        Text("Избранное")
                            .font(.headline)
                            .foregroundStyle(Color.toolBar)
                            .bold()
                        Text("""
                        «Часто используемые элементы»
                        """)
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                    }
                }
                
            }
            .padding(.horizontal, 8)
            .padding(.bottom, 55)
        }
//            .padding(.horizontal, 200)
//            .edgesIgnoringSafeArea(.bottom)
        .background(Color.back)
      
    }

    @ViewBuilder
    func destinationView(for identifier: String) -> some View {
        switch identifier {
        case "PrikazyPostanovleniya":
            PrikazyPostanovleniya()
        case "CodesMkb10":
            CodesMkb10()
        // Добавьте остальные кейсы для других идентификаторов
        default:
            Text("Неизвестный пункт")
        }
    }
}
