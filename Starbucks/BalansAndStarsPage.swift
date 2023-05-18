//
//  BalansAndStarsPage.swift
//  Starbucks
//
//  Created by mohammed alsaad on 18/05/2023.
//

import SwiftUI
struct BalansAndStarsPage : View {
    var body: some View{
        HStack {
            VStack{
                Text("BALANCE(as of 9:00AM)")
                    .font(.system(size: 15))
                    .foregroundColor(.white)
                Text("$0.00   >")
                    .font(.system(size: 15))
                    .foregroundColor(.white)
                NavigationLink("Add Money", destination: AddMoneyPage(cahs: ""))
                    .frame(maxWidth: 60 , maxHeight: 0)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.green)
                    .clipShape(Capsule())
                    .padding()
                    .font(.system(size: 10))
                
            }
            
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 0)
                .stroke(.black , lineWidth: 1))
            .background(Color("Dgreen"))
            VStack{
                Text("Stars")
                    .font(.system(size: 15))
                    .foregroundColor(.white)
                HStack {
                    Image(systemName: "star.fill")
                        .foregroundColor(Color.green)
                    Text("$0.00   >")
                        .foregroundColor(.white)
                        .font(.system(size: 15))
                }
                Text("1 rewaerd avilble")
                    .foregroundColor(.white)
                    .font(.system(size: 15))
                NavigationLink("See it!", destination: AddMoneyPage(cahs: ""))
                    .frame(maxWidth: 60 , maxHeight: 0)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.green)
                    .clipShape(Capsule())
                    .padding()
                    .font(.system(size: 10))
                
                
            }
            
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 0)
                .stroke(.black , lineWidth: 1))
            .background(Color("Dgreen"))
        }
    }
}
struct BalansAndStarsPage_Previews: PreviewProvider {
    static var previews: some View {
        BalansAndStarsPage()
    }
}
