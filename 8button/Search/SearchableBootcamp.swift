////
////  SearchBar.swift
////  8button
////
////  Created by Artur Vladymcev on 10.12.23.
////
//
//import SwiftUI
//import Combine
//
//struct Restaurant: Identifiable, Hashable {
//    let id: String
//    let title: String
//    let cuisine: CuisineOpinion
//}
//
//enum CuisineOpinion: String {
//    case american, italian, japanese
//}
//
//
//final class RestaurantManager {
//    
//    func getAllRestaurants() async throws -> [Restaurant] {
//        [
//            Restaurant(id: "1", title: NSLocalizedString("Post118Alg11B5G2S3", comment: ""), cuisine: .american),
//            Restaurant(id: "2", title: NSLocalizedString("Post118Alg11B5G1S1", comment: ""), cuisine: .italian),
//            Restaurant(id: "3", title: NSLocalizedString("Post118Alg11B2G2S2", comment: ""), cuisine: .japanese),
//            Restaurant(id: "4", title: "Local Market", cuisine: .american),
//        ]
//    }
//    
//    
//}
//
//@MainActor
//
//final class SearchableViewModel: ObservableObject {
//    @Published private(set) var allRestaurants: [Restaurant] = []
//    @Published private(set) var filteredRestaurants: [Restaurant] = []
//    @Published var searchText: String = ""
//    @Published var searchScope: SearchScopeOption = .all
//    @Published private (set) var allSearchScopes: [SearchScopeOption] = []
//    let manager = RestaurantManager()
//    private var cancellables = Set<AnyCancellable>()
//    
//    var isSearching: Bool {
//        !searchText.isEmpty
//    }
//    
//    var showSearchSuggestions: Bool {
//        searchText.count < 5
//    }
//    
//    enum SearchScopeOption: Hashable {
//        case all
//        case cuisine(option: CuisineOpinion)
//        
//        var title: String {
//            switch self {
//            case .all:
//                return "All"
//            case .cuisine(option: let option):
//                return option.rawValue.capitalized
//            }
//        }
//    }
//    
//    init() {
//        addSubscribers()
//    }
//    
//    private func addSubscribers() {
//        $searchText
//            .combineLatest($searchScope)
//            .debounce(for: 0.3, scheduler: DispatchSerialQueue.main)
//            .sink { [weak self] (searchText, searchScope) in
//                self?.filterRestaurants(searchText:  searchText, currentSearchScope: searchScope)
//            }
//            .store(in: &cancellables)
//    }
//    private func filterRestaurants(searchText: String, currentSearchScope: SearchScopeOption) {
//        guard !searchText.isEmpty else {
//            filteredRestaurants = []
//            searchScope = .all
//            return
//        }
//        //Filter on search scope
//        var restaurantInScope = allRestaurants
//        switch currentSearchScope {
//        case .all:
//            break
//        case .cuisine(let option):
//            restaurantInScope = allRestaurants.filter({ $0.cuisine == option})
//        }
//        
//        //Filter on search text
//        let search = searchText.lowercased()
//        filteredRestaurants = restaurantInScope.filter({ restaursant in
//            let titleContainsSearch = restaursant.title.lowercased().contains(search)
//            let cuisineContainsSearch = restaursant.cuisine.rawValue.lowercased().contains(search)
//            return titleContainsSearch || cuisineContainsSearch
//        })
//    }
//    
//    func loadRestaurants() async {
//        do {
//            allRestaurants = try await manager.getAllRestaurants()
//            
//            let allCuisines = Set(allRestaurants.map { $0.cuisine })
//            allSearchScopes = [.all] + allCuisines.map({ SearchScopeOption.cuisine(option: $0)})
//            
//        } catch {
//            print(error)
//        }
//    }
//    
//    func getSearchSuggestions() -> [String]{
//        guard showSearchSuggestions else {
//            return []
//        }
//        var suggestions: [String] = []
//        
//        let search = searchText.lowercased()
//        if search.contains("pa") {
//            suggestions.append("Pasta")
//        }
//        if search.contains("su") {
//            suggestions.append("Sushi")
//        }
//        if search.contains("bu") {
//            suggestions.append("Burger")
//        }
//        suggestions.append("Market")
//        suggestions.append("Grocery")
//        
//        suggestions.append(CuisineOpinion.italian.rawValue.capitalized)
//        suggestions.append(CuisineOpinion.japanese.rawValue.capitalized)
//        suggestions.append(CuisineOpinion.american.rawValue.capitalized)
//        
//        return suggestions
//    }
//    
//    func getRestaurantSuggestions() -> [Restaurant] {
//        guard showSearchSuggestions else {
//            return []
//        }
//        var suggestions: [Restaurant] = []
//        
//        let search = searchText.lowercased()
//        if search.contains("ita") {
//            suggestions.append(contentsOf: allRestaurants.filter({ $0.cuisine == .italian}))
//        }
//        if search.contains("jap") {
//            suggestions.append(contentsOf: allRestaurants.filter({ $0.cuisine == .japanese}))
//        }
//        if search.contains("ame") {
//            suggestions.append(contentsOf: allRestaurants.filter({ $0.cuisine == .american}))
//        }
//        
//        return suggestions
//    }
//}
//
//
//struct SearchableBootcamp: View {
//    @Environment(\.colorScheme) private var colorScheme
//    @StateObject private var viewModel = SearchableViewModel()
//    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
//    
//    var body: some View {
//       
//            ScrollView {
//                VStack(spacing: 20) {
//                    ForEach(viewModel.isSearching ? viewModel.filteredRestaurants : viewModel.allRestaurants) { restaurant in
//                        NavigationLink(value: restaurant) {
//                            restaurantRow(restaurant: restaurant)
//                        }
//                    }
//                }
//                
//                .padding()
//    //            Text("ViewModel is searching: \(viewModel.isSearching.description)")
//    //            SearchChildView()
//            }
//            .searchable(text: $viewModel.searchText, placement: .automatic, prompt: "Search restaurants...")
//            .searchScopes($viewModel.searchScope, scopes: {
//                ForEach(viewModel.allSearchScopes, id: \.self) { scope in
//                    Text(scope.title)
//                        .tag(scope)
//                }
//            })
//            .searchSuggestions({
//                ForEach(viewModel.getSearchSuggestions(), id: \.self) { suggestion in
//                    Text(suggestion)
//                        .searchCompletion(suggestion)
//                }
//                ForEach(viewModel.getRestaurantSuggestions(), id: \.self) { suggestion in
//                    NavigationLink(value: suggestion) {
//                        Text(suggestion.title)
//                    }
//                }
//            })
//            .navigationBarTitleDisplayMode(.inline)
//            .navigationTitle("Restaurant")
//            .task {
//                await viewModel.loadRestaurants()
//            }
//            .navigationDestination(for: Restaurant.self) { restaurant in
//                Text(LocalizedStringKey(restaurant.title))
//                
//        }
//        
//    }
//    
//    private func restaurantRow(restaurant: Restaurant) -> some View {
//        VStack(alignment: .leading, spacing: 10) {
//            Text(LocalizedStringKey(restaurant.title))
//                .padding(7.0)
//                
//                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
//                .fixedSize(horizontal: false, vertical: true)
////                .fontWeight(.semibold)
//                .frame(width: 350)
//                .background(colorScheme == .dark ? Color(red: 0.10196078431372549, green: 0.09803921568627451, blue: 0.10588235294117647) : Color(red: 0.8, green: 0.90, blue: 1))
//                .foregroundColor(colorScheme == .dark ? Color(red: 0.9490196078431372, green: 0.9490196078431372, blue: 0.9490196078431372) : Color.black)
//                .font(.subheadline)
//                .cornerRadius(10)
//                .shadow(radius: 2)
//            Text(restaurant.cuisine.rawValue.capitalized)
//                .padding(5.0)
//                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
//                .fixedSize(horizontal: false, vertical: true)
//                .frame(width: 350)
//                .background(colorScheme == .dark ? Color(red: 0.3, green: 0.3, blue: 0.3) : Color(red: 0.9, green: 0.9, blue: 0.9))
//                .foregroundColor(colorScheme == .dark ? Color(red: 0.9490196078431372, green: 0.9490196078431372, blue: 0.9490196078431372) : Color.black)
//                .font(.subheadline)
//                .cornerRadius(10)
//                .shadow(radius: 2)
//        }
//        .padding()
//        .frame(maxWidth: .infinity, alignment: .leading)
//        
//        .tint(.primary)
//    }
//}
//
//
//struct SearchChildView: View {
//    @Environment(\.isSearching) private var isSearching
//    
//    var body: some View {
//        Text("Child View is searching: \(isSearching.description)")
//    }
//}
//
//
//#Preview {
//    
//        SearchableBootcamp()
//    
//}
//
////struct SearchableBootcamp_Preview: PreviewProvider {
////    static var previews: some View {
////        NavigationStack {
////            SearchableBootcamp()
////        }
////    }
////}
//
////func stringToText(_ stringValue: String) -> Text {
////    return Text(stringValue)
////}
