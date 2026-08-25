//
//  ScrollViewView.swift
//  Youtube_Tutorials
//
//  Created by Ghost on 2026/08/25.
//

import SwiftUI

struct ScrollViewView: View {
    var body: some View {
        ScrollView(showsIndicators: false){
            LazyVStack{
                ForEach(0..<10) {index in
                    ScrollView(.horizontal, showsIndicators: false){
                        LazyHStack{
                            ForEach(0..<10) {index in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(Color.white)
                                    .frame(width: 300, height: 300)
                                    .shadow(radius: 25)
                                    .padding()
                            }
                            
                        }
                    }
                    
                    
                }
            }
        }
    }
}

struct ScrollViewView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewView()
    }
}
