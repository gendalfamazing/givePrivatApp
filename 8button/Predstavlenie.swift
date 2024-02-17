//
//  Predstavlenie.swift
//  8button
//
//  Created by Artur Vladymcev on 5.12.23.
//

import SwiftUI

struct Predstavlenie: View {
    @ObservedObject var dataModel: DataModel
    @State private var searchText = ""

    var body: some View {
        NavigationView {
            List {
                SearchBar(text: $searchText)

                ForEach(dataModel.items.filter {
                    searchText.isEmpty || $0.name.localizedCaseInsensitiveContains(searchText)
                }) { item in
                    Text(item.name)
                }
            }
            .navigationTitle("Главный экран")
        }
    }
}


#Preview {
    Predstavlenie()
}
