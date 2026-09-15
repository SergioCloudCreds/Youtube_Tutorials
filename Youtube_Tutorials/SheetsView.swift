//
//  SheetsView.swift
//  Youtube_Tutorials
//
//  Created by Ghost on 2026/09/15.
//

import SwiftUI

struct SheetsView: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack{
            Color.green
                .edgesIgnoringSafeArea(.all)
            
            Button {
                showSheet.toggle()
            } label: {
                Text("Im a Button Bro: \(showSheet.description)")
                    .foregroundColor(Color.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
            }
            .fullScreenCover(isPresented: $showSheet) {
                SecondScreen()
            }
//            .sheet(isPresented: $showSheet) {
//                SecondScreen()
                
            }
            
        }
    }

struct SecondScreen: View {
    
    @Environment (\.presentationMode) var presentationMode
    
    var body: some View {
        
        ZStack(alignment: .topLeading){            Color.red
                .edgesIgnoringSafeArea(.all)
            
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .padding(20)
           
            }
            
        }
    }
}

struct SheetsView_Previews: PreviewProvider {
    static var previews: some View {
        SheetsView()
//        SecondScreen()
    }
}
