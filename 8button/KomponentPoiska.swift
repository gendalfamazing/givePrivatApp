//
//  KomponentPoiska.swift
//  8button
//
//  Created by Artur Vladymcev on 5.12.23.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String

    var body: some View {
        HStack {
            TextField("Поиск", text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal, 10)
        }
        .padding(.vertical, 8)
    }
}

