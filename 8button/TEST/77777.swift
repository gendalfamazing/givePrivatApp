//
//  77777.swift
//  8button
//
//  Created by Artur Vladymcev on 7.02.24.
//

import SwiftUI

struct _7777: View {
    
    @State private var selection = 0
    @State private var firstPath = [String]()
    @State private var secondPath = [String]()
    
    var body: some View {
        TabView(selection: $selection) {
            HomeView()
            
            .tag(1)
            
            
            NavigationStack{
                SearchAdult()
            }
                
            .tag(2)
        }
        .overlay(alignment: .bottom) {
            HStack{
                Spacer()
                NavigationLink (destination: HomeView()) {
                    Image(systemName: "house.circle")
                    Text("Home")
                }
                Button {
                    if selection == 1 {
                        firstPath.removeAll()
                    } else {
                        selection = 1
                    }
                } label: {
                    Image(systemName: "house.circle")
                    Text("Home")
                }
                .navigationDestination(for: String.self) { _ in
                    HomeView()
                }
                Spacer()
                Button {
                    if selection == 2 {
                        firstPath.removeAll()
                    } else {
                        selection = 2
                    }
                } label: {
                    Image(systemName: "doc.circle")
                    Text("Adult")
                }
                .navigationDestination(for: String.self) { _ in
                    SearchAdult()
                }
                Spacer()
            }
            .padding()
        }
    }
    
}
#Preview {
    _7777()
}
