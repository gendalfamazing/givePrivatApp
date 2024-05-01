//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI
import StoreKit

struct TestFlightHomeScreen: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
   
    @State private var isTextExpanded1 = false
    @State private var isTextExpanded2 = false
    let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as! String
    let buildNumber = Bundle.main.infoDictionary?["CFBundleVersion"] as! String
    var body: some View {
        NavigationStack {
        ScrollView {
            VStack (spacing: 5) {
                VStack (alignment: .center){
                    Image("LaunchImage1")
                        .resizable()
                        .frame(maxWidth: 150)
                        .frame(maxHeight: 200)
                        .scaledToFit()
                        .clipShape(Rectangle())
                }
                
                ZStack{
                    MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                    VStack (spacing: 1){
                        Text("""
                            **Приложение для работников скорой (неотложной) медицинской помощи Республики Беларусь**
                            """)
                            .multilineTextAlignment(.center)
                            .textSelection(.enabled)
                            .padding(.vertical, 10)
                            .padding(.horizontal, 10)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                            .fixedSize(horizontal: false, vertical: true)
                            .frame(minHeight: 20)
                            .modifier(ThemeGrayColorModifier())
                            .font(.footnote)
                            .cornerRadius(10)
                        
                        Divider()
                            .background(Color.divider)
                            .padding(.horizontal, 5)
                        Text("""
                            Тестирование приложения временно прекращено в связи с официальной публикацией приложения в **AppStore**.
                            Чтобы продожить использовать приложение, скачайте его по ссылке ниже
                            """)
                            .multilineTextAlignment(.leading)
                            .textSelection(.enabled)
                            .padding(.vertical, 5)
                            .padding(.horizontal, 10)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .fixedSize(horizontal: false, vertical: true)
                            .frame(minHeight: 20)
                            .modifier(ThemeGrayColorModifier())
                            .font(.footnote)
                            .cornerRadius(10)
                        
                    }
                    
                }
                
                //
                Spacer(minLength: 10)
                Text("Скачать из AppStore")
                    .padding(7.0)
                //                .lineLimit(2)
                
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                    .fixedSize(horizontal: false, vertical: true)
                    .fontWeight(.semibold)
                    .frame(minHeight: 49)
                    .frame(minWidth: 49)
                
                    .foregroundColor(.blue)
                //                .background(Color.blueButton)
                    .background(Color.grayButton)
                    .font(.subheadline)
                    .cornerRadius(10)
                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                    .onTapGesture {
                        guard let url = URL(string: "https://apps.apple.com/ru/app/ambulancedocs/id6479942469") else { return }
                        UIApplication.shared.open(url)
                    }
                .padding(.horizontal, 10)
            }
            .padding(.horizontal, 10)
            .padding(.bottom, 55)
        }
        
        .navigationBarBackButtonHidden(false)
        .navigationBarTitle("",displayMode: .inline)
        .toolbar {
            ToolbarItem(placement: .principal) {
                VStack {
                    Text("AmbulanceDocs")
                        .font(.headline)
                        .bold()
                    Text("«Тестовая версия»")
                        .font(.caption2)
                }
            }
            
        }
        //        .padding(.horizontal, 200)
        //            .edgesIgnoringSafeArea(.bottom)
        .background(Color.back)
    }
        
    }
    
}
#Preview {
    TestFlightHomeScreen()
}

