//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Jozek Andrzej Hajduk Sanchez on 20/09/24.
//

import SwiftUI

struct FruitDetailView: View {
    
    // MARK: - Properties
    
    var fruit: Fruit
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                VStack(alignment: .center, spacing: 20) {
                    FruitHeaderView(fruit: fruit)
                    VStack(alignment: .leading, spacing: 20) {
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundStyle(fruit.gradientColors[1])
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        Text("Learn more about \(fruit.title)".uppercased())
                            .bold()
                            .foregroundStyle(fruit.gradientColors[1])
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    }
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }
                .navigationTitle(fruit.title)
                .navigationBarTitleDisplayMode(.inline)
                .toolbar(.hidden)
            }
            .scrollIndicators(.hidden)
            .ignoresSafeArea(.container, edges: .top)
        }
    }
}

#Preview {
    FruitDetailView(fruit: fruitPreview)
}
