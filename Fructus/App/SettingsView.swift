//
//  SettingsView.swift
//  Fructus
//
//  Created by Jozek Andrzej Hajduk Sanchez on 20/09/24.
//

import SwiftUI

struct SettingsView: View {
    
    // MARK: - Presentation
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                VStack(spacing: 20) {
                    GroupBox {
                        Divider()
                            .padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .clipShape(RoundedRectangle(cornerRadius: 9))
                            Text("Most fruits are naturally low in fat, sodium and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                    } label: {
                        SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    }
                }
                .padding()
                .navigationTitle("Settings")
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button {
                            dismiss()
                        } label: {
                            Image(systemName: "xmark")
                        }

                    }
                }
            }
            .scrollIndicators(.hidden)
        }
    }
}

#Preview {
    SettingsView()
}
