//
//  PickerView.swift
//  Youtube_Tutorials
//
//  Created by Ghost on 2026/09/17.
//

import SwiftUI

struct PickerView: View {
    
    @State var selection: String = "1"
    
    var body: some View {
        
        Picker(selection: .constant(1)) {
            HStack {
                Text("Picker")
                Text(selection)
            }
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .padding(.horizontal)
            .background(Color.blue)
            .cornerRadius(10)
            .shadow(color: .blue, radius: 10, x: 0, y: 10)
        } label: {
            
        }
        .pickerStyle(MenuPickerStyle())

        
//        VStack {
//
//            HStack{
//                Text("Age: \(selection)")
//            }
//
//            Picker(selection: $selection ,label: Text("Picker") ,content: {
//                ForEach(1..<121) { number in
//                    Text("\(number)").tag("\(number)")
//                }
//            })
//        }
//        .pickerStyle(InlinePickerStyle())
    }
}

struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView()
    }
}
