//
//  CustomTabBarContainerView.swift
//  8button
//
//  Created by Artur Vladymcev on 13.12.23.
//

import SwiftUI
import Foundation




struct CustomTabBarContainerView<Content:View>: View {
    
    @Binding var selection: TabBarItem
    let content: Content
    @State private var tabs: [TabBarItem] = []
    
    init(selection: Binding<TabBarItem>, @ViewBuilder content: () -> Content) {
        self._selection = selection
        self.content = content()
    }
    
    var body: some View {
        ZStack(alignment: .bottom) {
            content
                .ignoresSafeArea()
            CustomTabBarView(tabs: tabs, selection: $selection)
                .shadow(color: .shadowGrayRectangle, radius: 0.5)
        }
        
        .onPreferenceChange(TabBarItemsPreferenceKey.self, perform: { value in
            self.tabs = value
        })
        
    }
}

struct CustomTabBarContainerView_Previews: PreviewProvider {
    
    static let tabs: [TabBarItem] = [
        .home, .adult, .child, .search
    ]
    
    
    static var previews: some View {
        CustomTabBarContainerView(selection: .constant(tabs.first!)) {
            Color.red
        }
    }
}
