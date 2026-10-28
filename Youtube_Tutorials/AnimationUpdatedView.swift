//
//  AnimationUpdatedView.swift
//  Youtube_Tutorials
//
//  Created by Ghost on 2026/10/27.
//

import SwiftUI

struct AnimationUpdatedView: View {
    
    @State private var animate1 : Bool = false
    @State private var animate2 : Bool = false
    
    var body: some View {
        ZStack{
            VStack(spacing: 40) {
                Button("Action 1") {
                    animate1.toggle()
                }
                Button("Action 2") {
                    animate2.toggle()
                }
                
                ZStack{
                    Rectangle()
                        .frame(width: 100, height: 100)
                        .frame(maxWidth: .infinity, alignment: animate1 ? .leading : .trailing)
                        .background(animate2 ? Color.green : Color.gray)
                        .frame(maxHeight: .infinity, alignment: animate2 ? .top : .bottom)
                        .background(animate2 ? Color.orange : Color.red)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.red)
            }
        }.animation(.spring(), value: animate1)
            .animation(.spring(), value: animate2)
    }
}

struct AnimationUpdatedView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationUpdatedView()
    }
}
