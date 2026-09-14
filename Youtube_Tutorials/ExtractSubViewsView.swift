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
             
            //Content
            VStack{
                Text("My Item")
                Text("Apples")
            }
            .padding()
            .background(Color.red)
            .cornerRadius(10)
            }
        }
    }

struct ExtractSubViewsView_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubViewsView()
    }
}
