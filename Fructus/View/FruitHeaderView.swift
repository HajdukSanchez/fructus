//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Jozek Andrzej Hajduk Sanchez on 20/09/24.
//

import SwiftUI

struct FruitHeaderView: View {
    
    // MARK: - Properties
    
    var fruit: Fruit
    @State private var isAnimating: Bool = false
    
    var body: some View {
        ZStack {
            LinearGradient(colors: fruit.gradientColors, startPoint: .topLeading, endPoint: .bottomLeading)
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(
                    color: Color(red: 0, green: 0, blue: 0, opacity: 0.15),
                    radius: 8,
                    x: 6,
                    y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimating ? 1 : 0.6)
        }
        .frame(height: 440)
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
    }
}

#Preview {
    FruitHeaderView(fruit: fruitPreview)
}
