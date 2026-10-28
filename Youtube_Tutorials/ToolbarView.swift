//
//  ToolbarView.swift
//  Youtube_Tutorials
//
//  Created by Ghost on 2026/10/27.
//

import SwiftUI

struct ToolbarView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color.indigo.ignoresSafeArea()
                
                Text("Yo wsg g ")
                    .foregroundColor(.white)
            }
            .navigationTitle("Toolbar")
//            .navigationBarItems(
//                leading: Image(systemName: "heart.fill"),
//                trailing: Image(systemName: "gear"))
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image(systemName: "heart.fill")
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(systemName: "gear")
                }
            }
        }
    }
}

struct ToolbarView_Previews: PreviewProvider {
    static var previews: some View {
        ToolbarView()
    }
}
