//
//  ContentView.swift
//  7button
//
//  Created by Artur Vladymcev on 21.11.23.
//

import SwiftUI

struct ContentView: View {
    @State private var isSearching: Bool = false
    
    @State var selectedTab: Int = 0
    
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @State private var firstPath = [String]()
    var body: some View {
        
        TabView(selection: $selectedTab) {
            HomeView()
            .tabItem {
                Button  {
                    firstPath.append("")
                } label: {
                    Image(systemName: "house.circle")
                    Text("Home")
                }
                .navigationDestination(for: String.self) { _ in
                    HomeView()
                }
                
                    
            }
            .tag(0)
            
            SearchAdult()
                .tabItem {
                    Button  {
                        firstPath.append("")
                    } label: {
                        Image(systemName: "doc.circle")
                        Text("Adult")
                    }
                    
                }
                .tag(1)
            
            Postanovlenie118View()
                .tabItem {
                    Button  {
                        firstPath.append("")
                    } label: {
                        Image(systemName: "book.circle")
                        Text("Child")
                    }

                    
                }
                .tag(2)
            
//            SearchableBootcamp()
//                .frame(maxHeight: 800)
//                .tabItem {
//                    Image(systemName: "magnifyingglass.circle.fill")
//                    Text("Search")
//                }
//                .tag(3)
                
                .padding(.horizontal, 200)
                .edgesIgnoringSafeArea(.bottom)
                .background(colorScheme == .dark ? Color(red: 0, green: 0, blue: 0) : Color(red: 0.9568627450980393, green: 0.9529411764705882, blue: 0.9764705882352941))
            .foregroundColor(colorScheme == .dark ? Color(red: 0.9490196078431372, green: 0.9490196078431372, blue: 0.9490196078431372) : Color.black)
        }
        .background(Color.white)
        .zIndex(1)
        .navigationBarTitle("СМП протоколы", displayMode: .inline)
    }
}

#Preview {
    ContentView()
}
