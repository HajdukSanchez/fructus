//
//  OnboardingView.swift
//  Fructus
//
//  Created by Jozek Andrzej Hajduk Sanchez on 20/09/24.
//

import SwiftUI

struct OnboardingView: View {
    
    // MARK: - Properties
    
    var body: some View {
        TabView {
            ForEach(0..<5) { _ in
                FruitCardView()
            }
        }
        .tabViewStyle(.page)
        .padding(.vertical, 20)
    }
}

#Preview {
    OnboardingView()
}
