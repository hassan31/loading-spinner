//
//  Untitled.swift
//  LoadingSpinner
//
//  Created by Muhammad Hassan on 2025-04-16.
//

import SwiftUI

struct LoadingSpinner: View {
    let variant: SpinnerVariant
    let color: Color
    let size: CGFloat
    
    init(variant: SpinnerVariant = .default, color: Color = .blue, size: CGFloat = 40) {
        self.variant = variant
        self.color = color
        self.size = size
    }
    
    var body: some View {
        Group {
            switch variant {
            case .default:
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle(tint: color))
                    .frame(width: size, height: size)
            case .circle:
                CircleSpinner(color: color, size: size)
            case .dots:
                DotsSpinner(color: color, size: size)
            case .gradient:
                GradientSpinner(size: size)
            }
        }
    }
}

// MARK: - Circle Spinner
struct CircleSpinner: View {
    let color: Color
    let size: CGFloat
    @State private var isAnimating = false
    
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

// MARK: - Dots Spinner
struct DotsSpinner: View {
    let color: Color
    let size: CGFloat
    @State private var scale: CGFloat = 1.0
    
    var body: some View {
        HStack(spacing: 5) {
            ForEach(0..<3) { i in
                Circle()
                    .fill(color)
                    .frame(width: size / 5, height: size / 5)
                    .scaleEffect(scale)
                    .animation(
                        Animation.easeInOut(duration: 0.6)
                            .repeatForever()
                            .delay(Double(i) * 0.2),
                        value: scale
                    )
            }
        }
        .frame(width: size, height: size)
        .onAppear { scale = 0.5 }
    }
}

// MARK: - Gradient Spinner
struct GradientSpinner: View {
    let size: CGFloat
    @State private var rotation: Double = 0
    
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
