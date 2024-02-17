//
//  Zoom1.swift
//  8button
//
//  Created by Artur Vladymcev on 4.01.24.
//

import SwiftUI

struct Zoom1: View {
    
    let image: Image
    @State var scale = 1.0
    @State private var lastScale = 1.0
    private let minScale = 1.0
    private let maxScale = 5.0
    
    var magnification: some Gesture {
        MagnificationGesture()
            .onChanged { state in
                adjustScale(from: state)
            }
            .onEnded { state in
                withAnimation {
                    validateScaleLimits()
                }
                lastScale = 1.0
            }
    }
    
    var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fit)
            .scaleEffect(scale)
            .gesture(magnification)
        
         
    }
    
    func adjustScale(from state: MagnificationGesture.Value) {
        let delta = state / lastScale
        scale *= delta
        lastScale = state
    }
    
    func getMinimumScaleAllowed() -> CGFloat {
        return max(scale, minScale)
    }
    
    func getMaximumScaleAllowed() -> CGFloat {
        return min(scale, maxScale)
    }
    
    func validateScaleLimits() {
        scale = getMinimumScaleAllowed()
        scale = getMaximumScaleAllowed()
    }
}

#Preview {
    Zoom1(image: Image("Prikaz1030Alg1"))
}
