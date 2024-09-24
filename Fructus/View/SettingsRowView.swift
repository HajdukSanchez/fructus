//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Jozek Andrzej Hajduk Sanchez on 24/09/24.
//

import SwiftUI

struct SettingsRowView: View {
    
    // MARK: - Properties
    
    var name: String
    var content: String
    var linkDestination: URL?
    
    // MARK: - Initializers
    
    init(name: String, content: String) {
        self.name = name
        self.content = content
        self.linkDestination = nil
    }

    init(name: String, label content: String, destination linkDestination: URL) {
        self.name = name
        self.content = content
        self.linkDestination = linkDestination
    }
    
    var body: some View {
        VStack {
            Divider()
                .padding(.vertical, 4)
            HStack {
                Text(name)
                    .foregroundStyle(.gray)
                Spacer()
                if linkDestination != nil {
                    Link(destination: linkDestination!) {
                        Text(content)
                        Image(systemName: "arrow.up.right.square")
                            .foregroundStyle(.pink)
                    }
                } else {
                    Text(content)
                }
            }
        }
    }
}

#Preview {
    VStack(spacing: 10) {
        SettingsRowView(name: "Developer", content: "Jozek")
        SettingsRowView(
            name: "Developer 2",
            label: "Wikipedia",
            destination: URL(string: "https://wikipedia.com")!)
    }
}
