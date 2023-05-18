//
//  SignInPage.swift
//  Starbucks
//
//  Created by mohammed alsaad on 18/05/2023.
//

import SwiftUI

struct SignInPage: View {
    @State var email: String = ""
    @State var password: String = ""
    @State var isOn1: Bool
    
    var body: some View {
        NavigationView{
            VStack{
                Text("Starbucks Rewards")
                    .font(.largeTitle)
                    .bold()
                    .padding()
                Divider()
                TextField("Email", text: $email)
                    .frame(height: 45)
                    .textFieldStyle(PlainTextFieldStyle())
                    .padding([.horizontal], 4)
                    .cornerRadius(16)
                    .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.gray))
                    .padding([.horizontal], 24)
                    .padding(.top, 13)
                
                
                HStack {
                    SecureField("Password", text: $password)
                        .frame(height: 45)
                        .textFieldStyle(PlainTextFieldStyle())
                        .padding([.horizontal], 4)
                        .cornerRadius(16)
                        .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.gray))
                        .padding([.horizontal], 24)
                        .padding(.top, 13)
                    
                }
                Toggle("Keep me Logged in", isOn: $isOn1)
                  .toggleStyle(CheckboxToggleStyle(style: .square))
                  .foregroundColor(.green)
                Divider()
                    .frame(width: 300)
                Text("Forget Password?")
                Spacer()
                NavigationLink("Join now", destination: WelcomeAfterPage(show: true))
                    .frame(maxWidth: 120 , maxHeight: 20)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.green)
                    .clipShape(Capsule())
                    .padding()
                
            }
        }
       
    }
}

struct SignInPage_Previews: PreviewProvider {
    static var previews: some View {
        SignInPage(isOn1: true)
    }
}
