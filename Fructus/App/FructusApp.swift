//
//  FructusApp.swift
//  Fructus
//
//  Created by Jozek Andrzej Hajduk Sanchez on 20/09/24.
//

import SwiftUI

@main
struct FructusApp: App {
    
    // MARK: - Properties
    
    @AppStorage(AppStoragekeys.showOnboarding) var showOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if showOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
