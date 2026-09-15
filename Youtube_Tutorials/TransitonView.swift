//
//  TransitonView.swift
//  Youtube_Tutorials
//
//  Created by Ghost on 2026/09/15.
//

import SwiftUI

struct TransitonView: View {
    
    @State var showView : Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom ){
            VStack{
                Button("Button") {
                    showView.toggle()
                }
                Spacer()
                
            }
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .transition(.asymmetric(
                        insertion: .slide,
                        removal: .move(edge: .bottom)))
                    .animation(.easeInOut)
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct TransitonView_Previews: PreviewProvider {
    static var previews: some View {
        TransitonView()
    }
}
