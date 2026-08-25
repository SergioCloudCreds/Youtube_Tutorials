//
//  ForEachView.swift
//  Youtube_Tutorials
//
//  Created by Ghost on 2026/08/25.
//

import SwiftUI

struct ForEachView: View {
    
    let data: [String] = ["hi","hello","eu bien"]
    
    var body: some View {
        VStack {
            ForEach(data.indices) { index in
                Text("\(data[index]): \(index)")
            }
            ForEach(0..<10) { index in
                Circle()
                    .frame(width: 50)
                    
            }
        }
    }
}

struct ForEachView_Previews: PreviewProvider {
    static var previews: some View {
        ForEachView()
    }
}
