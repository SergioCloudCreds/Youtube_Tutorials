//
//  TernaryView.swift
//  Youtube_Tutorials
//
//  Created by Ghost on 2026/09/14.
//

import SwiftUI

struct TernaryView: View {
    
    @State var isStartingState: Bool = false
    
    var body: some View {
        VStack {
            Button("Button: \(isStartingState.description)") {
                isStartingState.toggle()
            }
            
            RoundedRectangle(cornerRadius: isStartingState ? 20 : 30)
                .fill(isStartingState ? Color.red : Color.blue)
                .frame(width: isStartingState ? 200: 300, height: isStartingState ? 100: 200)
            
            Spacer()
            
        }
    }
}

struct TernaryView_Previews: PreviewProvider {
    static var previews: some View {
        TernaryView()
    }
}
