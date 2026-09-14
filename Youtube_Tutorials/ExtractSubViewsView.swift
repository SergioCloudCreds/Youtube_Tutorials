//
//  ExtractSubViewsView.swift
//  Youtube_Tutorials
//
//  Created by Ghost on 2026/09/14.
//

import SwiftUI

struct ExtractSubViewsView: View {
    var body: some View {
        ZStack{
            //background
            Color(.brown).edgesIgnoringSafeArea(.all)
             
            //content
            contentLayer
            }
        }
    
    var contentLayer: some View {
        HStack{
            //Content
            MyItem(title: "Apple", count: 1, color: .red)
            MyItem(title: "Orange's", count: 2, color: .orange)
            MyItem(title: "Banana's", count: 3, color: .yellow)
            }
    }
    
    }

struct ExtractSubViewsView_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubViewsView()
    }
}

struct MyItem: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack{
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
