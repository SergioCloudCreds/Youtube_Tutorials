//
//  IntroView.swift
//  Youtube_Tutorials
//
//  Created by Ghost on 2026/10/06.
//

import SwiftUI

struct IntroView: View {
    
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        ZStack{
            
//            background
            RadialGradient(
                gradient: Gradient(colors: [Color("LightPurple"), Color.purple]),
                center: .topLeading,
                startRadius: 5,
                endRadius: UIScreen.main.bounds.height)
                .edgesIgnoringSafeArea(.all)
            
//            if user is signed in
//            profile view
//            else
//            onboarding view
            
            if currentUserSignedIn {
                Text("Profile View")
            } else {
                OnboardingView()
            }
        }
        
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
