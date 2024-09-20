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
    @State private var showSettingsSheet: Bool = false
    
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
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        showSettingsSheet = true
                    } label: {
                        Image(systemName: "slider.horizontal.3")
                    }
                    .sheet(isPresented: $showSettingsSheet) {
                        SettingsView()
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView(fruits: fruitsPreview)
}
