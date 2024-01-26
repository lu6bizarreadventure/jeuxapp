//
//  OnBoardingView.swift
//  jeuxapp
//
//  Created by Lucie GAROFALO on 1/26/24.
//

import SwiftUI

struct OnboardingView: View {
    
    @State var step = 1
    
    var body: some View {
        TabView(selection: $step) {
            OnboardingPageView(title: "Gérer des loots", description: "Chipi chipi chapa chapa", image: "gym.bag.fill", color: .blue, step: $step).tag(1)
            OnboardingPageView(title: "Votre whishlist", description: "Dubi dubi daba daba", image: "wand.and.stars", color: .purple, step: $step).tag(2)
            OnboardingPageView(title: "En un coup d'oeil", description: "Magico mi dubi dubi boom boom boom", image: "iphone.case", color: .orange, step: $step).tag(3)
        }.tabViewStyle(PageTabViewStyle())
    }
}

#Preview {
    OnboardingView()
}
