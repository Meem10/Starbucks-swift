//
//  WelcomeAfterPage.swift
//  Starbucks
//
//  Created by mohammed alsaad on 18/05/2023.
//

import SwiftUI

struct WelcomeAfterPage: View {
    @State var show: Bool

    var body: some View {
        NavigationView{
            ZStack{
                Color("Dgreen")
                    .ignoresSafeArea()
                VStack{
                    
                }
            }
        }
        .fullScreenCover(isPresented: $show) {
            OnBordingViewPage()
        }
    }
}

    struct WelcomeAfterPage_Previews: PreviewProvider {
        static var previews: some View {
            WelcomeAfterPage(show: true)
        }
    }

