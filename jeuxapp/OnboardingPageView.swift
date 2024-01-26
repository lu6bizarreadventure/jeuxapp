//
//  OnboardingPageView.swift
//  jeuxapp
//
//  Created by Lucie GAROFALO on 1/26/24.
//

import SwiftUI

struct OnboardingPageView: View {
    @AppStorage("isOnboardingDone") var isOnboardingDone: Bool = false
    
    @State var title: String
    @State var description: String
    @State var image: String
    @State var color: Color
    
    @Binding var step: Int
    
    var body: some View {
        VStack{
            Text(title).font(.system(size: 40)).bold()
            
            ZStack {
                Circle()
                    .frame(width: 200, height: 200)
                    .foregroundColor(color)
                Image(systemName: image)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 130)
                    .foregroundColor(.white)
            }
            
            Text(description)
            
            if (step == 3) {
                ZStack {
                    Rectangle()
                        .frame(width: 100, height: 50)
                        .foregroundColor(.blue)
                        .cornerRadius(12)
                    Button("Continuer") {
                        isOnboardingDone = true
                    }.foregroundColor(.white)
                }
                
            } else {
                Button(action: {
                    step += 1
                }, label: {
                    Text("suivant")
                })
            }
        }
    }
}

//#Preview {
//    OnboardingPageView(title: "", description: "", image: "")
//}
