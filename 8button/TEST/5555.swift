//
//  5555.swift
//  8button
//
//  Created by Artur Vladymcev on 2.12.23.
//
import SwiftUI



struct ContentView3: View {
    init() {
        UITabBar.appearance().isHidden = true
        selection = 1
    }
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var selection = 0
    @State private var firstPath = [String]()
    @State private var secondPath = [String]()
    
    @State private var tabSelection: TabBarItem = .home
    var body: some View {
        TabView(selection: $tabSelection) {
            NavigationStack(path: $firstPath) {
                
                Button(action: {
                    firstPath.append("")
                }, label: {
                    HStack {
                        Image(systemName: "doc.on.doc")
                            .frame(width: 30, height: 10)
                            .multilineTextAlignment(.leading)
                        Spacer()
                        Spacer()
                        Text("Приказы и постановления")
                        Spacer()
                        
                    }
                    .frame(width: 300, height: 10)
                    .fontWeight(.semibold)
                    .padding()
                    .background(colorScheme == .dark ? Color(red: 0.10196078431372549, green: 0.09803921568627451, blue: 0.10588235294117647) : Color(red: 0.8, green: 0.90, blue: 1))
                    .foregroundColor(colorScheme == .dark ? Color(red: 0.9490196078431372, green: 0.9490196078431372, blue: 0.9490196078431372) : Color.black)
                    .cornerRadius(10)
                    .shadow(radius: 2)
                })
                .navigationDestination(for: String.self) { _ in
                    PrikazyPostanovleniya()
                }
                
                Button(action: {
                    firstPath.append("")
                }, label: {
                    HStack {
                        Image(systemName: "stethoscope")
                            .frame(width: 30, height: 10)
                        Spacer()
                        Spacer()
                        Text("Кодификатор МКБ-10")
                        Spacer()
                        Spacer()
                        
                    }
                    .frame(width: 300, height: 10)
                    .fontWeight(.semibold)
                    .padding()
                    .background(colorScheme == .dark ? Color(red: 0.10196078431372549, green: 0.09803921568627451, blue: 0.10588235294117647) : Color(red: 0.8, green: 0.90, blue: 1))
                    .foregroundColor(colorScheme == .dark ? Color(red: 0.9490196078431372, green: 0.9490196078431372, blue: 0.9490196078431372) : Color.black)
                    .cornerRadius(10)
                    .shadow(radius: 2)
                })
                .navigationDestination(for: String.self) { _ in
                    PrikazyPostanovleniya()
                }
                
            }
            .tag(1)
            NavigationStack(path: $secondPath) {
                Button("Tap me 2") {
                    secondPath.append("")
                }
                .navigationDestination(for: String.self) { _ in
                    Text("Pushed 2")
                }
            }
            .tag(2)
        }
        .toolbar {
            ToolbarItem(placement: .bottomBar) {
                HStack {
                    NavigationLink(destination: HomeView()) {
                        Image(systemName: "doc.text")
                            .foregroundColor(.blue)
                        
                    }
                    NavigationLink(destination: Prikaz1030View()) {
                        Image(systemName: "doc.text")
                            .foregroundColor(.blue)
                        
                    }
                    NavigationLink(destination: Postanovlenie118View()) {
                        Image(systemName: "doc.text")
                            .foregroundColor(.blue)
                        
                    }
                    NavigationLink(destination: SearchableBootcamp()) {
                        Image(systemName: "doc.text")
                            .foregroundColor(.blue)
                        
                    }
                }
            }
        }
        .overlay(alignment: .bottom) {
            HStack {
                Spacer()
                Button("First") {
                    if selection == 1 {
                        firstPath.removeAll()
                    } else {
                        selection = 1
                    }
                }
                Spacer()
                Button("Second") {
                    if selection == 2 {
                        secondPath.removeAll()
                    } else {
                        selection = 2
                    }
                }
                Spacer()
            }
            .padding()
        }
    }
        
}


#Preview {
    ContentView3()
}
