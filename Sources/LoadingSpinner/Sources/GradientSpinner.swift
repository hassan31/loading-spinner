//
//  GradientSpinner.swift
//  LoadingSpinner
//
//  Created by Muhammad Hassan on 2025-04-16.
//

import SwiftUI

struct GradientSpinner: View {
    @State private var rotation: Double = 0
    
    private let size: CGFloat
    
    init(size: CGFloat = 40) {
        self.size = size
    }
    
    var body: some View {
        Circle()
            .stroke(AngularGradient(
                gradient: Gradient(colors: [.blue, .purple, .blue]),
                center: .center),
                lineWidth: 5
            )
            .frame(width: size, height: size)
            .rotationEffect(.degrees(rotation))
            .animation(.linear(duration: 1).repeatForever(autoreverses: false), value: rotation)
            .onAppear {
                rotation = 360
            }
    }
}
