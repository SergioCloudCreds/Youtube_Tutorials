//
//  TextFieldView.swift
//  Youtube_Tutorials
//
//  Created by Ghost on 2026/09/16.
//

import SwiftUI

struct TextFieldView: View {
    
    @State var textFieldText: String = ""
    @State var dataArray: [String] = []
    @State var titleTextField: String = "Title of Text Field"
    
    var body: some View {
        
            VStack {
                Text(titleTextField)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .padding(.top, 50)
                    .padding(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                TextField("Type something here..." , text: $textFieldText )
        //            .textFieldStyle(.roundedBorder)
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .foregroundColor(.blue)
                    .font(.headline)
                    .padding(.leading)
                    .padding(.trailing)
                
                Button {
                    if isTextAppropriate(){
                        submitInfo()
                    }
                    if !isTextAppropriate(){
                        textIsntAppropriate()
                    }
                } label: {
                    Text("Submit")
                        .padding()
                        .background(isTextAppropriate() ? Color.blue : Color.gray)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                    .font(.headline)
                }
                
                Spacer()
                
                ForEach(dataArray, id: \.self) { data in
                    Text(data)

                }
            }
    }
    
    func isTextAppropriate() -> Bool {
        if textFieldText.count >= 2 {
            return true
        }
        return false
    }
    
    func submitInfo() {
        dataArray.append(textFieldText)
        textFieldText = ""
    }
    
    func textIsntAppropriate() {
        titleTextField = "Add more charaters please bro!"
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView()
    }
}
