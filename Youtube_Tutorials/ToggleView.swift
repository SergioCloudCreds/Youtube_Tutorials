//
//  ToggleView.swift
//  Youtube_Tutorials
//
//  Created by Ghost on 2026/09/16.
//

import SwiftUI

struct ToggleView: View {
    
    @State var toggleIsOn: Bool = false
    
    var body: some View {
        
        VStack {
            
            HStack{
                Text("Status:")
                Text(toggleIsOn ? "Crazy" : "Not Crazy")
            }
            .font(.largeTitle)
            
            Toggle(isOn: $toggleIsOn) {
                Text("Denise")
                    .font(.largeTitle)
            }
            .toggleStyle(SwitchToggleStyle(tint: Color.red))
            
            Spacer()
        }
        .padding(.horizontal, 80)
    }
}

struct ToggleView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleView()
    }
}
