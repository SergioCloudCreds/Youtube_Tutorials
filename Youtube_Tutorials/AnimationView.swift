//
//  AnimationView.swift
//  Youtube_Tutorials
//
//  Created by Ghost on 2026/09/14.
//

import SwiftUI

struct AnimationView: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        VStack{
            Button("Button: \(isAnimated.description) ") {
                withAnimation (.default.repeatCount(3)){
                    isAnimated.toggle()
                }
            }
            
            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimated ? 25 : 100)
                .fill(isAnimated ? Color.green : Color.red)
                .frame(
                    width: isAnimated ? 300 : 200,
                    height: isAnimated ? 300 : 200)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(x: isAnimated ? 20: 0,
                        y: isAnimated ? 50 : 0)
            
            Spacer()
        }
    }
}

struct AnimationView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationView()
    }
}
