//
//  ButtonsView.swift
//  Youtube_Tutorials
//
//  Created by Ghost on 2026/09/03.
//

import SwiftUI

struct ButtonsView: View {
    
    @State var title: String = "This is my title"
    
    var body: some View {
        VStack{
            
            Text(title)
            
            Button {
                self.title = "Button cicrcle was Pressed"
            } label: {
                Circle()
                    .frame(width: 100)
                    .overlay {
                        Image(systemName: "paperplane.fill")
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
            }
            Button("Im button #2") {
                self.title = "Button #2 was Pressed"
            }
        
        }
        
    }
}

struct ButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsView()
    }
}
