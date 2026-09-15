//
//  AnimationTimingView.swift
//  Youtube_Tutorials
//
//  Created by Ghost on 2026/09/15.
//

import SwiftUI

struct AnimationTimingView: View {
    
    @State var isAnimating: Bool = false
    let timing: Double = 10.0
    
    var body: some View {
        VStack{
            Button("Button") {
                isAnimating.toggle()
            }
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(.spring(
                    response: 1.0,
                    dampingFraction: 0.5,
                            blendDuration: 3),
                           value: isAnimating)
            
//                .animation(.linear(duration: timing), value: isAnimating)
            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(.easeIn(duration: timing), value: isAnimating)
//
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(.easeInOut(duration: timing), value: isAnimating)
//
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(.easeOut(duration: timing), value: isAnimating)
        }
    }
}

struct AnimationTimingView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTimingView()
    }
}
