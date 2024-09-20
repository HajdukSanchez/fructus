//
//  StartButtonView.swift
//  Fructus
//
//  Created by Jozek Andrzej Hajduk Sanchez on 20/09/24.
//

import SwiftUI

struct StartButtonView: View {
    
    // MARK: - Properties
    
    var body: some View {
        Button {
            print("Exit onboarding")
        } label: {
            HStack(spacing: 8) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule()
                    .strokeBorder(.white, lineWidth: 1.25)
            )
        }
        .tint(.white)
    }
}

#Preview {
    StartButtonView()
        .preferredColorScheme(.dark)
}