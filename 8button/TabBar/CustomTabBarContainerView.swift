import SwiftUI
import Foundation

struct CustomTabBarContainerView: View {
    @Binding var selection: TabBarItem

    @Binding var homePath: NavigationPath
    @Binding var adultPath: NavigationPath
    @Binding var childPath: NavigationPath
    @Binding var organizerPath: NavigationPath
    @Binding var searchPath: NavigationPath

    @Binding var homeResetID: UUID
    @Binding var adultResetID: UUID
    @Binding var childResetID: UUID
    @Binding var organizerResetID: UUID
    @Binding var searchResetID: UUID

    @State private var isResetting: Bool = false

    @EnvironmentObject var favoritesManager: FavoritesManager
    @Environment(\.viewContext) var context: ViewContext
    
    var body: some View {
        ZStack(alignment: .bottom) {
            ZStack {
                if isResetting {
                    currentRootView
                        .transition(.opacity)
                } else {
                    NavigationStack(path: currentPathBinding) {
                        currentRootView
                            .transition(.opacity)
                    }
                    .id(currentResetID)
                    .transition(.opacity)
                }
            }
            .animation(.easeInOut(duration: 0.4), value: isResetting)

            // Кастомный таббар
            CustomTabBarView(
                tabs: TabBarItem.allCases,
                selection: $selection,
                resetNavigation: resetNavigation
            )
        }
    }

    // Функция для сброса навигации
    private func resetNavigation(for tab: TabBarItem) {
        withAnimation(.easeInOut(duration: 0.4)) {
            isResetting = true
            switch tab {
            case .home:
                homePath = NavigationPath()
                homeResetID = UUID()
            case .adult:
                adultPath = NavigationPath()
                adultResetID = UUID()
            case .child:
                childPath = NavigationPath()
                childResetID = UUID()
            case .organizer:
                organizerPath = NavigationPath()
                organizerResetID = UUID()
            case .search:
                searchPath = NavigationPath()
                searchResetID = UUID()
            }
        }
        // Сбрасываем флаг после завершения анимации
        DispatchQueue.main.asyncAfter(deadline: .now()) {
            withAnimation(.easeOut(duration: 0)) {
                isResetting = false
            }
        }
    }

    // Вспомогательные свойства
    private var currentPathBinding: Binding<NavigationPath> {
        switch selection {
        case .home: return $homePath
        case .adult: return $adultPath
        case .child: return $childPath
        case .organizer: return $organizerPath
        case .search: return $searchPath
        }
    }

    private var currentResetID: UUID {
        switch selection {
        case .home: return homeResetID
        case .adult: return adultResetID
        case .child: return childResetID
        case .organizer: return organizerResetID
        case .search: return searchResetID
        }
    }

    @ViewBuilder
    private var currentRootView: some View {
        switch selection {
        case .home:
            HomeView()
        case .adult:
            SearchAdult()
                .environmentObject(favoritesManager)
        case .child:
            Postanovlenie118ViewGear()
        case .organizer:
            CalendarViewGear()
        case .search:
            AboutAppGear()
        }
    }
}
