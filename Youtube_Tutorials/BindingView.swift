//
//  BindingView.swift
//  Youtube_Tutorials
//
//  Created by Ghost on 2026/09/14.
//

import SwiftUI

struct BindingView: View {
    
    @State var backgroundColor: Color = .green
    @State var title: String = "Your Ugly"
    
    var body: some View {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            VStack (spacing: 30){
                Text(title)
                    .fontWeight(.black)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .frame(width: 300, height: 60)
                    .background(Color.black)
                    .cornerRadius(20)
                
                
                
                ExtractedView(backgroundColor: $backgroundColor, title: $title )
                
                
            }
        }
    }
    
    struct BindingView_Previews: PreviewProvider {
        static var previews: some View {
            BindingView()
        }
    }
    
    struct ExtractedView: View {
        
        @Binding var backgroundColor: Color
        @State var buttonColor: Color = .red
        @Binding var title: String
        
        var body: some View {
            Button {
                buttonColor = .blue
                backgroundColor = .orange
                title = "I'm In jail"
            } label: {
                Text("Arrest Me!")
                    .fontWeight(.black)
                    .foregroundColor(.white)
                    .padding(20)
                    .background(buttonColor)
                    .cornerRadius(20)
            }
        }
    }
}
