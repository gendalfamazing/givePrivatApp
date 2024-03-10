//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//
//Image("Post99Pril1-1")
import SwiftUI

struct Postanovlenie99Alg9View: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var scale: CGFloat = 1.0
    @State private var offset: CGSize = .zero
    @State private var currentScale: CGFloat = 1.0
    
    var body: some View {
        NavigationStack {
            GeometryReader { proxy in
                ScrollView {
                    Image("Post99Pril1-1")
                        .resizable()
                        .frame(maxWidth: proxy.size.width)
                        .frame(maxHeight: proxy.size.height)
                        .scaledToFit()
                        .clipShape(Rectangle())
                        .modifier(ImageModifier(contentSize: CGSize(width: proxy.size.width, height: proxy.size.height)))
                    Image("Post99Pril1-2")
                        .resizable()
                        .frame(maxWidth: proxy.size.width)
                        .frame(maxHeight: proxy.size.height)
                        .scaledToFit()
                        .clipShape(Rectangle())
                        .modifier(ImageModifier(contentSize: CGSize(width: proxy.size.width, height: proxy.size.height)))
                }
            }
            
            //
        }
//        .padding(.horizontal, 10)
        .padding(.bottom, 80)
        //        .padding(.horizontal, 200)
        .edgesIgnoringSafeArea(.bottom)
        //            .background(Color.back)
        .navigationBarBackButtonHidden(false)
        .navigationBarTitle("",displayMode: .inline)
        .toolbar {
            ToolbarItem(placement: .principal) {
                VStack {
                    Text("Приложение 1")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Протокол СЛР»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            
        }
    }
    
}
#Preview {
    Postanovlenie99Alg9View()
}

