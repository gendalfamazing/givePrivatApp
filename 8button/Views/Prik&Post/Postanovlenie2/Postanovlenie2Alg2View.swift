import SwiftUI

struct Postanovlenie2Alg2View: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @State private var expandedStates: [Bool] = Array(repeating: false, count: 10)

    let titles = [
        "4. Структура службы СМП",
        "5. Станция СМП",
        "6. Подстанция СМП",
        "7. Отделение СМП",
        "8. Пост СМП",
        "9. Руководители подразделений СМП",
        "10. Иные структурные подразделения",
        "11. Электросвязь с бригадами СМП",
        "12. Обеспечение автомобилями СМП",
        "13. Уровни системы управления службой СМП"
    ]

    let contents = [
        LocalizedStringKey("Post2Alg2B0G0S1"),
        LocalizedStringKey("Post2Alg2B0G0S2"),
        LocalizedStringKey("Post2Alg2B0G0S3"),
        LocalizedStringKey("Post2Alg2B0G0S4"),
        LocalizedStringKey("Post2Alg2B0G0S5"),
        LocalizedStringKey("Post2Alg2B0G0S6"),
        LocalizedStringKey("Post2Alg2B0G0S7"),
        LocalizedStringKey("Post2Alg2B0G0S8"),
        LocalizedStringKey("Post2Alg2B0G0S9"),
        LocalizedStringKey("Post2Alg2B0G0S10")
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
                    Text("Глава 2")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Структура службы СМП»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
        }
    }
}

#Preview {
    Postanovlenie2Alg2View()
}
