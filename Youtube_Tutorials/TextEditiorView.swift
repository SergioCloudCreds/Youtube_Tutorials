//
//  TextEditiorView.swift
//  Youtube_Tutorials
//
//  Created by Ghost on 2026/09/16.
//

import SwiftUI

struct TextEditiorView: View {
    
    @State var textEditorText: String = "Some times in the life im too competetive you know"
    @State var savedText: String = ""
    
    var body: some View {
        VStack{
            TextEditor(text: $textEditorText)
                .frame(height: 250)
                .colorMultiply(Color.gray.opacity(0.5))
                .cornerRadius(30)
            
            Button {
                savedText = textEditorText
            } label: {
                Text("SAVE")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
                
            }
            Text(savedText)
            Spacer()

        }
        .padding()
       
    
    }
}

struct TextEditiorView_Previews: PreviewProvider {
    static var previews: some View {
        TextEditiorView()
    }
}
