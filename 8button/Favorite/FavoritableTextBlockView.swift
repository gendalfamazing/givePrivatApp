// FavoritableTextBlockView.swift

import SwiftUI

struct FavoritableTextBlockView: View {
    @EnvironmentObject var favoritesManager: FavoritesManager
    @State private var isTextExpanded = false
    @State private var showingAddToFavorites = false

    var title: String
    var contentKey: String // Ключ для локализованного контента

    var body: some View {
        VStack (spacing: 1) {
            HStack {
                Text(title)
                    .padding(.leading, 7)
                Spacer()
                Spacer()
                Image(systemName: ("chevron.down"))
                    .rotationEffect(.degrees(isTextExpanded ? -180 : 0))
                //                        .resizable()
                //                        .frame(width: 20, height: 20)
                    .opacity(0.3)
                //                        .multilineTextAlignment(.center)
                    .padding(.trailing, 7)
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
            .background(isTextExpanded ? Color.toggle : Color.blueButton)
            .font(.subheadline)
            .cornerRadius(10)
            .onTapGesture {
                withAnimation (.snappy) {
                    isTextExpanded.toggle()
                }
            }
            .contextMenu {
                Button(action: {
                    showingAddToFavorites = true
                }) {
                    Text("Добавить в избранное")
                    Image(systemName: "star.fill")
                }
            }
            
            if isTextExpanded{
                VStack {
                    Text(LocalizedStringKey(contentKey))
                        .textSelection(.enabled)
                }
                .padding(10)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .fixedSize(horizontal: false, vertical: true)
                .frame(minHeight: 20)
                .modifier(ThemeGrayColorModifier())
                .font(.subheadline)
                .cornerRadius(10)
                .onTapGesture {
                    withAnimation (.snappy) {
                        isTextExpanded.toggle()
                    }
                }
            }
        }
        .background(Color.grayButton)
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5) // Устанавливаем цвет и ширину границы
        )

        .sheet(isPresented: $showingAddToFavorites) {
            AddTextBlockToFavoritesView(
                isPresented: $showingAddToFavorites,
                defaultItemName: title,
                contentKey: contentKey
            )
            .environmentObject(favoritesManager)
        }
    }
}
