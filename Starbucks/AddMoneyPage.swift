//
//  AddMoneyPage.swift
//  Starbucks
//
//  Created by mohammed alsaad on 18/05/2023.
//

import SwiftUI

struct AddMoneyPage: View {
    @State var cahs :String
    var body: some View {
        NavigationView{
            VStack{
                HStack() {
                    Text("Add Money")
                        .bold()
                        .font(.largeTitle)
                        .padding()
                    Spacer()
                }
                Divider()
                HStack {
                    Image("cup")
                        .resizable()
                        .frame(width: 70,height: 70 )
                    VStack{
                        Text("(2999)")
                            .font(.system(size: 20))
                            .foregroundColor(.black)
                        Text("$0.00")
                            .font(.system(size: 20))
                            .foregroundColor(.black)
                        Text("as of 17/5 9:00AM")
                            .font(.system(size: 20))
                            .foregroundColor(.black)
                        
                    }
                    
                }
                .padding()
                .overlay(RoundedRectangle(cornerRadius: 0)
                    .stroke(.black , lineWidth: 0.5))
                .background(Color("gry"))
                
                HStack {
                    Text("Cash-in amount")
                        .font(.title3)
                        .bold()
                    Spacer()
                        .padding()
                }
                .padding()
                TextField("amount", text: $cahs)
                    .padding()
                Divider()
                HStack {
                    Text("Select payment Method")
                        .font(.callout)
                        .bold()
                        .padding()
                    Spacer()
                        .padding()
                }
                HStack {
                    Image(systemName: "creditcard.fill")
                        .padding()
                    Text("Master Card_8867")
                    Spacer()
                        .padding()
                }
                NavigationLink("Proceed", destination: HomePageAfter())
                    .frame(maxWidth: 120 , maxHeight: 20)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.green)
                    .clipShape(Capsule())
                    .padding()
                
                
                
                Spacer()
            }}
        .navigationBarBackButtonHidden(false)
    }
}

struct AddMoneyPage_Previews: PreviewProvider {
    static var previews: some View {
        AddMoneyPage(cahs: "")
    }
}
