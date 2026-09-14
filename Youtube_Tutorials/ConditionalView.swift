//
//  ConditionalView.swift
//  Youtube_Tutorials
//
//  Created by Ghost on 2026/09/14.
//

import SwiftUI

struct ConditionalView: View {
    
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    var body: some View {
        VStack(spacing: 20){
            
            Button("Circle Button: \(showCircle.description)") {
                showCircle.toggle()
            }
            
            Button("Rectangle Button: \(showRectangle.description)") {
                showRectangle.toggle()
            }
            
            if showCircle == true{
                Circle()
                    .frame(width: 100, height: 100)
            }
            
            if showRectangle {
                Rectangle()
                    .frame(width: 100, height: 100)
            }
            
            if showCircle || showRectangle {
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: 200, height: 100)
            }
            
          Spacer()
            
        }
    }
}

struct ConditionalView_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalView()
    }
}
