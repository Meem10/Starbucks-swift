//
//  myScrollView.swift
//  Starbucks
//
//  Created by mohammed alsaad on 18/05/2023.
//

import SwiftUI

struct myScrollView : View{
    var body: some View{
        ScrollView{
            Image("homeImage1")
                .resizable()
                .frame(width: 300 , height: 150)
            Image("homeImage2")
                .resizable()
                .frame(width: 300 , height: 150)
            Image("nes")
                .resizable()
                .frame(width: 300 , height: 150)
            Spacer()
            
                }
        
    }
}

struct myScrollView_Previews: PreviewProvider {
    static var previews: some View {
        myScrollView()
    }
}
