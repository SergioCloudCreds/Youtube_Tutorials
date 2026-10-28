//
//  SafeAreaInset.swift
//  Youtube_Tutorials
//
//  Created by Ghost on 2026/10/27.
//

import SwiftUI

struct SafeAreaInset: View {
    var body: some View {
        NavigationStack{
            List(0..<10) { _ in
                Rectangle()
                    .frame(height: 300)
            }
            .navigationTitle("Safe Are Insets")
//            .overlay(
//            Text("Hi")
//                .frame(maxWidth: .infinity)
//                .background(Color.yellow)
//            ,alignment: .bottom
//            )
            .safeAreaInset(edge: .bottom) {
                Text("Hi")
                    .frame(maxWidth: .infinity)
                    .background(Color.yellow)
            }
        }
    }
}

struct SafeAreaInset_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaInset()
    }
}
