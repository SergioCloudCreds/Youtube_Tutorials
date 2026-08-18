//
//  StacksView.swift
//  Youtube_Tutorials
//
//  Created by Ghost on 2026/08/18.
//

import SwiftUI

struct StacksView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            Rectangle()
                .fill(Color.red)
                .frame(width: 100, height: 100)
            Rectangle()
                .fill(Color.green)
                .frame(width: 100, height: 100)
            Rectangle()
                .fill(Color.blue)
                .frame(width: 100, height: 100)
        }
        
    }
}

struct StacksView_Previews: PreviewProvider {
    static var previews: some View {
        StacksView()
    }
}
