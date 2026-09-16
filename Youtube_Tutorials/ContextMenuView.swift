//
//  ContextMenuView.swift
//  Youtube_Tutorials
//
//  Created by Ghost on 2026/09/16.
//

import SwiftUI

struct ContextMenuView: View {
    
    @State var backgroundColor: Color = Color(.blue)
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0){
            Image(systemName: "house.fill")
                .font(.title)
           Text("Heartful Thinking")
                .font(.headline)
            Text("How to use Context Menu")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding()
        .background(backgroundColor.cornerRadius(20))
        .contextMenu {
            
            Button {
                backgroundColor = Color.orange
            } label: {
                Label("Fire Post", systemImage: "flame.fill ")
            }

            Button {
                backgroundColor = Color.gray
            } label: {
                Text("Report Post")
            }
            
            Button {
                backgroundColor = Color.red
            } label: {
                HStack {
                    Text("Like Post")
                    Image(systemName: "Heart.fill")
                }
            }
            
        }
        
    }
}

struct ContextMenuView_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuView()
    }
}
