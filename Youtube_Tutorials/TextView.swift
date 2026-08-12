//
//  TextView.swift
//  Youtube_Tutorials
//
//  Created by Ghost on 2026/08/12.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Mega Whopper"/*@END_MENU_TOKEN@*/)
//            .font(.headline)
//            .fontWeight(.heavy)
//            .fontWeight(.black)
//            .underline()
            .underline(true, color: Color.red)
            .italic()
            .font(.system(size:40, weight: .black, design: .rounded))
        
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
