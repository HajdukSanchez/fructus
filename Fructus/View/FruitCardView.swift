//
//  FruitCardView.swift
//  Fructus
//
//  Created by Jozek Andrzej Hajduk Sanchez on 20/09/24.
//

import SwiftUI

struct FruitCardView: View {
    
    // MARK: - Properties
    @State private var isAnimating: Bool = false
    
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                Image("blueberry")
                    .resizable()
                    .scaledToFit()
                    .shadow(
                        color: Color(red: 0, green: 0, blue: 0, opacity: 0.15),
                        radius: 8,
                        x: 6,
                        y: 8)
                    .scaleEffect(isAnimating ? 1 : 0.6)
                Text("Blueberry")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(
                        color: Color(red: 0, green: 0, blue: 0, opacity: 0.15),
                        radius: 2,
                        x: 2,
                        y: 2)
                Text("Blueberries are sweet, nutricious, and widly popular fruit all over the world.")
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                StartButtonView()
            }
        }
        .frame(maxHeight: .infinity)
        .background(LinearGradient(colors: [
            Color.customBlueberryLight,
            Color.customBlueBerryDark
        ], startPoint: .top, endPoint: .bottom))
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .padding(.horizontal, 20)
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
    }
}

#Preview {
    FruitCardView()
}
