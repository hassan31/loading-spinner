//
//  CircleSpinner.swift
//  LoadingSpinner
//
//  Created by Muhammad Hassan on 2025-04-16.
//

import SwiftUI

struct CircleSpinner: View {
    @State private var isAnimating = false
    
    private let color: Color
    private let size: CGFloat
    
    init(color: Color, size: CGFloat = 40) {
        self.color = color
        self.size = size
    }
    
    var body: some View {
        Circle()
            .trim(from: 0, to: 0.7)
            .stroke(color, lineWidth: 5)
            .frame(width: size, height: size)
            .rotationEffect(.degrees(isAnimating ? 360 : 0))
            .animation(.linear(duration: 1).repeatForever(autoreverses: false), value: isAnimating)
            .onAppear { isAnimating = true }
    }
}
