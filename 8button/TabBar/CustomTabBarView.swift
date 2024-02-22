//
//  CustomTabBarView.swift
//  8button
//
//  Created by Artur Vladymcev on 13.12.23.
//

import SwiftUI
import UIKit

struct CustomTabBarView: View {
    @Environment(\.presentationMode) var presentationMode
    @Environment(\.colorScheme) private var colorScheme
    let tabs: [TabBarItem]

    @Binding var selection: TabBarItem
    @Namespace private var namespace
    @Namespace private var namespace1
    var body: some View {
        tabBarVersion2
    }
}

struct CustomTabBarView_Previews: PreviewProvider {
    
    static let tabs: [TabBarItem] = [
        .home, .adult, .child, .search
    ]
    
    static var previews: some View {
        VStack {
            Spacer()
            CustomTabBarView(tabs: tabs, selection: .constant(tabs.first!))
        }
    }
}

extension CustomTabBarView {
    
    private func tabView2(tab: TabBarItem) -> some View {
        
        
            VStack {
                Image(systemName: tab.iconName)
                    .resizable()
                    .frame(maxWidth: 15, maxHeight: 15)
                    .font(.subheadline)
                
                Text(tab.title)
                    .font(.system(size: 10, weight: .semibold, design: .rounded))
                
            }
            .foregroundColor(selection == tab ? tab.color : Color.gray)
            .padding(.vertical, 6)
            .frame(maxWidth: .infinity)
//            .background(
//                ZStack{
//                    if selection == tab {
//                        RoundedRectangle(cornerRadius: 10)
//                            .fill(tab.color.opacity(0.2))
//                            .matchedGeometryEffect(id: "background_rectangle", in: namespace)
//                    }
//                }
//            )
            .background(
                ZStack{
                    if selection == tab && selection == .home {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(tab.color.opacity(0.2))
                            .matchedGeometryEffect(id: "background_rectangle", in: namespace)
                    } else if selection == tab && selection == .adult {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(tab.color.opacity(0.2))
                            .matchedGeometryEffect(id: "background_rectangle", in: namespace)
                    }else if selection == tab && selection == .child {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(tab.color.opacity(0.2))
                            .matchedGeometryEffect(id: "background_rectangle", in: namespace)
                    } else if selection == tab && selection == .search {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(tab.color.opacity(0.2))
                            .matchedGeometryEffect(id: "background_rectangle", in: namespace)
                    } else {
                    }
                }
            )
            
        
    
    }
    
    private var tabBarVersion2: some View {
        HStack {
            ForEach (tabs, id: \.self) { tab in
                tabView2(tab: tab)
                
                    .onTapGesture {
                        withAnimation(.easeInOut(duration: 0.3)){
                            switchToTab(tab: tab)
                        }
                    }
            }
        }
        
        .background(colorScheme == .dark ? Color(red: 0, green: 0, blue: 0) : Color(red: 0.9568627450980393, green: 0.9529411764705882, blue: 0.9764705882352941))
        .ignoresSafeArea(edges: .bottom)
        .cornerRadius(10)
//        .shadow(color: .shadowGrayRectangle, radius: 0.5)
        .padding(.horizontal)
        
    }
    private func switchToTab(tab: TabBarItem) {
        withAnimation(.easeInOut(duration: 0.3)) {
            if selection == tab && selection == .home{
                withAnimation() {
                    selection = .adult
                }
                withAnimation (.easeInOut(duration: 0.3)) {
                    selection = .home
                }
            } else if selection == tab && selection == .adult{
                withAnimation() {
                    selection = .child
                }
                withAnimation (.easeInOut(duration: 0.3)) {
                    selection = .adult
                }
            } else if selection == tab && selection == .child{
                withAnimation() {
                    selection = .adult
                }
                withAnimation (.easeInOut(duration: 0.3)) {
                    selection = .child
                }
            }else if selection == tab && selection == .search{
                withAnimation() {
                    selection = .child
                }
                withAnimation (.easeInOut(duration: 0.3)) {
                    selection = .search
                }
            } else {
                selection = tab
            }
        }
    }
    
}

#Preview {
        AppTabBarView()
    }
