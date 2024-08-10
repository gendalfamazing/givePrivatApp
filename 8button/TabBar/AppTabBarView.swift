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
    @AppStorage("fontSize") var fontSize: Double = 14.0
    @Environment(\.sizeCategory) var sizeCategory
    @State private var selection: String = "home"
    @State private var tabSelection: TabBarItem = .home
    @State private var homePath: UUID = UUID()
    @State private var adultPath: UUID = UUID()
    @State private var childPath: UUID = UUID()
    @State private var organizerPath: UUID = UUID()
    @State private var searchPath: UUID = UUID()
    var body: some View {
        
        CustomTabBarContainerView(selection: $tabSelection) {
            
            HomeViewGear()
                .id(homePath)
                .tabBarItem(tab: .home, selection: $tabSelection)
            
            NavigationStack(){
                SearchAdultGear()
            }
            .environment(\.sizeCategory, fontSizeCategory)
            .id(adultPath)
            .tabBarItem(tab: .adult, selection: $tabSelection)
            
            Postanovlenie118ViewGear()
                .id(childPath)
                .tabBarItem(tab: .child, selection: $tabSelection)
            
            
            CalendarViewGear()
            
                .id(organizerPath)
                .tabBarItem(tab: .organizer, selection: $tabSelection)
                
            AboutAppGear()
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


