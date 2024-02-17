//
//  PrikazyPostanovleniya.swift
//  7button
//
//  Created by Artur Vladymcev on 21.11.23.
//

import SwiftUI
import SwiftData

struct CodesMkb10Alphabet: View {
    
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
  
    var body: some View {
        ScrollView {
            Spacer()
            VStack(spacing: 1){
                
                    Spacer()
                    LazyVStack(spacing: 1) {
                        ForEach(CodeMkb.getCodeMkbAlpha().sorted { $0.name < $1.name }, id: \.id) { name in
                            MyViewBuilder(title: Text(name.code), content: Text(name.name)).buildTableCodes()
                        }
                    }
                    .background(Color.back)
                    .cornerRadius(10)
                
                
                
            }
            .padding(.horizontal, 10)
            Spacer()
            Spacer()
                .navigationBarTitle("", displayMode: .inline)
                .padding(.horizontal, 10)
                .padding(.bottom, 85)
            
            
        }
        
        
        
        //            .padding(.horizontal, 200)
        .background(colorScheme == .dark ? Color(red: 0, green: 0, blue: 0) : Color(red: 0.9568627450980393, green: 0.9529411764705882, blue: 0.9764705882352941))
        .foregroundColor(colorScheme == .dark ? Color(red: 0.9490196078431372, green: 0.9490196078431372, blue: 0.9490196078431372) : Color.black)
        .edgesIgnoringSafeArea(.bottom)
        .background(Color.back)
        .navigationBarBackButtonHidden(false)
        .toolbar {
            ToolbarItem(placement: .principal) {
                VStack {
                    Text("МКБ-10")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                }
            }
            
        }
        
    }
    
}

#Preview {
    CodesMkb10Alphabet()
}
