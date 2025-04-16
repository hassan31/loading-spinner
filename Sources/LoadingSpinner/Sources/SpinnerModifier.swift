//
//  SpinnerModifier.swift
//  LoadingSpinner
//
//  Created by Muhammad Hassan on 2025-04-16.
//

import SwiftUI

public extension View {
    func loadingSpinner(
        isPresented: Binding<Bool>,
        variant: SpinnerVariant = .default,
        color: Color = .blue,
        size: CGFloat = 40
    ) -> some View {
        modifier(SpinnerOverlayModifier(isPresented: isPresented, variant: variant, color: color, size: size))
    }
}

struct SpinnerOverlayModifier: ViewModifier {
    @Binding var isPresented: Bool
    let variant: SpinnerVariant
    let color: Color
    let size: CGFloat

    func body(content: Content) -> some View {
        ZStack {
            content
            if isPresented {
                Color.black.opacity(0.25)
                    .ignoresSafeArea()
                LoadingSpinner(variant: variant, color: color, size: size)
                    .frame(width: size, height: size)
                    .transition(.opacity)
            }
        }
    }
}
