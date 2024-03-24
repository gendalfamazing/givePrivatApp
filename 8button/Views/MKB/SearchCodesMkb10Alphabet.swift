//
//  SearchAdult.swift
//  8button
//
//  Created by Artur Vladymcev on 15.01.24.
//

import SwiftUI
import Combine





@MainActor
final class SearchableViewModelCode: ObservableObject {
    @Published private(set) var allCode: [CodeMkb] = []
    @Published private(set) var filteredCode: [CodeMkb] = []
    @Published var searchText: String = ""
    let manager = CodeManager()
    private var cancellables = Set<AnyCancellable>()
    
    var isSearching: Bool {
        !searchText.isEmpty
    }
    
    init() {
        addSubscribers()
    }
    
    private func addSubscribers() {
        $searchText
            .sink { [weak self] searchText in
                self?.filterCode(seachText: searchText)
            }
            .store(in: &cancellables)
    }
    
    private func filterCode(seachText: String){
        guard !seachText.isEmpty else {
            filteredCode = []
            return
        }
        
        let search = searchText.lowercased()
        filteredCode = allCode.filter({ code in
            let titleContainsSearch = code.name.lowercased().contains(search)
            return titleContainsSearch
        })
    }
    
    func loadCode() async {
        do {
            allCode = try await manager.getCodeMkbAlphaSearch().sorted { $0.name < $1.name }
        } catch {
            print(error)
        }
        
    }
}

struct SearchCode: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @StateObject private var viewModel = SearchableViewModelCode()
    
    var body: some View {
        ZStack {
            ScrollView {
                if viewModel.isSearching && viewModel.filteredCode.isEmpty {
                    // Отобразите сообщение о том, что совпадений не найдено, и задайте фон для этого сообщения
                    Text("Совпадений не найдено")
                        .foregroundColor(.secondary)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.back)
                } else {
                    LazyVStack(spacing: 1) {
                        ForEach(viewModel.isSearching ? viewModel.filteredCode : viewModel.allCode) { code in
                            
                            codeRow(code: code)
//                                .padding(.horizontal, 10)
                            
                        }
                        
                    }
                    
                    .background(Color.back)
                    .cornerRadius(10)
                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                    .padding(.horizontal, 10)
                    .padding(.bottom, 55)
                    
                    
                    //
                }
                
                
                    
                
                
            }
            
            .background(Color.back)
            .searchable(text: $viewModel.searchText, placement: .automatic, prompt: Text("Поиск..."))
            .navigationBarTitle("", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    VStack {
                        Text("МКБ-10")
                            .font(.headline)
                            .foregroundStyle(Color.toolBar)
                            .bold()
                        Text("""
                        «Список по алфавиту»
                        """)
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                    }
                }
                
            }
            .task {
                await viewModel.loadCode()
            }
        }
    }
    
    private struct HighlightedText: View {
        let text: String
        let highlighted: String
        
        var body: some View {
            Text(attributedString)
        }
        
        private var attributedString: AttributedString {
            var attributedString: AttributedString
            
            // Preserve underscores for highlighting:
            let formattedText = text.replacingOccurrences(of: "\\*|[\\[\\]]", with: "", options: .regularExpression)
            
            do {
                attributedString = try AttributedString(markdown: formattedText)
            } catch {
                attributedString = AttributedString(formattedText)
            }
            
            if
                
                let range = attributedString.range(of: highlighted.lowercased()) {
                attributedString[range].backgroundColor = .yellow
            }
            
            
            
            return attributedString
            
        }
    }
    
    private func codeRow(code: CodeMkb) -> some View {
        ZStack {
            HStack {
                ZStack {
                    Text(code.code)
                        .padding(.horizontal, 10)
                        .font(.headline)
                    
                }
                .frame(minWidth: 70)
                Spacer()
                Text(code.name)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .font(.footnote)
                    .padding(3)
                
                Spacer()
            }
            .padding(2)
            .background(Color.grayButton)
        }
//        .cornerRadius(5)
    }
}





#Preview {
    
    SearchCode()
    
}

