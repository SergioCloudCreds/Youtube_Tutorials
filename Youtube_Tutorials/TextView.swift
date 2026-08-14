//
//  TextView.swift
//  Youtube_Tutorials
//
//  Created by Ghost on 2026/08/12.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        Text("Mega Whopper, Double Triple, Counter whopper")
//            .font(.headline)
//            .fontWeight(.heavy)
//            .fontWeight(.black)
//            .underline()
            .underline(true, color: Color.red)
            .italic()
            .font(.system(size:40, weight: .black, design: .rounded))
            .kerning(1.0)
            .baselineOffset(30.0)
            //.multilineTextAlignment(.trailing)
            .frame(width: 250, height: 250, alignment: .bottom)
            .minimumScaleFactor(0.5)
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
