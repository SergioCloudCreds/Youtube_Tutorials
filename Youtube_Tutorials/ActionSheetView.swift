//
//  ActionSheetView.swift
//  Youtube_Tutorials
//
//  Created by Ghost on 2026/09/16.
//

import SwiftUI

struct ActionSheetView: View {
    
    @State var showConfirmationDialog: Bool = false
        
        var body: some View {
            Button("Open confirmation dialog") {
                showConfirmationDialog.toggle()
            }
            .confirmationDialog("This is the title",
                                isPresented: $showConfirmationDialog,
                                titleVisibility: .visible) {
                                getButtons()
            } message: {
                Text("This is the message")
            }
        }
        
        func getButtons() -> some View {
          return Group {
                Button("Change Profile") {}
                Button("Log Out", role: .destructive) {}
                Button("Cancel", role: .cancel) {}
            }
        }
    }

struct ActionSheetView_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetView()
    }
}
