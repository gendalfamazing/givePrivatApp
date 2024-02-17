//
//  LocalozerSearch.swift
//  8button
//
//  Created by Artur Vladymcev on 11.12.23.
//

import SwiftUI

struct ContentView7: View {
    @State private var searchText = ""
    @State private var searchResults: [String] = []
    
    var body: some View {
        VStack {
            TextField("Search", text: $searchText)
                .padding(8)
                .background(Color(.secondarySystemBackground))
                .cornerRadius(8)
                .padding()
            
            List(searchResults, id: \.self) { result in
                Text(result)
            }
        }
        .onAppear {
            // Load the contents of the localization file
            if let path = Bundle.main.path(forResource: "LocalizableString", ofType: "strings", inDirectory: nil, forLocalization: "en") {
                do {
                    let fileContent = try String(contentsOfFile: path)
                    let lines = fileContent.components(separatedBy: .newlines)
                    searchResults = lines.filter { $0.contains(searchText) }
                } catch {
                    print("Error reading file: \(error)")
                }
            }
        }
    }
}

#Preview {
    ContentView7()
}


