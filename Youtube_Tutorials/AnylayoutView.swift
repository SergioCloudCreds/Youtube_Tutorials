//
//  AnylayoutView.swift
//  Youtube_Tutorials
//
//  Created by Ghost on 2026/10/28.
//

import SwiftUI

struct AnylayoutView: View {
    
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.verticalSizeClass) private var verticalSizeClass
    
    var body: some View {
        VStack(spacing: 12){
            Text("Horizontal: \(horizontalSizeClass.debugDescription)")
            Text("Vertical: \(verticalSizeClass.debugDescription)")
            
            let layout: AnyLayout = AnyLayout(VStackLayout())
            
            layout{
                Text("Alpha")
                Text("Beta")
                Text("Gamma")
            }
            
            VStack{
                Text("Alpha")
                Text("Beta")
                Text("Gamma")
            }
        }
    }
}

struct AnylayoutView_Previews: PreviewProvider {
    static var previews: some View {
        AnylayoutView()
    }
}
