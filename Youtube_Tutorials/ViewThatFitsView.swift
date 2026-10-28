//
//  ViewThatFitsView.swift
//  Youtube_Tutorials
//
//  Created by Ghost on 2026/10/28.
//

import SwiftUI

struct ViewThatFitsView: View {
    var body: some View {
        ZStack{
            Color.red.ignoresSafeArea()
            
            ViewThatFits {
                Text("This is some text that I would like to display to the user!")
                Text("This is some text that I would like to display")
                Text("This is some text ")
            }
        }
        .frame(height: 300)
        .padding(10)
        .font(.headline)
    }
}

struct ViewThatFitsView_Previews: PreviewProvider {
    static var previews: some View {
        ViewThatFitsView()
    }
}
