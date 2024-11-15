// FavoriteableNavigationLink.swift

import SwiftUI

struct FavoriteableNavigationLink<Label: View, Destination: View>: View {
    var destination: Destination
    var label: () -> Label
    var itemName: String
    var destinationIdentifier: String
    @State private var showingAddToFavorites = false
    @EnvironmentObject var favoritesManager: FavoritesManager

    var body: some View {
        NavigationLink(destination: destination) {
            label()
                .padding(2)
                .contextMenu {
                    Button(action: {
                        showingAddToFavorites = true
                    }) {
                        Text("Добавить в избранное")
                        Image(systemName: "star.fill")
                    }
                }
                
        }
        
        .sheet(isPresented: $showingAddToFavorites) {
            AddToFavoritesView(
                isPresented: $showingAddToFavorites,
                defaultItemName: itemName,
                destinationIdentifier: destinationIdentifier,
                itemName: itemName
            )
            .environmentObject(favoritesManager)
        }
    }
}
