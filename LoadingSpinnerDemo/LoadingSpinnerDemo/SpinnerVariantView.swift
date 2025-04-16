//
//  SpinnerVariantView.swift.swift
//  LoadingSpinnerDemo
//
//  Created by Muhammad Hassan on 2025-04-16.
//

import SwiftUI
import LoadingSpinner

struct SpinnerVariantView: View {
    let variant: SpinnerVariant
    @State private var isLoading = true

    var body: some View {
        VStack(spacing: 20) {
            Text("Variant: \(String(describing: variant).capitalized)")
                .font(.headline)
            Spacer()
        }
        .padding()
        .onAppear {
            autoHideSpinner()
        }
        .loadingSpinner(isPresented: $isLoading, variant: variant, color: .blue, size: 50)
        .navigationTitle("\(String(describing: variant).capitalized)")
    }

    private func autoHideSpinner() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
            withAnimation {
                isLoading = false
            }
        }
    }
}
