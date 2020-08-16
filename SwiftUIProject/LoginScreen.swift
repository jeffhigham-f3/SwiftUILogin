//
//  LoginScreen.swift
//  SwiftUIProject
//
//  Created by Jeff Higham on 8/16/20.
//  Copyright © 2020 F3 Software. All rights reserved.
//

import SwiftUI

struct LoginScreen: View {
    let lighBlueColor = Color(red: 112.0/255.0, green: 171.0/255.0, blue: 244.0/255.0, opacity: 1.0)
    let darkBlueColor = Color(red: 47.0/255.0, green: 128.0/255.0, blue: 228.0/255.0, opacity: 1.0)
    
    var body: some View {
    ZStack {
        RadialGradient(
            gradient: Gradient(colors: [lighBlueColor, darkBlueColor]), center: .top, startRadius: 100, endRadius: 1000)
        .edgesIgnoringSafeArea(.all)
        VStack (alignment: .center, spacing: 8.0){
            SigninLabel().padding()
            LoginForm()
            Spacer()
        }


        }
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
