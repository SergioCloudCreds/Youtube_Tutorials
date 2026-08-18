//
//  ImagesView.swift
//  Youtube_Tutorials
//
//  Created by Ghost on 2026/08/18.
//

import SwiftUI

struct ImagesView: View {
    var body: some View {
        Image("AppleIcon")
            .resizable()
//            .aspectRatio(contentMode: .fit)
//            .scaledToFit()
//            .scaledToFill()
            .frame(width: 300, height: 300)
//            .cornerRadius(100)
//            .clipShape(RoundedRectangle(cornerRadius: 30))
        
    }
}

struct ImagesView_Previews: PreviewProvider {
    static var previews: some View {
        ImagesView()
    }
}
