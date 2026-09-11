//
//  StateView.swift
//  Youtube_Tutorials
//
//  Created by Ghost on 2026/09/11.
//

import SwiftUI

struct StateView: View {
    
    let defaultBackgroundColor: Color = .green
    let defaultTitle: String = "The buttercup is green"
    
    @State var backgroundColor: Color = Color.green
    @State var myTitle: String = "The buttercup is green"
    @State var count: Int = 0
    
    var body: some View {
        ZStack{
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing:20){
                Text(myTitle)
                    .font(.title)
                
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                    .italic()
                
                HStack{
                    Button("BUTTON 1", action: {
                        backgroundColor = .pink
                        myTitle = "The blossom is pink"
                    })
                    Button("BUTTON 2", action: {
                        backgroundColor = .blue
                        myTitle = "The bubbles are blue"
                    })
                }
                Button("Restore", action: {
                    backgroundColor = defaultBackgroundColor
                    myTitle = defaultTitle
                })
                
            }
            .foregroundColor(.white)
        }
    }
}

struct StateView_Previews: PreviewProvider {
    static var previews: some View {
        StateView()
    }
}
