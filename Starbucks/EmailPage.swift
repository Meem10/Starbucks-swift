//
//  EmailPage.swift
//  Starbucks
//
//  Created by mohammed alsaad on 18/05/2023.
//

import SwiftUI

struct EmailPage: View {
    var body: some View {
        VStack(){
            HStack {
                Text("Inbox")
                    .font(.largeTitle)
                    .bold()
                .padding()
                Spacer()
               
            }
            Divider()
            Spacer()
            Image(systemName: "envelope")
                .resizable()
                .frame(width: 50 , height: 40)
                .foregroundColor(.orange)
                .padding()
                
            Text("No Messege Yet!")
                .bold()
                .font(.largeTitle)
                .padding()
            Text("Check back for sesonal Launches , new\n          menu items and promotions!")
                .foregroundColor(.gray)
            Spacer()
        }
    }
}

struct EmailPage_Previews: PreviewProvider {
    static var previews: some View {
        EmailPage()
    }
}
