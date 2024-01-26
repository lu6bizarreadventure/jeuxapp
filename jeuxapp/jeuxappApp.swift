//
//  jeuxappApp.swift
//  jeuxapp
//
//  Created by Lucie GAROFALO on 1/19/24.
//

import SwiftUI

@main
struct jeuxappApp: App {
    @AppStorage("isOnboardingDone") var isOnboardingDone: Bool = false
    
    var body: some Scene {
        WindowGroup {
            if isOnboardingDone {
                ContentView()
            } else {
                OnboardingView()
            }
            
        }
    }
}
