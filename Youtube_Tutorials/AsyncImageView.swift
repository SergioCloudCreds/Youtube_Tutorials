//
//  AsyncImageView.swift
//  Youtube_Tutorials
//
//  Created by Ghost on 2026/10/23.
//

import SwiftUI

struct AsyncImageView: View {
    
    let url = URL(string:
                    "https://picsum.photos/400")
    
    var body: some View {
        AsyncImage(url: url, content: { returnedImage in
            returnedImage
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .cornerRadius(20)
        }, placeholder: {
            ProgressView()
        })
            
        
    }
}

struct AsyncImageView_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageView()
    }
}
