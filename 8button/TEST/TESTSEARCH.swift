import SwiftUI

struct ContentView4: View {
    @State private var searchText = ""
    
    // Пример данных Text
    let textData: [MyText] = [
        MyText(content: "Apple **juce**"),
        MyText(content: "Banana"),
        MyText(content: "Orange"),
        MyText(content: "Grapes"),
        MyText(content: "Watermelon"),
    ]
    
    

    var body: some View {
        NavigationView {
            VStack {
                // Поле поиска
                TextField("Search", text: $searchText)
                    .padding()
                
                // Отображение результатов поиска
                List(filteredTextData) { item in
                    NavigationLink(destination: TextDetailView(myText: item)) {
                        TextRowView(myText: item)
                    }
                }
            }
            .navigationTitle("Search")
        }
    }
    
    // Функция для фильтрации данных
    var filteredTextData: [MyText] {
        if searchText.isEmpty {
            return textData
        } else {
            return textData.filter { myText in
                myText.content.localizedCaseInsensitiveContains(searchText)
            }
        }
    }
}

struct MyText: Identifiable {
    let id = UUID()
    let content: String
}

struct TextRowView: View {
    let myText: MyText
    
    var body: some View {
        VStack {
            Text(myText.content)
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
        }
    }
}

struct TextDetailView: View {
    let myText: MyText
    
    var body: some View {
        VStack {
            Text(myText.content)
                .padding()
                .font(.largeTitle)
                .foregroundColor(.black)
        }
        .navigationTitle("Detail View")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView4()
    }
}
#Preview {
    ContentView4()
}
