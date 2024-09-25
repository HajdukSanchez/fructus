//
//  SettingsView.swift
//  Fructus
//
//  Created by Jozek Andrzej Hajduk Sanchez on 20/09/24.
//

import SwiftUI

struct SettingsView: View {
    
    // MARK: - Properties
    
    @Environment(\.dismiss) private var dismiss
    @AppStorage(AppStoragekeys.showOnboarding) var showOnboarding: Bool = false
    
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
                    
                    GroupBox {
                        Divider()
                            .padding(.vertical, 4)
                        Text("If you wish you can restart the application by toogle the swtichin this box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1) // Tell system to render all the text, without truncate it
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        Toggle(isOn: $showOnboarding) {
                            if showOnboarding {
                                Text("Restarted")
                                    .bold()
                                    .foregroundStyle(.green)
                            } else {
                                Text("Restart")
                                    .bold()
                                    .foregroundStyle(.secondary)
                            }
                        }
                        .padding()
                        .background(Color(UIColor.tertiarySystemBackground))
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                    } label: {
                        SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                    }
                    
                    GroupBox {
                        SettingsRowView(name: "Developer", content: "Jozek Hajduk")
                        SettingsRowView(name: "Designer", content: "Robert Petras")
                        SettingsRowView(name: "Compatibility", content: "iOS 14")
                        SettingsRowView(name: "Website", label: "SwiftUI Masterclass", destination: URL(string: "https://swiftuimasterclass.com")!)
                        SettingsRowView(name: "Twitter", label: "@hajduksanchez", destination: URL(string: "https://x.com/hajduksanchez")!)
                        SettingsRowView(name: "SwiftUi", content: "2.0")
                        SettingsRowView(name: "Version", content: "1.1.0")
                    } label: {
                        SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
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
