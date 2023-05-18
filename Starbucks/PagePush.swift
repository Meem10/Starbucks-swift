//
//  PagePush.swift
//  Starbucks
//
//  Created by mohammed alsaad on 18/05/2023.
//

import SwiftUI
struct PagePush: View{
    @State var title: String
    @State var subTitle: String
    @State var image: String
    var body: some View{
        ZStack {
            Color("Ggreen")
                .ignoresSafeArea()
            VStack{
                Image(image)
                    .resizable()
                    .frame(width: 250 , height: 250)
                    .padding()
                Text("\(title)")
                    .font(.title)
                    .foregroundColor(.gray)
                    .bold()
                    .padding()
                Text("\(subTitle)")
                    .foregroundColor(.gray)
                    .padding()
                Spacer()
                
                
            }
        }
    }
}

struct PagePush_Previews: PreviewProvider {
    static var previews: some View {
        PagePush(title: "", subTitle:"" , image: "")
    }
}
