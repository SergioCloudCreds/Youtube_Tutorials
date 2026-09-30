//
//  EnvironmentObject.swift
//  Youtube_Tutorials
//
//  Created by Ghost on 2026/09/25.
//

import SwiftUI

class  EnvironmentViewModel: ObservableObject {
    
    @Published var dataArray: [String] = []
    
    init () {
        
    }
    
    func getData() {
        self.dataArray.append(contentsOf: ["iPad","iPhone","iMac","Apple WWatch"])
    }
}


struct EnvironmentObject: View {
    
    @StateObject var viewModel: EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {
            List{
                ForEach(viewModel.dataArray, id: \.self) { item in
                    Text(item)
                }
            }
    }
}

struct EnvironmentObject_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObject()
    }
}
