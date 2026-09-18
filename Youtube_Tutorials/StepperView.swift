//
//  StepperView.swift
//  Youtube_Tutorials
//
//  Created by Ghost on 2026/09/17.
//

import SwiftUI

struct StepperView: View {
    
    @State var stepperValue: Int = 10
    @State var widthIncrement: CGFloat = 0
    
    
    var body: some View {
        VStack {
            Stepper(value: $stepperValue ) {
                Text("Sepper: \(stepperValue)")
            }
            .padding(50)
            
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: 100 + widthIncrement, height: 100)
            
            Stepper ("Stepper 2"){
                incrementWidth (amount: 50)
            } onDecrement: {
                incrementWidth (amount: -50)
            }

        }
    }
    func incrementWidth(amount: CGFloat){
        withAnimation(.easeInOut) {
            widthIncrement += amount
        }
    }
}

struct StepperView_Previews: PreviewProvider {
    static var previews: some View {
        StepperView()
    }
}
