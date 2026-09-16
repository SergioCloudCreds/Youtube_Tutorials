  //
//  AlertView.swift
//  Youtube_Tutorials
//
//  Created by Ghost on 2026/09/16.
//

import SwiftUI

struct AlertView: View {
    
    @State var showAlert: Bool = false
    @State var alertType: myAlerts? = nil
//    @State var alertTitle: String = ""
//    @State var alertMessage: String = ""
    @State var backgroundColor: Color = Color.blue
    
    enum myAlerts {
        case Success
        case Error
    }
    var body: some View {
        ZStack {
            
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            VStack {
                Button("Button #1") {
                    alertType = .Error
//                    alertTitle = "button 1 doesnt like you 🙄"
//                    alertMessage = "Brodacious go to button 2"
                    showAlert.toggle()
                }
                .foregroundColor(.white)
                
                Button("Button #2") {
                    alertType = .Success
//                    alertTitle = "Button 2 loves you ❤️"
//                    alertMessage = "Nice you listened to button 1"
                    showAlert.toggle()
                }
                .foregroundColor(.white)
                
            }
            .alert(isPresented: $showAlert) {
                getAlert()
            
            }
        }
    }
    func getAlert() -> Alert {
        
        switch alertType {
        case .Error:
                return Alert(title: Text("There was an error sir!"))
        case.Success:
            return Alert(title: Text("Transaction Successful!"), message: Text("$10,000"), dismissButton: .default(Text("Continue to app"), action: {
                backgroundColor = .green
            }))
        default:
            return Alert(title: Text("Oops didnt set AlertType"))
        }
        
//        Alert(title:Text(alertTitle),
//              message:Text(alertMessage),
//              dismissButton: .default(Text("OK BRO")))
//        Alert (title: Text("This is the title"),
//              message: Text("here is the description"),
//              primaryButton: .destructive(Text("Delete"), action: {
//            backgroundColor = Color.red
//        }),
//              secondaryButton: .cancel(Text("Cancel"), action: {
//            backgroundColor = Color(.black)
//        }))
    }
}

struct AlertView_Previews: PreviewProvider {
    static var previews: some View {
        AlertView()
    }
}
