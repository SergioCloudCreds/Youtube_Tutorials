//
//  SumbmitTextFieldView.swift
//  Youtube_Tutorials
//
//  Created by Ghost on 2026/10/27.
//

import SwiftUI

struct SumbmitTextFieldView: View {
    
    @State private var text: String = ""
    
    var body: some View {
        TextField("Placeholder...",text: $text)
            .submitLabel(.send)
            .onSubmit {
                print("Something to the console!")
            }
    }
}

struct SumbmitTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        SumbmitTextFieldView()
    }
}
