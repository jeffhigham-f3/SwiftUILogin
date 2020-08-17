//
//  SigninLabel.swift
//  SwiftUIProject
//
//  Created by Jeff Higham on 8/16/20.
//  Copyright © 2020 F3 Software. All rights reserved.
//

import SwiftUI

struct SigninLabel: View {
    
    var body: some View {
        Text("Sign In")
            .font(.title)
            .foregroundColor(.white)
            .padding()
    }
}

struct SigninLabel_Previews: PreviewProvider {
    
    static var previews: some View {
        VStack {
            SigninLabel()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.gray)    }
}
