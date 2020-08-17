//
//  SignInText.swift
//  SwiftUILogin
//
//  Created by Jeff Higham on 8/17/20.
//  Copyright © 2020 F3 Software. All rights reserved.
//

import SwiftUI

struct SignInText: View {
    var body: some View {
        VStack {
            HStack{
                Text("Don't have an account?")
                Text("Sign Up").bold()
            }
        }.foregroundColor(Color.white)
    }
}

struct SignInText_Previews: PreviewProvider {
    static var previews: some View {
        SignInText()
    }
}
