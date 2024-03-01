import SwiftUI

struct ContentView9: View {
    @State private var text = "Пример текста для выделения и копирования."
    @State private var selectedText: String = ""

    var body: some View {
        VStack {
            TextEditor(text: $text)
                .padding()
                .textSelection(.enabled)
                .onTapGesture {
                    // Ваш код обработки нажатия
                    // selectedText теперь содержит выделенный текст
                }

            Button("Копировать") {
                // Ваш код для копирования текста
                // Например, можно использовать UIPasteboard
                UIPasteboard.general.string = selectedText
            }
            .padding()
        }
    }
}

#Preview {
    ContentView9()
}
