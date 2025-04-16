//
//  GoogleDotsSpinner.swift
//  LoadingSpinner
//
//  Created by Muhammad Hassan on 2025-04-16.
//

import SwiftUI

struct GoogleDotsSpinner: View {
    @State private var animate = false
    
    private let colors: [Color] = [.red, .green, .blue, .yellow]

    var body: some View {
        HStack(spacing: 8) {
            ForEach(0..<4) { i in
                Circle()
                    .fill(colors[i])
                    .frame(width: 10, height: 10)
                    .scaleEffect(animate ? 1 : 0.5)
                    .animation(.easeInOut(duration: 0.6).repeatForever().delay(Double(i) * 0.15), value: animate)
            }
        }
        .onAppear {
            animate = true
        }
    }
}
