//
//  ExtractedFunctionsView.swift
//  Youtube_Tutorials
//
//  Created by Ghost on 2026/09/14.
//

import SwiftUI

struct ExtractedFunctionsView: View {
    
   @State var backgroundColor : Color = Color.pink
    
    var body: some View {
        ZStack{
            //background
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            //content
            contentLayer
        }
    }
    
    var contentLayer: some View {
        
        VStack{
            
            Text("Title")
                .font(.largeTitle)
            
            Button(action: {
                buttonpressed()
            }) {
                Text("Press Me")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            }
        }
    }
    
    func buttonpressed() {
        backgroundColor = .yellow
    }
}

struct ExtractedFunctionsView_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedFunctionsView()
    }
}
