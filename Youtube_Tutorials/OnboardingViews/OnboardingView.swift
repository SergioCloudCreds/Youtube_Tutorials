//
//  OnboardingView.swift
//  Youtube_Tutorials
//
//  Created by Ghost on 2026/10/06.
//

import SwiftUI

struct OnboardingView: View {

//    ONBOARDING STATES
    /*
     0 - Welcome Screen
     1 - Add Name
     2 - Add Age
     3 - Add Gender
     */
    @State var onboardingState: Int = 3
    @State var name: String = ""
    @State var age: Double = 50
    @State var gender: [String] = []
    
    var body: some View {
        ZStack{
//            content
            ZStack {
                switch onboardingState {
                case 0:
                    welcomeSection
                case 1:
                    addNameSection
                case 2:
                    addAgeSection
                case 3:
                    addGenderSection
                    
                default:
                    RoundedRectangle(cornerRadius: 25)
                        .foregroundColor(.green)
                }
            }
//            buttons
            VStack{
                Spacer()
                bottomButton
            }
            .padding(30)
        }
    }
    
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
            .background(Color("LightPurple"))
    }
}

// MARK: COMPONENTS

extension OnboardingView {
    
    private var bottomButton: some View {
        Text("Sign In")
            .font(.headline)
            .foregroundColor(Color("LightPurple"))
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .cornerRadius(10)
            .onTapGesture {
                
            }
    }
    
    private var welcomeSection: some View {
        
        VStack(spacing: 40){
            
            Spacer()
            
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.white)
            
            Text("FIND YOUR MATCH")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .overlay(
                    Capsule(style: .continuous)
                        .frame(height: 3)
                    ,alignment: .bottom
                )
                .foregroundColor(.white)
            
            Text("This is the #1 app for finding your match online! In this tutorial we are practicing using AppStorage and other swiftUI techniques. ")
                .fontWeight(.medium)
                .foregroundColor(.white )
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30)
    }
    
    private var addNameSection: some View {
        
        VStack(spacing: 40){
            Spacer()
            Text("What's Your Name?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
            TextField("Your Name Here...", text: $name)
                .font(.headline)
                .padding()
                .frame(height: 55)
                .background(Color.white)
                .foregroundColor(Color.black)
                .cornerRadius(10)
                
            Spacer()
            Spacer()
        }
        .padding(30)
        
    }
    
    private var addAgeSection: some View {
        
        VStack(spacing: 40){
            Spacer()
            Text("What's Your Age?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
            Text("\(String(format: "%.0f", age))")
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Slider(value: $age,
                   in: 18...100,
                   step: 1
            )
            .accentColor(.white)
            Spacer()
            Spacer()
        }
        .padding(30)
        
    }
    
    private var addGenderSection: some View {
        
        VStack(spacing: 40){
            Spacer()
            Text("What's Your Gender?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
            Picker(selection: $gender) {
                Text("Male").tag(1)
                Text("Female").tag(2)
                
            } label: {
                Text("Select A Gender")
                    .font(.headline)
                    .foregroundColor(.white)
            }
            .pickerStyle(MenuPickerStyle())
           Spacer()
           Spacer()
        }
        .padding(30)
        
    }
    
}
