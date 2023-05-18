//
//  OnBordingViewPage.swift
//  Starbucks
//
//  Created by mohammed alsaad on 18/05/2023.
//

import SwiftUI

struct OnBordingViewPage: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color("Ggreen")
                    .ignoresSafeArea()
                ZStack {
                    Color("Dgreen")
                        .ignoresSafeArea()
                    TabView{
                        
                        PagePush(
                            title: "Welcome to the Starbucks\n   Singapore mobile app!",
                            subTitle: "Getting and redeeming Rewards have never been easier. You can now earn and track Stars, and redeem Rewards on your app.",
                            image: "page1")
                        .background(Color("Ggreen"))
                        PagePush(
                            title: "New wavs to order\n on our app",
                            subTitle: "Order vour Starbucks favorites on the app and choose the pickuo method tha best sults Vou.",
                            image: "page2")
                        PagePush(
                            title: "Set up Auto-Reload",
                            subTitle: "Never have to manually reload your Card again when you set up auto-reload. Set up Auto-Reload using your credit or debit card as your payment method..",
                            image: "page3")
                        PagePush(
                            title: "Send an eGift!",
                            subTitle: "Send a digital Starbucks Card to your loved ones for them to enjoy their Starbucks favorites anytime, anywhere.",
                            image: "page4")
                        
                        
                        
                    }
                    .tabViewStyle(PageTabViewStyle())
                }
                NavigationLink("Let's go!", destination: HomePageAfter())
                    .frame(maxWidth: 120 , maxHeight: 20)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.green)
                    .clipShape(Capsule())
                    .padding()
                    .offset(x:90 , y:300)
            }
        }
        .navigationBarBackButtonHidden(false)    }
}

struct OnBordingViewPage_Previews: PreviewProvider {
    static var previews: some View {
        OnBordingViewPage()
    }
}
