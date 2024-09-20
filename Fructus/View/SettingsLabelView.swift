//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by Jozek Andrzej Hajduk Sanchez on 20/09/24.
//

import SwiftUI

struct SettingsLabelView: View {
    
    // MARK: - Properties
    
    var labelText: String
    var labelImage: String
    
    var body: some View {
        HStack {
            Text(labelText.uppercased())
                .bold()
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

#Preview {
    SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
}
