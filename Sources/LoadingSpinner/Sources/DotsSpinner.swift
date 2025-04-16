//
//  DotsSpinner.swift
//  LoadingSpinner
//
//  Created by Muhammad Hassan on 2025-04-16.
//

import SwiftUI

struct DotsSpinner: View {
    @State private var scale: CGFloat = 1.0
    
    private let color: Color
    private let size: CGFloat
    
    init(color: Color, size: CGFloat = 40) {
        self.color = color
        self.size = size
    }
    
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
