//
//  CustomModelsView.swift
//  Youtube_Tutorials
//
//  Created by Ghost on 2026/09/18.
//

import SwiftUI

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
    let isVerified: Bool
}

struct CustomModelsView: View {
    
    @State var users: [UserModel] = [
//    "Denise", "Deise", "Paula", "Josegrinho"
        UserModel(displayName: "Denise", userName: "Deni.nzl", followerCount: 168476, isVerified: true),
        UserModel(displayName: "Deise", userName: "Daisy-Maisy", followerCount: 30567, isVerified: false),
        UserModel(displayName: "Paula", userName: "Papaulaula", followerCount: 5432534, isVerified: true),
        UserModel(displayName: "Mishanie", userName: "MishyCake", followerCount: 46053, isVerified: false),
        UserModel(displayName: "Josegrinho", userName: "Jose-Mourinho56", followerCount: 236, isVerified: false)
    ]
    
    var body: some View {
        VStack{
            Text("USERS")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            
            List{
                ForEach(users) { user in
                    HStack(spacing : 15) {
                        Circle()
                            .frame(width: 35, height: 35)
                        
                        VStack(alignment: .leading) {
                            Text(user.displayName)
                                .fontWeight(.black)
                            Text("@\(user.userName)")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                        if user.isVerified{
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.red)
                        }
                        
                        Spacer()
                        VStack{
                            Text("\(user.followerCount)")
                                .font(.headline)
                            Text("Followers")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                    }
                    .padding(.vertical, 10)
                }
//                ForEach(users, id: \.self) { name in
//
//                }
            }
        }
        
    }
}

struct CustomModelsView_Previews: PreviewProvider {
    static var previews: some View {
        CustomModelsView()
    }
}
