//
//  AppTabBarView.swift
//  8button
//
//  Created by Artur Vladymcev on 13.12.23.
//

import SwiftUI
import Foundation
import UIKit


struct AppTabBarView: View {
    
    @State private var selection: String = "home"
    @State private var tabSelection: TabBarItem = .home
    @State private var homePath: UUID = UUID()
    @State private var adultPath: UUID = UUID()
    @State private var childPath: UUID = UUID()
    @State private var organizerPath: UUID = UUID()
    @State private var searchPath: UUID = UUID()
    var body: some View {
        
        CustomTabBarContainerView(selection: $tabSelection) {
            
            ContentView()
                .id(homePath)
                .tabBarItem(tab: .home, selection: $tabSelection)
            
            NavigationStack(){
                SearchAdult()
            }
            .id(adultPath)
            .tabBarItem(tab: .adult, selection: $tabSelection)
            
            Postanovlenie118View()
                .id(childPath)
                .tabBarItem(tab: .child, selection: $tabSelection)
            
            
            CalendarView()
            
                .id(organizerPath)
                .tabBarItem(tab: .organizer, selection: $tabSelection)
                
            AboutApp()
                .id(searchPath)
                .tabBarItem(tab: .search, selection: $tabSelection)
        }
        .onChange(of: tabSelection) { newTab in
            // Reset the path when switching tabs
            switch newTab {
            case .home:
                withAnimation (.easeInOut(duration: 0.3)) {
                    homePath = UUID()
                }
                
            case .adult:
                withAnimation (.easeInOut(duration: 0.3)) {
                    adultPath = UUID()
                }
                
            case .child:
                withAnimation (.easeInOut(duration: 0.3)) {
                    childPath = UUID()
                }
                
            case .organizer:
                withAnimation (.easeInOut(duration: 0.3)) {
                    organizerPath = UUID()
                }
                
            case .search:
                withAnimation (.easeInOut(duration: 0.3)) {
                    searchPath = UUID()
                }
            
                
            }
        }
        
        .ignoresSafeArea(.keyboard)
    }
    
    
}

#Preview {
        AppTabBarView()
    }



extension AppTabBarView {
    
    private var defaultTabView: some View {
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


