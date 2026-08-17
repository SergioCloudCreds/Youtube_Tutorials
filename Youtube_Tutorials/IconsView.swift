//
//  IconsView.swift
//  Youtube_Tutorials
//
//  Created by Ghost on 2026/08/17.
//

import SwiftUI

struct IconsView: View {
    var body: some View {
        Image(systemName: "person.badge.key")
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fit)
//            .font(.largeTitle)
//            .font(.system(size: 400))
//            .foregroundColor(.blue)
            .frame(width: 300, height: 300)
            
        
    }
}

struct IconsView_Previews: PreviewProvider {
    static var previews: some View {
        IconsView()
    }
}
