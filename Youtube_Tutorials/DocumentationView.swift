//
//  DocumentationView.swift
//  Youtube_Tutorials
//
//  Created by Ghost on 2026/09/18.
//

import SwiftUI

struct DocumentationView: View {
    
//MARK: PROPERTIES
    
    @State var data: [String] = [
    "Apples", "Oranges", "Peaches", "Manga"
    ]
    @State var showAlert: Bool = false
    
//MARK: BODY
    
    /*
     
     NOW THAT DRAGGING
     
     */
    
    var body: some View {
        VStack { // VSTACK |START|
            Text("Documentation Bootcamp")
                .font(.largeTitle)
                .fontWeight(.bold)
                
            ScrollView{ // SCROLL |START|
                Text("Hello")
                
                ForEach(data, id: \.self){ name in
                    Text(name)
                        .font(.headline)
                    
                }
            } // SCROLL |END|  
            .alert (isPresented: $showAlert, content: {
                    getAlert(text: "This is the alert")
                })
            
            Button("Alert") {
                showAlert.toggle()
                
            }
        } // VSTACK |END|
    }
    
//MARK: FUNCTIONS
    
    /// Gets an alert with a specified title.
    ///
    ///This function creates and returns an alert immediately. The alert will have a titile based on the text paramater but it will NOT have a message.
    ///```
    ///getAlert(text: "Hi") -> Alert(title: Text("Hi"))
    ///```
    /// - Parameter text: This is the title for the alert
    /// - Returns: Returns an alert with a title.
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
}

//MARK: PREVIEW

struct DocumentationView_Previews: PreviewProvider {
    static var previews: some View {
        DocumentationView()
    }
}
