//
//  CustomTabBarContainerView.swift
//  8button
//
//  Created by Artur Vladymcev on 13.12.23.
//

import SwiftUI
import Foundation
import UIKit



struct CustomTabBarContainerView<Content:View>: View {
    
    @Binding var selection: TabBarItem
    let content: Content
    @State private var tabs: [TabBarItem] = []
    
    init(selection: Binding<TabBarItem>, @ViewBuilder content: () -> Content) {
        self._selection = selection
        self.content = content()
    }
    
    var body: some View {
        VStack(spacing: 0) {
            ZStack {
                content
            }
            CustomTabBarView(tabs: tabs, selection: $selection)
        }
    }
}

struct CustomTabBarContainerView_Previews: PreviewProvider {
    
    static let tabs: [TabBarItem] = [
        TabBarItem(iconName: "house", title: "Home", color: Color.red),
        TabBarItem(iconName: "heart.fill", title: "Favorites", color: Color.blue),
        TabBarItem(iconName: "person", title: "Profile", color: Color.green)
    ]
    
    
    static var previews: some View {
        CustomTabBarContainerView(selection: .constant(tabs.first!)) {
            Color.red
        }
    }
}
