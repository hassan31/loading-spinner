//
//  ContentView.swift
//  LoadingSpinnerDemo
//
//  Created by Muhammad Hassan on 2025-04-16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 16) {
                NavigationLink("Google Dots Spinner", destination: SpinnerVariantView(variant: .googleDots))
                NavigationLink("Circular Stroke Spinner", destination: SpinnerVariantView(variant: .circularStroke))
                NavigationLink("Circular Spinner", destination: SpinnerVariantView(variant: .circle))
                NavigationLink("Gradient Spinner", destination: SpinnerVariantView(variant: .gradient))
                NavigationLink("Dot Spinner", destination: SpinnerVariantView(variant: .dots))
                NavigationLink("Default Spinner", destination: SpinnerVariantView(variant: .default))
            }
        }
    }
}

#Preview {
    ContentView()
}
