//
//  NavigationStackView.swift
//  Youtube_Tutorials
//
//  Created by Ghost on 2026/10/27.
//

import SwiftUI

struct NavigationStackView: View {
    
    let fruits = ["Apples", "Oranges", "Bananas"]
    
    @State private var stackPath: [String] = []
    
    var body: some View {
        NavigationStack(path: $stackPath){
            ScrollView{
                VStack (spacing: 40){
                    
                    Button("Super Segment") {
                        stackPath.append("Coconut")
                    }
                    
                    ForEach(fruits, id: \.self) { fruit in
                        NavigationLink(value: fruit) {
                            Text(fruit)
                        }
                    }
                    
                    ForEach(0..<10) { x in
                        
                        NavigationLink(value: x) {
                            Text("Click me: \(x)")
                        }
                    }
                    .navigationTitle("Nav View")
                    .navigationDestination(for: Int.self) { value in
                        MySecondScreen(value: value)
                    }
                    .navigationDestination(for: String.self) { value in
                        Text("Another Screen \(value)")
                    }
                }
            }
        }
    }
}

struct MySecondScreen: View {
   
    let value: Int
    
    init(value: Int) {
        self.value = value
        print("INIT SCREEN: \(value)")
    }
    
    var body: some View {
        Text("Screen \(value)")
    }
}

struct NavigationStackView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStackView()
    }
}
