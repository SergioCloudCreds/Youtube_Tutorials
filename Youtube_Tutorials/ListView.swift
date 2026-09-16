//
//  ListView.swift
//  Youtube_Tutorials
//
//  Created by Ghost on 2026/09/16.
//

import SwiftUI

struct ListView: View {
    
    @State var fruits: [String] = [
    "Apples", "Orange","Banana", "Peach"
    ]
    
    var body: some View {
        List{
            ForEach(fruits, id: \.self) { fruit in
                Text(fruit)
            }
        }
//        .onDelete(perform: { indexSet  in
//            <#code#>
//        })
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
