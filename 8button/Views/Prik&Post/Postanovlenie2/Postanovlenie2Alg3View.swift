import SwiftUI

struct Postanovlenie2Alg3View: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @State private var expandedStates: [Bool] = Array(repeating: false, count: 6)

    let titles = [
        "14. Основные задачи службы СМП",
        "15. Режимы функционирования службы СМП",
        "16. Режим повседневной деятельности",
        "17. Режим повышенной готовности",
        "18. Чрезвычайный режим",
        "19. Служба СМП не осуществляет"
    ]

    let contents = [
        LocalizedStringKey("Post2Alg3B0G0S1"),
        LocalizedStringKey("Post2Alg3B0G0S2"),
        LocalizedStringKey("Post2Alg3B0G0S3"),
        LocalizedStringKey("Post2Alg3B0G0S4"),
        LocalizedStringKey("Post2Alg3B0G0S5"),
        LocalizedStringKey("Post2Alg3B0G0S6")
    ]

    var body: some View {
        ScrollView {
            Spacer()
            VStack(spacing: 5) {
                ForEach(titles.indices, id: \.self) { index in
                    MyViewBuilder(title: Text(titles[index]), content: Text(contents[index]))
                        .buildDualBlockBlueGray(isTextExpanded: expandedStates[index])
                        .onTapGesture {
                            withAnimation(.snappy) {
                                expandedStates[index].toggle()
                            }
                        }
                }
            }
            .padding(.horizontal, 10)
            .padding(.bottom, 55)
        }
        .background(Color.back)
        .navigationBarBackButtonHidden(false)
        .navigationBarTitle("", displayMode: .inline)
        .toolbar {
            ToolbarItem(placement: .principal) {
                VStack {
                    Text("Глава 3")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Задачи и режимы функционирования службы СМП»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
        }
    }
}

#Preview {
    Postanovlenie2Alg3View()
}
