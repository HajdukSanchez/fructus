//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Jozek Andrzej Hajduk Sanchez on 20/09/24.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox {
            HStack {
                Text("Content source")
                Spacer()
                Link(destination: URL(string: "https://wikipedia.com")!) {
                    Text("Wikipedia")
                    Image(systemName: "arrow.up.right.square")
                }
            }
            .font(.footnote)
        }
    }
}

#Preview {
    SourceLinkView()
}
