//
//  AppTabBarView.swift
//  8button
//
//  Created by Artur Vladymcev on 13.12.23.
//

import SwiftUI

struct AppTabBarView: View {
    
    @State private var selection: String = "home"
    
    var body: some View {
        TabView(selection: $selection) {
            Color.red
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            Color.blue
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Favorites")
                }
            
            Color.orange
            
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
        }
    }
}

#Preview {
    AppTabBarView()
}
