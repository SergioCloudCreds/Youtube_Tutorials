//
//  ProfileView.swift
//  Youtube_Tutorials
//
//  Created by Ghost on 2026/10/06.
//

import SwiftUI

struct ProfileView: View {
    
//      app storage
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        
        VStack{
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            Text(currentUserName ?? "Your Name Here")
            Text("This user is \(currentUserAge ?? 0) years old")
            Text("Their gender is \(currentUserGender ?? "unknown" )")
            Text("Sign Out")
                .padding(10)
                .padding(.horizontal, 20)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .background(Color.black)
                .cornerRadius(10 )
                .onTapGesture {
                    SignOut()
                }
            
        }
        .font(.title)
        .foregroundColor(Color("LightPurple"))
        .padding()
        .padding(.vertical, 40)
        .background(Color.white)
        .cornerRadius(20)
        .shadow(radius: 30)
    }
    func SignOut() {
        currentUserName = nil
        currentUserAge = nil
        currentUserGender = nil
        withAnimation(.spring()) {
            currentUserSignedIn = false
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
