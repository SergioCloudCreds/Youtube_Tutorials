//
//  OnAppearView.swift
//  Youtube_Tutorials
//
//  Created by Ghost on 2026/09/18.
//

import SwiftUI

struct OnAppearView: View {
    
    @State var myText: String = "Start text."
    @State var count: Int = 0
    
    var body: some View {
        VStack{
            Text("On Appear: \(count)")
                .padding()
                .font(.largeTitle)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
                
            ScrollView{
                Text(myText)
                LazyVStack{
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 30)
                            .frame(height: 200)
                            .padding()
                            .onAppear {
                                count += 1
                            }
                    }
                }
                
            }
            .onAppear (perform:  {
                DispatchQueue.main.asyncAfter(deadline: .now()  + 5) {
                    myText = "This is the new Text!"
                }
            })
            .onDisappear (perform: {
                myText = "Ending text."
            })
        }
    }
}

struct OnAppearView_Previews: PreviewProvider {
    static var previews: some View {
        OnAppearView()
    }
}
