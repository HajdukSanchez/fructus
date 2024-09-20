//
//  ContentView.swift
//  Fructus
//
//  Created by Jozek Andrzej Hajduk Sanchez on 20/09/24.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Properties
    
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        NavigationStack {
            List(fruits.shuffled()) { item in
                NavigationLink {
                    FruitDetailView(fruit: item)
                } label: {
                    FruitRowView(fruit: item)
                        .padding(.vertical, 4)
                }

            }
            .navigationTitle("Fruits")
        }
    }
}

#Preview {
    ContentView(fruits: fruitsPreview)
}
