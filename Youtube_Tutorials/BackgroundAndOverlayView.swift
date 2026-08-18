//
//  BackgroundAndOverlayView.swift
//  Youtube_Tutorials
//
//  Created by Ghost on 2026/08/18.
//

import SwiftUI

struct BackgroundAndOverlayView: View {
    var body: some View {
        Rectangle()
            .fill(Color.black)
            .frame(width: 100, height: 100)
            .overlay(
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 50, height: 50)
                , alignment: .topLeading
            )
            .background(
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 150, height: 150)
                , alignment: .bottomTrailing
            )
    
        
    }
}

struct BackgroundAndOverlayView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverlayView()
    }
}
