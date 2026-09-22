//
//  IfLetGuardView.swift
//  Youtube_Tutorials
//
//  Created by Ghost on 2026/09/18.
//

import SwiftUI

struct IfLetGuardView: View {
    
    @State var currentUserID: String? = nil
    @State var displayText: String? = nil
    @State var isLoading: Bool = false
    
    var body: some View {
        
        VStack {
            Text("Safe Coding")
                .font(.largeTitle)
                .fontWeight(.black)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            
            VStack{
                 
                Text("Here we are practicing safe coding")
                
                if let text = displayText {
                    Text(text)
                        .font(.title)
                }
                
                if isLoading {
                    ProgressView()
                }
                
                Spacer()
            }// VSTACK INSIDE END
            .frame(maxHeight: .infinity)
            .onAppear(){
                loadData2()
            }
        }// VSTACK OUTSIDE END
    }
    
    func loadData() { //func start
        
        if let userID = currentUserID {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3 ) {
                displayText = "This is the new data! User ID is: \(userID)"
                isLoading = false
            }
            
        }else{
            displayText = "Error 112 There is no user ID"
        }
    } //func End
    
    func loadData2() {
        guard let userID = currentUserID else {
            displayText = "Error 112 There is no user ID"
            return
        }
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3 ) {
            displayText = "This is the new data! User ID is: \(userID)"
            isLoading = false
        }
    }
}

struct IfLetGuardView_Previews: PreviewProvider {
    static var previews: some View {
        IfLetGuardView()
    }
}
