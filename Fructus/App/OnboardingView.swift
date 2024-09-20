//
//  OnboardingView.swift
//  Fructus
//
//  Created by Jozek Andrzej Hajduk Sanchez on 20/09/24.
//

import SwiftUI

struct OnboardingView: View {
    
    // MARK: - Properties
    
    var fruits: [Fruit] = Array(fruitsData[0...5])
    
    var body: some View {
        TabView {
            ForEach(fruits) { fruit in
                FruitCardView(fruit: fruit)
            }
        }
        .tabViewStyle(.page)
        .padding(.vertical, 20)
    }
}

#Preview {
    OnboardingView(fruits: fruitsPreview)
}
