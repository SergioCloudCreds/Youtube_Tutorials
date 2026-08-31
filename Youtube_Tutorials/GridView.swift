//
//  GridView.swift
//  Youtube_Tutorials
//
//  Created by Ghost on 2026/08/31.
//

import SwiftUI

struct GridView: View {

    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 20),
        GridItem(.flexible(), spacing: 20),
        GridItem(.flexible(), spacing: 20)
    ]

    var body: some View {
        ScrollView {
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 20,
                pinnedViews: []
            ) {
                Section(
                    content: {
                        ForEach(0..<50) { index in
                            RoundedRectangle(cornerRadius: 10.0)
                                .frame(height: 150)
                        }
                    },
                    header: {
                        Text("Section 1")
                    }
                )
            }
        }
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}
