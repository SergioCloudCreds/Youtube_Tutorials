//
//  AppStorageView.swift
//  Youtube_Tutorials
//
//  Created by Ghost on 2026/09/30.
//

import SwiftUI

struct AppStorageView: View {
    
    @State var currentUserName: String?
    
    var body: some View {
        VStack(spacing: 20){
            Text(currentUserName ?? "Add Name Here " )
            
            Button("SAVE") {
                currentUserName = "Nick"
            }
            
            if let name = currentUserName {
                Text(name)
            }
        }
    }
}

struct AppStorageView_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageView()
    }
}
