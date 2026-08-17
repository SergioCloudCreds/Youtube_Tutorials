//
//  ColorGradientsView.swift
//  Youtube_Tutorials
//
//  Created by Ghost on 2026/08/17.
//

import SwiftUI

struct ColorGradientsView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 30.0 )
            .fill(
//                Color.red
//                 LinearGradient(colors:[Color("CustomColor#1Red"),Color("CustomColor#2Red")],
//                               startPoint: .topTrailing,
//                               endPoint: .bottomLeading)
//                RadialGradient(
//                     colors: [Color("CustomColor#1Red"),Color("CustomColor#2Red")],
//                     center: .topLeading,
//                     startRadius: 5,
//                     endRadius: 200)
                AngularGradient(colors: [Color("CustomColor#1Red"),Color("CustomColor#2Red")],
                                center: .topLeading,
                                angle: .degrees(180))
            )
                   
            .frame(width: 300, height: 200)

    }
}

struct ColorGradientsView_Previews: PreviewProvider {
    static var previews: some View {
        ColorGradientsView()
    }
}
