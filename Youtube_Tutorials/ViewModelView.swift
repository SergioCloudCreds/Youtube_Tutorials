//
//  ViewModelView.swift
//  Youtube_Tutorials
//
//  Created by Ghost on 2026/09/21.
//

import SwiftUI

struct FruitModel: Identifiable{
    let id: String = UUID().uuidString
    let name: String
    let count: Int
    
}

class FruitViewModel: ObservableObject{
    
    @Published var fruitArray: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    func getFruits() {
        let fruit1 = FruitModel(name: "Oranges" ,count: 1 )
        let fruit2 = FruitModel(name: "Bananas" ,count: 2 )
        let fruit3 = FruitModel(name: "Peaches" ,count: 3 )
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) { [self] in
            fruitArray.append(fruit1)
            fruitArray.append(fruit2)
            fruitArray.append(fruit3)
            isLoading = false
        }
    }
    
    func deleteFruit(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
}

struct ViewModelView: View {
    
//    @State var fruitArray: [FruitModel] = []
    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    var body: some View {
        
        VStack {
            Text("fruit list".capitalized)
                .font(.largeTitle)
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            NavigationStack{
                List{
                    if fruitViewModel.isLoading {
                        ProgressView()
                    } else {
                        ForEach(fruitViewModel.fruitArray){ fruit in
                            HStack{
                                Text("\(fruit.count)")
                                    .foregroundColor(.red)
                                Text(fruit.name)
                                    .font(.headline)
                                    .bold()
                            }
                        }
                        .onDelete(perform: fruitViewModel.deleteFruit)
                    }
                    
                }
                .listStyle(GroupedListStyle())
                .onAppear{
                    fruitViewModel.getFruits()
            }
            
            }
            Spacer()
        }
    }
    
    
}

struct RandomScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack{
            Color.green.ignoresSafeArea(.all)
             
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Text("Go Back" )
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
            }

        }
    }
}

struct ViewModelView_Previews: PreviewProvider {
    static var previews: some View {
        ViewModelView()
//        RandomScreen()
    }
}
