//
//  SearchBeta.swift
//  8button
//
//  Created by Artur Vladymcev on 11.12.23.
//


import SwiftUI
import Combine



@MainActor

final class SearchableViewModel: ObservableObject {
    @Published private(set) var allUserData: [UserData] = []
    @Published private(set) var filteredUserData: [UserData] = []
    @Published var searchText: String = ""
    @Published var searchScope: SearchScopeOption = .all
    @Published private (set) var allSearchScopes: [SearchScopeOption] = []
    let manager = UserDataManager()
    private var cancellables = Set<AnyCancellable>()
    
    var isSearching: Bool {
        !searchText.isEmpty
    }
    
    //    var showSearchSuggestions: Bool {
    //        searchText.count < 5
    //    }
    
    enum SearchScopeOption: Hashable {
        case all
        case age(option: Age)
        
        var title: String {
            switch self {
            case .all:
                return "All"
            case .age(option: let option):
                return option.rawValue.capitalized
            }
        }
    }
    
    init() {
        addSubscribers()
    }
    
    private func addSubscribers() {
        $searchText
            .combineLatest($searchScope)
        //            .debounce(for: 0.3, scheduler: DispatchSerialQueue.main)
            .sink { [weak self] (searchText, searchScope) in
                self?.filterUserData(searchText:  searchText, currentSearchScope: searchScope)
            }
            .store(in: &cancellables)
    }
    private func filterUserData(searchText: String, currentSearchScope: SearchScopeOption) {
        guard !searchText.isEmpty else {
            filteredUserData = []
            searchScope = .all
            return
        }
        //Filter on search scope
        var userdataInScope = allUserData
        switch currentSearchScope {
        case .all:
            break
        case .age(let option):
            userdataInScope = allUserData.filter({ $0.age == option})
        }
        
        //Filter on search text
        let search = searchText.lowercased()
        
        filteredUserData = userdataInScope.filter({ userdata in
            let titleContainsSearch = userdata.content.lowercased().contains(search)
            let cuisineContainsSearch = userdata.age.rawValue.lowercased().contains(search)
            return titleContainsSearch || cuisineContainsSearch
        })
    }
    
    func loadUserData() async {
        do {
            allUserData = try await manager.getAllUserData()
            
            let allAges = Set(allUserData.map { $0.age })
            allSearchScopes = [.all] + allAges.map({ SearchScopeOption.age(option: $0)})
            
        } catch {
            print(error)
        }
    }
}



struct SearchableBootcamp: View {
    @Environment(\.colorScheme) private var colorScheme
    @StateObject private var viewModel = SearchableViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        NavigationStack {
            ScrollView {
                if viewModel.isSearching && viewModel.filteredUserData.isEmpty {
                    // Отобразите сообщение о том, что совпадений не найдено, и задайте фон для этого сообщения
                    Text("Совпадений не найдено")
                        .foregroundColor(.secondary)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(colorScheme == .dark ? Color(red: 0, green: 0, blue: 0) : Color(red: 0.9568627450980393, green: 0.9529411764705882, blue: 0.9764705882352941))
                } else {
                    // Отображение результатов поиска или всех данных
                    VStack {
                        ForEach(viewModel.isSearching ? viewModel.filteredUserData : viewModel.allUserData) { userdata in
                            NavigationLink(value: userdata) {
                                userdataRow(userdata: userdata)
                                    .multilineTextAlignment(.leading)
                                    .padding(.horizontal, 10)
                            }
                        }
                    }
                    
                    .padding(.bottom, 55)
                    
                }
                
            }
            
            //            .padding(.horizontal, 200)
            .background(colorScheme == .dark ? Color(red: 0, green: 0, blue: 0) : Color(red: 0.9568627450980393, green: 0.9529411764705882, blue: 0.9764705882352941))
            .searchable(text: $viewModel.searchText, placement: .automatic, prompt: "Поиск...")
            .searchScopes($viewModel.searchScope, scopes: {
                ForEach(viewModel.allSearchScopes, id: \.self) { scope in
                    Text(scope.title)
                        .tag(scope)
                }
            })
            
            .navigationBarTitle("Поиск по протоколам", displayMode: .inline)
            
            .task {
                await viewModel.loadUserData()
            }
            .navigationDestination(for: UserData.self) { userdata in
                ScrollView {
                    VStack {
                        ZStack{
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack{
                                Text(LocalizedStringKey(userdata.title))
                                    .padding(5.0)
                                    .padding(.vertical, 5)
                                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                                    .fixedSize(horizontal: false, vertical: true)
                                    .frame(minHeight: 20)
                                    .modifier(ThemeGrayColorModifier())
                                    .font(.subheadline)
                                    .cornerRadius(10)
                                Text(LocalizedStringKey(userdata.content))
                                    .padding(5.0)
                                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                    .fixedSize(horizontal: false, vertical: true)
                                    .frame(minHeight: 20)
                                    .modifier(ThemeGrayColorModifier())
                                    .font(.subheadline)
                                    .cornerRadius(10)
                            }
                            .padding(5)
                        }
                    }
                    
                    .padding(.horizontal, 10)
                    .padding(.bottom, 55)
                    
                }
                .navigationBarTitle("", displayMode: .inline)
                
                //                .padding(.horizontal, 200)
                //                .edgesIgnoringSafeArea(.bottom)
                .background(colorScheme == .dark ? Color(red: 0, green: 0, blue: 0) : Color(red: 0.9568627450980393, green: 0.9529411764705882, blue: 0.9764705882352941))
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
    
    
    
    func userdataRow(userdata: UserData) -> some View {
        VStack {
            ZStack{
                MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                VStack{
                    HighlightedText(text: userdata.title, highlighted: viewModel.searchText)
                        .padding(5.0)
                        .padding(.vertical, 5)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                        .fixedSize(horizontal: false, vertical: true)
                        .frame(minHeight: 20)
                        .modifier(ThemeGrayColorModifier())
                        .font(.subheadline)
                        .cornerRadius(10)
                    HighlightedText(text: userdata.content, highlighted: viewModel.searchText)
                        .padding(5.0)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .fixedSize(horizontal: false, vertical: true)
                        .frame(minHeight: 20)
                        .truncationMode(.tail)
                        .lineLimit(5)
                        .modifier(ThemeGrayColorModifier())
                        .font(.subheadline)
                        .cornerRadius(10)
                }
                .padding(5)
            }
            
        }
        .frame(maxWidth: .infinity)
        .tint(.primary)
    }
    
    func userdataRow1(userdata: UserData) -> some View {
        VStack {
            HighlightedText(text: userdata.title.localized, highlighted: viewModel.searchText)
                .padding(5.0)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .fixedSize(horizontal: false, vertical: true)
            //                .lineLimit(7)
                .frame(width: .infinity)
                .background(colorScheme == .dark ? Color(red: 0.3, green: 0.3, blue: 0.3) : Color(red: 0.9, green: 0.9, blue: 0.9))
                .foregroundColor(colorScheme == .dark ? Color(red: 0.9490196078431372, green: 0.9490196078431372, blue: 0.9490196078431372) : Color.black)
                .font(.subheadline)
                .cornerRadius(10)
                .shadow(radius: 2)
            
        }
        .frame(maxWidth: .infinity)
        .tint(.primary)
    }
    
    
    
}

extension String {
    var localized: String {
        localized(from: nil)
    }
    
    func localized(from table: String?) -> String {
        Bundle.main.localizedString(forKey: self, value: self, table: table)
    }
}

#Preview {
    SearchableBootcamp()
    
}






