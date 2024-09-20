//
//  FruitRowView.swift
//  Fructus
//
//  Created by Jozek Andrzej Hajduk Sanchez on 20/09/24.
//

import SwiftUI

struct FruitRowView: View {
    
    // MARK: - Properties
    
    var fruit: Fruit
    
    var body: some View {
        HStack {
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
                .background(
                    fruitGradientBoxColor(with: fruit.gradientColors)
                )
                .clipShape(RoundedRectangle(cornerRadius: 8))
            VStack(alignment: .leading, spacing: 5) {
                Text(fruit.title)
                    .font(.title2)
                    .bold()
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
        }
    }
}

#Preview {
    FruitRowView(fruit: fruitPreview)
}
