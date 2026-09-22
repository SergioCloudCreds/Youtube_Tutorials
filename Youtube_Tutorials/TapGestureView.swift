//
//  TapGestureView.swift
//  Youtube_Tutorials
//
//  Created by Ghost on 2026/09/18.
//

import SwiftUI

struct TapGestureView: View {
    
    @State var isSelected:Bool = false
    
    var body: some View {
        VStack(spacing: 40){
            RoundedRectangle(cornerRadius: 25.0)
                .frame(height: 200)
                .foregroundColor(isSelected ? .brown : .red)
            
            Button {
                isSelected.toggle()
            } label: {
                Text("Button")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue )
                    .cornerRadius(25.0 )
            }
            
            Text("Tap Gesture")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.blue )
                .cornerRadius(25.0 )
                .onTapGesture {
                    isSelected.toggle()
                }
            
             Spacer()
        }
        .padding(40)
    }
}

struct TapGestureView_Previews: PreviewProvider {
    static var previews: some View {
        TapGestureView()
    }
}
