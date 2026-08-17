//
//  ShapeView.swift
//  Youtube_Tutorials
//
//  Created by Ghost on 2026/08/17.
//

import SwiftUI

struct ShapeView: View {
    var body: some View {
        VStack {
            ZStack{
                
                Circle()
                //                    .fill(Color.green)
                //                    .foregroundColor(.green)
                    .stroke(Color.green,
                            style:StrokeStyle(lineWidth: 20, lineCap: .round, dash: [30]))
                
                Capsule()
                .frame(width:200, height:100)
                
                Circle()
                //                    .fill(Color.green)
                //                    .foregroundColor(.green)
                //                    .frame(width:200, height:200)

                    .stroke(Color.red,
                            style:StrokeStyle(lineWidth: 15, lineCap: .round, dash: [20]))
                    .frame(width:300, height:300)
                    
                
                Text("Double whopper with cheese")
                    .font(.system(size:25, weight: .bold))
                    .foregroundColor(.yellow)
                    .font(.title)
                    .frame(width:150, height:100)
            
            }
            
        }
    }
    
    struct ShapeView_Previews: PreviewProvider {
        static var previews: some View {
            ShapeView()
        }
    }
}
