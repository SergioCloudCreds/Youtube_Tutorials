//
//  SpacersView.swift
//  Youtube_Tutorials
//
//  Created by Ghost on 2026/08/19.
//

import SwiftUI

struct SpacersView: View {
    var body: some View {
        
        VStack{
            HStack (spacing: 0){
                //            Spacer()
                //                .frame(height: 10)
                //                .background(Color.orange)
                //
                //            Rectangle()
                //                .frame(width: 50, height: 50)
                //
                //            Spacer()
                //                .frame(height: 10)
                //                .background(Color.orange)
                //
                //            Rectangle()
                //                .fill(Color.red)
                //                .frame(width: 50, height: 50)
                //
                //            Spacer()
                //                .frame(height: 10)
                //                .background(Color.orange)
                //
                //            Rectangle()
                //                .fill(Color.green)
                //                .frame(width: 50, height: 50)
                //
                //            Spacer()
                //                .frame(height: 10)
                //                .background(Color.orange)
                
                Image(systemName: "xmark")
                    .font(.largeTitle)
                    .padding(.horizontal)
                
                Spacer()
                    .background(Color.green)
                
                Image(systemName: "gear")
                    .font(.largeTitle)
                    .padding(.horizontal)
                
            }
            
                Spacer()
                
                Rectangle()
                .frame(height: 55)
            
           
        } 
    
    }
}

struct SpacersView_Previews: PreviewProvider {
    static var previews: some View {
        SpacersView()
    }
}
