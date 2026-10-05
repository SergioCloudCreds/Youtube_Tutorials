//
//  AppStorageView.swift
//  Youtube_Tutorials
//
//  Created by Ghost on 2026/09/30.
//

import SwiftUI

struct AppStorageView: View {
     
    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
        VStack(spacing: 20){
            Text(currentUserName ?? "Add Name Here " )
            
            if let name = currentUserName {
                Text(name)
            }
            
            Button("SAVE") {
                let name: String = "Nick"
                currentUserName = name
            }
        }
        .onAppear{
            currentUserName = UserDefaults.standard.string(forKey: "name")
        }
    }
}

struct AppStorageView_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageView()
    }
}
