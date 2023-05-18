//
//  HomePageAfter.swift
//  Starbucks
//
//  Created by mohammed alsaad on 18/05/2023.
//

import SwiftUI

struct HomePageAfter: View {
    @State var a = Image(systemName: "envelope")
    @State var map = Image(systemName: "map")
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    Image(systemName: "person")
                        .padding()
                    NavigationLink("\(a)", destination: EmailPage())
                        .foregroundColor(.black)
                    Spacer()
                    NavigationLink("\(map)", destination: MapPage())
                        .foregroundColor(.black)
                        .padding()
                    
                }
                
                Text("Good Morning , Mohammed🌞")
                    .bold()
                    .padding()
                Divider()
                
                BalansAndStarsPage()
                .padding()
                
                myScrollView()
                Spacer()
                NavigationLink("$0.00 on Card", destination: AddMoneyPage(cahs: ""))
                    .frame(maxWidth: 120 , maxHeight: 20)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.green)
                    .clipShape(Capsule())
                    .padding()
                
            }
            
        }
        .navigationBarBackButtonHidden(false)
    }
}

struct HomePageAfter_Previews: PreviewProvider {
    static var previews: some View {
        HomePageAfter()
    }
}
