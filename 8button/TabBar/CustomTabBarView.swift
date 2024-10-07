import SwiftUI
import UIKit

struct CustomTabBarView: View {
    @Environment(\.colorScheme) private var colorScheme
    let tabs: [TabBarItem]
    @Binding var selection: TabBarItem
    let resetNavigation: (TabBarItem) -> Void

    var body: some View {
        VStack(spacing: 0) {
            ZStack (alignment: .bottom) {
                Text("")
                    .frame(height: 47)
                    .frame(maxWidth: .infinity)
                    .background(.back)
                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
            HStack(alignment: .bottom) {
                ForEach(tabs, id: \.self) { tab in
                    tabView(tab: tab)
                        .onTapGesture {
                            if selection == tab {
                                // Сбрасываем навигацию
                                resetNavigation(tab)
                                
                            } else {
                                withAnimation(.easeInOut(duration: 0.4)) {
                                    selection = tab
                                }
                            }
                        }
                }
            }
            .background(colorScheme == .dark ? Color.black : Color(red: 0.956, green: 0.952, blue: 0.976))
            .ignoresSafeArea(edges: .bottom)
        }
        }
        
    }

    private func tabView(tab: TabBarItem) -> some View {
        VStack {
            Image(systemName: tab.iconName)
                .resizable()
                .frame(width: 25, height: 25)
            Text(tab.title)
                .font(.system(size: 10, weight: .semibold, design: .rounded))
        }
        .foregroundColor(selection == tab ? Color.tabbar : tab.color)
        .padding(.top, 5)
        .frame(maxWidth: .infinity)
        .frame(height: 45)
    }
}
