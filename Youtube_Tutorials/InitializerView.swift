//
//  InitializerView.swift
//  Youtube_Tutorials
//
//  Created by Ghost on 2026/08/19.
//

import SwiftUI

struct InitializerView: View {
    
    
    let backgroundColor : Color
    let count: Int
    let title: String
    
    init(count: Int, fruit : Fruit) {
        self.count = count
        
        if fruit == .apple {
            self.title = "Apples"
            self.backgroundColor = .red
        } else {
            self.title = "Oranges"
            self.backgroundColor = .orange
        }
        
    }
    
    enum Fruit {
        case apple
        case orange
    }
    
    var body: some View {
        VStack (spacing: 12) {
            
            Text("\(count)")
                .foregroundColor(Color.white)
                .font(.largeTitle)
                .underline()
            
            
            Text(title)
                .foregroundColor(Color.white)
                .font(.headline)
            
            
        }.frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

struct InitializerView_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            InitializerView(count: 69, fruit: .apple)
            InitializerView(count: 67, fruit: .orange)
        }
        
    }
}
