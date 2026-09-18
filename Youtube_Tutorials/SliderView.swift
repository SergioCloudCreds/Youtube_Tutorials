//
//  SliderView.swift
//  Youtube_Tutorials
//
//  Created by Ghost on 2026/09/17.
//


import SwiftUI

struct SliderView: View {
    
    @State var sliderValue: Double = 3
    
    var body: some View {
        
        VStack {
            
            Text("Rating: \(String(format: "%.0f", sliderValue))")
            
            Slider(value: $sliderValue, in: 1...5)
                .accentColor(.red)
        }
    }
}

struct RatingSliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView()
    }
}

