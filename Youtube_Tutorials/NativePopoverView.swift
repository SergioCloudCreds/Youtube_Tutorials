//
//  NativePopoverView.swift
//  Youtube_Tutorials
//
//  Created by Ghost on 2026/10/28.
//

import SwiftUI

struct NativePopoverView: View {
    
    @State private var showPopover: Bool = false
    
    var body: some View {
        ZStack{
            Color.gray.ignoresSafeArea()
            
            Button("CLICK ME BRO!") {
                showPopover.toggle()
            }
            .padding(20)
            .background(Color.yellow)
            .popover(isPresented: $showPopover, attachmentAnchor: .point(.top), content: {
                Text("Hello subcribers!")
                     .presentationCompactAdaptation(.popover)
            })
        }
    }
}

struct NativePopoverView_Previews: PreviewProvider {
    static var previews: some View {
        NativePopoverView()
    }
}
