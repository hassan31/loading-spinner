//
//  CircularStrokeSpinner.swift
//  LoadingSpinner
//
//  Created by Muhammad Hassan on 2025-04-16.
//

import SwiftUI

struct CircularStrokeSpinner: View {
    private let color: Color
    
    @State private var isAnimating = false
    
    init(color: Color) {
        self.color = color
    }

    var body: some View {
        Circle()
            .trim(from: 0, to: 0.7)
            .stroke(style: StrokeStyle(lineWidth: 5, lineCap: .round))
            .fill(color)
            .rotationEffect(.degrees(isAnimating ? 360 : 0))
            .animation(.linear(duration: 1).repeatForever(autoreverses: false), value: isAnimating)
            .onAppear {
                isAnimating = true
            }
    }
}
