//
//  ButtonStylesView.swift
//  Youtube_Tutorials
//
//  Created by Ghost on 2026/10/26.
//

import SwiftUI

struct ButtonStylesView: View {
    var body: some View {
        VStack{
            Button("Button Title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.plain)
            
            Button("Button Title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.bordered)
            
            Button("Button Title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderedProminent)
            
            Button("Button Title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderless)
        }
        .padding()
    }
}

struct ButtonStylesView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStylesView()
    }
}
