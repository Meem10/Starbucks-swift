//
//  FirstPage.swift
//  Starbucks
//
//  Created by mohammed alsaad on 18/05/2023.
//

import SwiftUI

struct FirstPage: View {
    @State var sign = Image(systemName: "person.badge.plus")
    var body: some View {
        NavigationView{ VStack(alignment: .leading) {
            Text("It' great day for coffe ☕️")
                .font(.title)
                .bold()
                .padding()
            HStack {
                
                NavigationLink("\(sign)", destination: SignInPage( isOn1: true))
                    .foregroundColor(.black)
                Text("Sign In")
                Image(systemName: "envelope.badge")
                Text("Mail")
                Spacer()
                Image(systemName: "person")
            }
            .padding()
            Divider()
            ScrollView{
                Image("homeImage1")
                    .resizable()
                    .frame(width: 393 , height: 200)
                Image("homeImage2")
                    .resizable()
                    .frame(width: 380 , height: 200)
                Image("nes")
                    .resizable()
                    .frame(width: 380 , height: 200)
                Spacer()
                
                
                
            }
            NavigationLink("Join now", destination: SingUpPAge())
                .frame(maxWidth: 120 , maxHeight: 20)
                .foregroundColor(.white)
                .padding()
                .background(Color.green)
                .clipShape(Capsule())
                .padding()
        }
        }
    }
    
    struct FirstPage_Previews: PreviewProvider {
        static var previews: some View {
            FirstPage()
        }
    }
}
