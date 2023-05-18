//
//  SingUpPAge.swift
//  Starbucks
//
//  Created by mohammed alsaad on 17/05/2023.
//

import SwiftUI
import UserNotifications

struct SingUpPAge: View {
    
   
        @State var username: String = ""
        @State var email: String = ""
        @State var password: String = ""
        @State var confrim_password = ""
        @State private var date = Date()
    @State private var showingAlert = false
    
    var isSignInButtonDisabled: Bool {
        [username, password].contains(where: \.isEmpty)
    }


    var body: some View {
       SingUpDetalisePage()
                               
                    }
                    
                }

struct SingUpPAge_Previews: PreviewProvider {
    static var previews: some View {
        SingUpPAge()
    }
}
