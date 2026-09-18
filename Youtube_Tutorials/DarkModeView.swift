//
//  DarkModeView.swift
//  Youtube_Tutorials
//
//  Created by Ghost on 2026/09/18.
//

import SwiftUI

struct DarkModeView: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        VStack {
            Text("Dark Mode Bootcamp")
                .foregroundColor(.primary)
                .font(.largeTitle)
                .fontWeight(.black)
                .padding()
            
            ScrollView{
                VStack(spacing: 20){
                    Text("This text is PRIMARY")
                        .foregroundColor(.primary)
                    
                    Text("This color is SECONDARY")
                        .foregroundColor(.secondary)
                    
                    Text("This color is BLACK")
                        .foregroundColor(.black)
                    
                    Text("This color is WHITE")
                        .foregroundColor(.white)
                    
                    Text("This color is RED")
                        .foregroundColor(.red)
                    
                    Text("This color is globally adaptive!")
                        .foregroundColor(Color("Color123"))
                        .fontWeight(.bold)
                    
                    
                }
            }
        }
    }
}

struct DarkModeView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            DarkModeView()
                .preferredColorScheme(.light)
            DarkModeView()
                .preferredColorScheme(.dark)
            
        }
    }
}
