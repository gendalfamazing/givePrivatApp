
import SwiftUI

struct GesturesDemo: View {
    @GestureState var locationState = CGPoint(x: 100, y: 100)
    @State var location = CGPoint(x: 100, y: 100)
    
    var body: some View {
        VStack {
            // Color.green
            // .frame(height: 200)
            Circle()
                .fill(.red)
                .frame(width: 100, height: 100)
                .position(locationState)
            //.position(location)
                .gesture(
                    DragGesture(
                        minimumDistance: 20,
                        coordinateSpace: .local
                    )
                    .onChanged { value in
                        self.location = value.location
                    }
                        .onEnded { value in
                            withAnimation {
                                self.location = value.location
                                
                            }
                        }
                        .updating(
                            self.$locationState
                        ) { currentState, pastLocation, transaction  in
                            pastLocation = currentState.location
                            transaction.animation = .easeInOut
                        }
                    
                )
        }
    }
}
#Preview {
    GesturesDemo()
}
