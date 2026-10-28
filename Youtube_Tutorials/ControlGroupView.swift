//
//  ControlGroupView.swift
//  Youtube_Tutorials
//
//  Created by Ghost on 2026/10/28.
//

import SwiftUI

struct ControlGroupView: View {
    var body: some View {
        Menu("My Menu") {
            ControlGroup{
                Button("Um") {
                    
                }
                Button("Dos") {
                    
                }
                Button("Tres") {
                    
                }
            }
            Menu("Three"){
                Button("BRO") {
                    
                }
                Button("BRODIE") {
                    
                }
                Button("BRODACIOUS") {
                    
                }
            }
        }
    }
}

struct ControlGroupView_Previews: PreviewProvider {
    static var previews: some View {
        ControlGroupView()
    }
}
