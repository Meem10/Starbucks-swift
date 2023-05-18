//
//  SingUpDetalisePage.swift
//  Starbucks
//
//  Created by mohammed alsaad on 18/05/2023.
//

import SwiftUI

struct SingUpDetalisePage: View {
    @State var username: String = ""
    @State var email: String = ""
    @State var password: String = ""
    @State var confrim_password = ""
    @State private var date = Date()
    @State private var showingAlert = false
    var body: some View {
        NavigationView{
            VStack{
                Text("Starbucks Rewards")
                    .font(.largeTitle)
                    .bold()
                    .padding()
                Text("Login Details")
                    .font(.title)
                    .padding()
                Spacer()
                ScrollView {
                    
                    VStack {
                        TextField("Usename", text: $username)
                            .frame(height: 45)
                            .textFieldStyle(PlainTextFieldStyle())
                            .padding([.horizontal], 4)
                            .cornerRadius(16)
                            .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.gray))
                            .padding([.horizontal], 24)
                        
                        
                        TextField("Email", text: $email)
                            .frame(height: 45)
                            .textFieldStyle(PlainTextFieldStyle())
                            .padding([.horizontal], 4)
                            .cornerRadius(16)
                            .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.gray))
                            .padding([.horizontal], 24)
                            .padding(.top, 13)
                        
                        SecureField("Password", text: $password)
                            .frame(height: 45)
                            .textFieldStyle(PlainTextFieldStyle())
                            .padding([.horizontal], 4)
                            .cornerRadius(16)
                            .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.gray))
                            .padding([.horizontal], 24)
                            .padding(.top, 13)
                        
                        SecureField("Confirm Password", text: $confrim_password)
                            .frame(height: 45)
                            .textFieldStyle(PlainTextFieldStyle())
                            .padding([.horizontal], 4)
                            .cornerRadius(16)
                            .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.gray))
                            .padding([.horizontal], 24)
                            .padding(.top, 13)
                            .padding(.bottom, 25)
                        
                        Spacer()
                        Divider()
                        Text("Personal Information")
                        TextField("Fisrt name", text: $username)
                            .frame(height: 45)
                            .textFieldStyle(PlainTextFieldStyle())
                            .padding([.horizontal], 4)
                            .cornerRadius(16)
                            .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.gray))
                            .padding([.horizontal], 24)
                            .padding(.top, 13)
                            .padding(.bottom, 25)
                        TextField("Second name", text: $username)
                            .frame(height: 45)
                            .textFieldStyle(PlainTextFieldStyle())
                            .padding([.horizontal], 4)
                            .cornerRadius(16)
                            .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.gray))
                            .padding([.horizontal], 24)
                        DatePicker(
                        "Birthday",
                            selection: $date,
                            in: Date()...,
                            displayedComponents: [.date])
                        .padding()
                    }
                    .padding()
                    
                    
                    
                }
                .padding(.top, 20)
                
                Button("Join Now"){
                    showingAlert = true
                    }
                .alert("Thank You , now go and sing in!", isPresented: $showingAlert) {
                           Button("OK", role: .cancel) { }
                    }
                    .frame(maxWidth: .infinity , maxHeight: 20)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.green)
                    .clipShape(Capsule())
                    .padding(.top, 13)
                    .padding(.bottom, 25)
                    .padding()
            }
        }
        .navigationBarBackButtonHidden(false)
    }
}

struct SingUpDetalisePage_Previews: PreviewProvider {
    static var previews: some View {
        SingUpDetalisePage()
    }
}
