//
//  PopoverView.swift
//  Youtube_Tutorials
//
//  Created by Ghost on 2026/09/15.
//

import SwiftUI

struct PopoverView: View {
    
    @State var showNewScreen: Bool = false
    
    var body: some View {
        ZStack{
            Color.orange
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Button("BUTTON") {
                    showNewScreen.toggle()
                }
                .font(.largeTitle)
                Spacer()
            }
//            .sheet(isPresented: $showNewScreen) {
//                NewScreen()
//            }
//            ZStack{
//                if showNewScreen {
//                    NewScreen( showNewScreen: $showNewScreen )
//                        .transition(.move(edge:.top))
//                        .animation(.default)
//
//                }
//            }
//            .zIndex(2.0)
            
            NewScreen( showNewScreen: $showNewScreen)
                .padding(.top, 100)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.linear)
        }
    }
}

struct NewScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    @Binding var showNewScreen : Bool
    
    var body: some View {
        ZStack(alignment:.topLeading){
            Color.purple
                .edgesIgnoringSafeArea(.all)
            
            Button("Back") {
                showNewScreen.toggle()
            }
            .font(.largeTitle)
            .foregroundColor(.purple)
            .frame(width: 150, height: 50)
            .background(Color.white.cornerRadius(30))
            .padding()
        }
    }
}

struct PopoverView_Previews: PreviewProvider {
    static var previews: some View {
        PopoverView()
       
    }
}
