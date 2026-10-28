//
//  GroupView.swift
//  Youtube_Tutorials
//
//  Created by Ghost on 2026/10/27.
//

import SwiftUI

struct GroupView: View {
    var body: some View {
        
        VStack {
            Text("Hello, World!")
            
            Group {
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .font(.caption)
            .foregroundColor(.green)
            
        }
        .foregroundColor(.red)
        .font(.headline)
    }
}

struct GroupView_Previews: PreviewProvider {
    static var previews: some View {
        GroupView()
    }
}
