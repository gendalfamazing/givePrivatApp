//
//  BackButton.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct BackButton: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        HStack {
            Image(systemName: "chevron.backward")
                .imageScale(.large)
                .onTapGesture {
                    self.presentationMode.wrappedValue.dismiss()
                }
            
        }
        .foregroundColor(.blue)
    }
}
#Preview {
    BackButton()
}
