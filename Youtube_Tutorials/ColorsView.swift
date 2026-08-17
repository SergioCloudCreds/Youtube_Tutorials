//
//  ColorsView.swift
//  Youtube_Tutorials
//
//  Created by Ghost on 2026/08/17.
//

import SwiftUI

struct ColorsView: View {
    var body: some View {
        VStack {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
//                Color.primary
//                Color(UIColor.secondarySystemFill)
                Color("CustomColor")
            )
            .frame(width: 300,height: 200)
//            .shadow(radius: 10)
            .shadow(color:Color("CustomColor")
                .opacity(0.3), radius: 10, x: 10, y: 10)
            Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }
        }
            
    }
}

struct ColorsView_Previews: PreviewProvider {
    static var previews: some View {
        ColorsView()
    }
}
