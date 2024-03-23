
import SwiftUI

struct Postanovlenie59Alg3P4View: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var scale: CGFloat = 1.0
    @State private var offset: CGSize = .zero
    @State private var currentScale: CGFloat = 1.0
    
    var body: some View {
        NavigationStack {
            GeometryReader { proxy in
                ScrollView {
                    Image("Post59Alg3p4")
                        .resizable()
                        .frame(maxWidth: proxy.size.width)
                        .frame(maxHeight: proxy.size.height * 0.9)
                        .scaledToFit()
                        .clipShape(Rectangle())
                        .modifier(ImageModifier(contentSize: CGSize(width: proxy.size.width, height: proxy.size.height)))
                }
            }
            
            //
        }
//        .padding(.horizontal, 10)
        .padding(.bottom, 55)
        //        .padding(.horizontal, 200)
//        .edgesIgnoringSafeArea(.bottom)
        //            .background(Color.back)
        .navigationBarBackButtonHidden(false)
        .navigationBarTitle("",displayMode: .inline)
        .toolbar {
            ToolbarItem(placement: .principal) {
                VStack {
                    Text("Приложение 4")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Номограмма для коррекции скорости введения гепарина»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            
        }
    }
    
}
#Preview {
    Postanovlenie59Alg3P4View()
}

