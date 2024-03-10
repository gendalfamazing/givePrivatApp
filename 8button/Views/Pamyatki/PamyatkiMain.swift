//
//  PrikazyPostanovleniya.swift
//  7button
//
//  Created by Artur Vladymcev on 21.11.23.
//

import SwiftUI

struct PamyatkiMain: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        
        ScrollView {
            Spacer()
            VStack (spacing: 5){
                NavigationLink(destination: SearchAdult()) {
                    MyViewBuilder(title: Text("""
                        01
                        """), content: Text("«Памятки»")).buildTitle1BlueText()
                    
                }
                .navigationBarTitle("Памятки", displayMode: .inline)
                .padding(.horizontal, 10)
                .padding(.bottom, 65)
            }
            //            .padding(.horizontal, 200)
            .background(colorScheme == .dark ? Color(red: 0, green: 0, blue: 0) : Color(red: 0.9568627450980393, green: 0.9529411764705882, blue: 0.9764705882352941))
            .foregroundColor(colorScheme == .dark ? Color(red: 0.9490196078431372, green: 0.9490196078431372, blue: 0.9490196078431372) : Color.black)
            
        }
    }
}

#Preview {
    PamyatkiMain()
}
