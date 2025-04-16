//
//  Untitled.swift
//  LoadingSpinner
//
//  Created by Muhammad Hassan on 2025-04-16.
//

import SwiftUI

struct LoadingSpinner: View {
    private let variant: SpinnerVariant
    private let color: Color
    private let size: CGFloat
    
    init(variant: SpinnerVariant = .default, color: Color = .blue, size: CGFloat = 40) {
        self.variant = variant
        self.color = color
        self.size = size
    }
    
    @ViewBuilder
    var body: some View {
        switch variant {
        case .default:
            ProgressView()
                .progressViewStyle(CircularProgressViewStyle())
        case .circle:
            CircleSpinner(color: color, size: size)
        case .dots:
            DotsSpinner(color: color, size: size)
        case .gradient:
            GradientSpinner(size: size)
        case .googleDots:
            GoogleDotsSpinner()
        case .circularStroke:
            CircularStrokeSpinner(color: color)
        }
    }
}
