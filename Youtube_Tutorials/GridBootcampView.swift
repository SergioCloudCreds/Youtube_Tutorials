//
//  GridBootcampView.swift
//  Youtube_Tutorials
//
//  Created by Ghost on 2026/10/28.
//

import SwiftUI

struct GridBootcampView: View {
    var body: some View {
        
        
        
        Grid(alignment: .topLeading) {
            ForEach(0..<4) { rowIndex in
                GridRow {
                    ForEach(0..<4) { columnIndex in
                        let cellNumber = (rowIndex * 4) + (columnIndex + 1)
                        cell(int: cellNumber)
                    }
                }
            }
        }
        
//        Grid(){
//
//            GridRow {
//                cell(int: 1)
//                cell(int: 2)
//                cell(int: 3)
//            }
//
//            Divider()
//                .gridCellUnsizedAxes(.horizontal)
//
//            GridRow {
//                cell(int: 4)
//                cell(int: 5)
//                cell(int: 6)
//            }
//        }
    }
    
    private func cell(int: Int) -> some View {
        Text("\(int)")
            .font(.largeTitle)
            .padding()
            .background(Color.blue)
    }
    
}

struct GridBootcampView_Previews: PreviewProvider {
    static var previews: some View {
        GridBootcampView()
    }
}
