//
//  Postanovlenie118View.swift
//  7button
//
//  Created by Artur Vladymcev on 21.11.23.
//

import SwiftUI

struct Postanovlenie118View: View {
    @AppStorage("fontSize") var fontSize: Double = 14.0
    @EnvironmentObject var themeManager: ThemeManager
    @Environment(\.sizeCategory) var sizeCategory
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationStack {
        ScrollView {
            Spacer()
            VStack (spacing: 5) {
                NavigationLink(destination: Postanovlenie118Alg1View()) {
                    MyViewBuilder(title: Text("01"), content:Text(LocalizedStringKey("Post118Main1"))).buildTitleBlueText()
                }
                
                NavigationLink(destination: Postanovlenie118Alg2View()) {
                    MyViewBuilder(title: Text("02"), content:Text(LocalizedStringKey("Post118Main2"))).buildTitleBlueText()
                }
                
                NavigationLink(destination: Postanovlenie118Alg3View()) {
                    MyViewBuilder(title: Text("03"), content:Text(LocalizedStringKey("Post118Main3"))).buildTitleBlueText()
                }
                
                NavigationLink(destination: Postanovlenie118Alg4View()) {
                    MyViewBuilder(title: Text("04"), content:Text(LocalizedStringKey("Post118Main4"))).buildTitleBlueText()
                }
                
                NavigationLink(destination: Postanovlenie118Alg5View()) {
                    MyViewBuilder(title: Text("05"), content:Text(LocalizedStringKey("Post118Main5"))).buildTitleBlueText()
                }
                
                NavigationLink(destination: Postanovlenie118Alg6View()) {
                    MyViewBuilder(title: Text("06"), content:Text(LocalizedStringKey("Post118Main6"))).buildTitleBlueText()
                }
                
                NavigationLink(destination: Postanovlenie118Alg7View()) {
                    MyViewBuilder(title: Text("07"), content:Text(LocalizedStringKey("Post118Main7"))).buildTitleBlueText()
                }
                
                NavigationLink(destination: Postanovlenie118Alg8View()) {
                    MyViewBuilder(title: Text("08"), content:Text(LocalizedStringKey("Post118Main8"))).buildTitleBlueText()
                }
                
                NavigationLink(destination: Postanovlenie118Alg9View()) {
                    MyViewBuilder(title: Text("09"), content:Text(LocalizedStringKey("Post118Main9"))).buildTitleBlueText()
                }
                
                NavigationLink(destination: Postanovlenie118Alg10View()) {
                    MyViewBuilder(title: Text("10"), content:Text(LocalizedStringKey("Post118Main10"))).buildTitleBlueText()
                }
                
                NavigationLink(destination: Postanovlenie118Alg11View()) {
                    MyViewBuilder(title: Text("11"), content:Text(LocalizedStringKey("Post118Main11"))).buildTitleBlueText()
                }
                
            }
            .padding(.horizontal, 10)
            .padding(.bottom, 55)
            .navigationBarTitle("", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    VStack {
                        Text("Постановление № 118")
                            .font(.headline)
                            .foregroundStyle(Color.toolBar)
                            .bold()
                        Text("""
                            «Детские протоколы»
                            """)
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                    }
                }
                
            }
            
        }
        //            .padding(.horizontal, 200)
        //            .edgesIgnoringSafeArea(.bottom)
        .background(Color.back)
        .environment(\.sizeCategory, fontSizeCategory)
    }
        var fontSizeCategory: ContentSizeCategory {
            switch themeManager.fontSize {
            case ..<14: return .small
            case 14..<16: return .medium
            case 16..<18: return .large
            case 18..<20: return .extraLarge
            case 20..<22: return .extraExtraLarge
            default: return .extraExtraExtraLarge
            }
        }
    }
}

#Preview {
    Postanovlenie118View()
}
