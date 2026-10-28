//
//  ResizeableSheetView.swift
//  Youtube_Tutorials
//
//  Created by Ghost on 2026/10/27.
//

import SwiftUI

struct ResizeableSheetView: View {
    
    @State private var showSheet: Bool = false
    
    var body: some View {
        Button("Click me") {
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet) {
            MyNextView()
                .presentationDetents([.large, .medium])
        }
    }
}

struct MyNextView: View{
    var body: some View{
        ZStack{
            Color.red.ignoresSafeArea()
            
            Text("Hello World bruh")
        }
        
    }
}

struct ResizeableSheetView_Previews: PreviewProvider {
    static var previews: some View {
        ResizeableSheetView()
    }
}
