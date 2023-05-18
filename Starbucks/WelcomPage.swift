//
//  WelcomPage.swift
//  Starbucks
//
//  Created by mohammed alsaad on 18/05/2023.
//

import SwiftUI

struct WelcomPage: View {
    var body: some View {
        NavigationView{
            ZStack{
            Color("Dgreen")
                .ignoresSafeArea()
            VStack{
               Image("Stars")
                    .resizable()
                    .frame(width: 100 , height: 100)
                    .padding()
                Text("Welcom to\nStarbuks Reward")
                    .bold()
                    .foregroundColor(.white)
                    .font(.largeTitle)
                Text("Verify your email address to get started! A verification link has been sent to your registered email address, click on the link to complete your registration.")
                    .foregroundColor(.gray)
                    .padding()
                Text("If you do not receive the email within the next few minutes, please check your junk/spam folder..")
                    .foregroundColor(.gray)
                    .padding()
                NavigationLink("Let's go!", destination: HomePageAfter())
                    .frame(maxWidth: 130 , maxHeight: 20)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.green)
                    .clipShape(Capsule())
                    .padding()
                    .offset(x:90 , y: 180)
                Spacer()
            }
        }}
        .navigationBarBackButtonHidden(false)
           
    }
}
struct WelcomPage_Previews: PreviewProvider {
    static var previews: some View {
        WelcomPage()
    }
}
