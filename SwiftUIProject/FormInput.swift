//
//  FormInput.swift
//  SwiftUILogin
//
//  Created by Jeff Higham on 8/16/20.
//  Copyright © 2020 F3 Software. All rights reserved.
//

import SwiftUI

struct FormInput: View {
    
    let lightGreyColor = Color(red: 121.0/255.0, green: 174.0/255.0, blue: 239.0/255.0, opacity: 1.0)
    let cornerRadius = CGFloat(5.0)
    @State var username : String = ""
    
    var inputType : InputType
    var label : String
    var iconName : String;
    
    init(inputType : InputType) {
        self.iconName  = ( inputType == InputType.login ) ? "envelope" : "lock"
        self.label  = ( inputType == InputType.login ) ? "Email" : "Password"
        self.inputType = inputType
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(label).font(.caption).foregroundColor(Color.white)
            HStack{
                Image(systemName: iconName).foregroundColor(.white).padding(.all)
                    .cornerRadius(cornerRadius)
                if ( inputType == .login ){
                    TextField(label, text: $username)
                        .font(.body)
                        .foregroundColor(.white)
                } else {
                    SecureField(label, text: $username)
                        .font(.body)
                        .foregroundColor(.white)
                }
            }
            .background(lightGreyColor)
            .cornerRadius(cornerRadius)
            
        }
    }
}

enum InputType {
    case login
    case password
}

struct FormInput_Previews: PreviewProvider {
    static var previews: some View {
        FormInput(inputType: .login)
    }
}
