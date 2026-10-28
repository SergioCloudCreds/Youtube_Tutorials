//
//  ListSwipeActionView.swift
//  Youtube_Tutorials
//
//  Created by Ghost on 2026/10/26.
//

import SwiftUI

struct ListSwipeActionView: View {
    
    @State var fruits: [String] = [
    "Apples", "Orange","Banana", "Peach"
    ]
    
    var body: some View {
        List{
            ForEach(fruits, id: \.self) {
                Text($0.capitalized)
                    .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                        Button("Archive") {
                            
                        }
                        .tint(.green)
                        Button("Save") {
                            
                        }
                        .tint(.blue)
                        Button("Junk") {
                            
                        }
                        .tint(.black)
                    }
                    .swipeActions(edge: .leading, allowsFullSwipe: true) {
                        Button("Share") {
                            
                        }
                        .tint(.yellow)
                        Button("Like") {
                            
                        }
                        .tint(.red)
                    }
            }
        }
    }
}

struct ListSwipeActionView_Previews: PreviewProvider {
    static var previews: some View {
        ListSwipeActionView()
    }
}
