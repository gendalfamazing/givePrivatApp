// ExpandableTextBlockView.swift

import SwiftUI
//Button(action: {
//    favoritesManager.removeTextBlock(textBlock)
//}) {
//    Image(systemName: "minus.circle")
//        .foregroundColor(.red)
//}


struct ExpandableTextBlockView: View {
    @EnvironmentObject var favoritesManager: FavoritesManager
    @State private var isTextExpanded = false
    var textBlock: FavoriteTextBlock

    var body: some View {
        VStack (spacing: 1) {
            HStack {
                Text(textBlock.title)
                    .padding(.leading, 7)
                Spacer()
                Spacer()
                Image(systemName: ("chevron.down"))
                    .rotationEffect(.degrees(isTextExpanded ? -180 : 0))
                //                        .resizable()
                //                        .frame(width: 20, height: 20)
                    .opacity(0.3)
                //                        .multilineTextAlignment(.center)
                    .padding(.trailing, 7)
            }
            .padding(7.0)
            //                .lineLimit(2)
            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            .fixedSize(horizontal: false, vertical: true)
            .fontWeight(.semibold)
            .frame(minHeight: 49)
            .frame(minWidth: 49)
            .modifier(ThemeBlueColorModifier())
            //                .background(Color.blueButton)
            .background(isTextExpanded ? Color.toggle : Color.blueButton)
            .font(.subheadline)
            .cornerRadius(10)
            .onTapGesture {
                withAnimation (.snappy) {
                    isTextExpanded.toggle()
                }
            }
            
            
            if isTextExpanded{
                VStack {
                    Text(LocalizedStringKey(textBlock.contentKey))
                        .textSelection(.enabled)
                }
                .padding(10)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .fixedSize(horizontal: false, vertical: true)
                .frame(minHeight: 20)
                .modifier(ThemeGrayColorModifier())
                .font(.subheadline)
                .cornerRadius(10)
            }
        }
        .background(Color.grayButton)
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5) // Устанавливаем цвет и ширину границы
        )
        .padding(2)
        .contextMenu {
            Button(action: {
                favoritesManager.removeTextBlock(textBlock)
            }) {
                Text("Удалить")
                Image(systemName: "trash")
            }
        }
    }
}
