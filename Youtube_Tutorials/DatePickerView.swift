//
//  DatePickerView.swift
//  Youtube_Tutorials
//
//  Created by Ghost on 2026/09/17.
//

import SwiftUI

struct DatePickerView: View {
    
    @State var selectedDate: Date = Date()
    
    var body: some View {
        DatePicker(selection: $selectedDate) {
            Text("Select A Date!")
                .accentColor(.red)
                .datePickerStyle(GraphicalDatePickerStyle())
        }
    }
}

struct DatePickerView_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerView()
    }
}
