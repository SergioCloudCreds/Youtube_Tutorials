//
//  PaddingView.swift
//  Youtube_Tutorials
//
//  Created by Ghost on 2026/08/18.
//

import SwiftUI

struct PaddingView: View {
    var body: some View {
        VStack (alignment: .leading){
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
            .fontWeight(.semibold)
            
            Text("This text inside this vStack is supposed to serve as an example text sample we are testing the VStack capabilities to see if the water is aquaphobic, now it has to contiplate now it has to consider!")
        }
        .background(Color.yellow)
        .padding()
        .background(Color.red)
        .padding(.horizontal,20)
        .background(Color.green)
    }
}

struct PaddingView_Previews: PreviewProvider {
    static var previews: some View {
        PaddingView()
    }
}
