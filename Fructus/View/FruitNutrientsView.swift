//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by Jozek Andrzej Hajduk Sanchez on 20/09/24.
//

import SwiftUI

struct FruitNutrientsView: View {
    
    // MARK: - Properties
    
    var fruit: Fruit
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    var body: some View {
        GroupBox {
            DisclosureGroup {
                ForEach(nutrients.indices, id: \.self) { index in
                    if index != 0 {
                        Divider()
                            .padding(.bottom, 2)
                    }
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[index])
                        }
                        .foregroundStyle(fruit.gradientColors[1])
                        .font(.system(.body))
                        .bold()
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[index])
                            .multilineTextAlignment(.trailing)
                    }
                    .padding(.top, index == 0 ? 10 : 2)
                }
            } label: {
                Text("Nutritional value per 100g")
            }
        }
    }
}

#Preview {
    FruitNutrientsView(fruit: fruitPreview)
}
