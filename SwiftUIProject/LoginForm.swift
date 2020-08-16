//
//  LoginForm.swift
//  SwiftUIProject
//
//  Created by Jeff Higham on 8/16/20.
//  Copyright © 2020 F3 Software. All rights reserved.
//

import SwiftUI

struct LoginForm: View {
    
    @State var username: String = ""
    @State var password: String = ""
    let lightGreyColor = Color(red: 121.0/255.0, green: 174.0/255.0, blue: 239.0/255.0, opacity: 1.0)
    let cornerRadius = CGFloat(5.0)
    let cornerRadiusRound = CGFloat(25.0)
    
    var body: some View {
        
        VStack(alignment: .leading){
            Text("Email").font(.caption).foregroundColor(Color.white)
            HStack{
               Image(systemName: "envelope").foregroundColor(.white).padding(.all)
               .cornerRadius(cornerRadius)
            TextField("Email", text: $username)
                .font(.body)
                .foregroundColor(.white)
            }
            .background(lightGreyColor)
            .cornerRadius(cornerRadius)
            .padding(.bottom)
            
            Text("Password").font(.caption).foregroundColor(Color.white)
            HStack{
                Image(systemName: "lock").foregroundColor(.white).padding(.all)
                .cornerRadius(cornerRadius)

            SecureField("Password", text: $password)
                .font(.body)
                .foregroundColor(.white)
            }
            .background(lightGreyColor)
            .cornerRadius(cornerRadius)
            HStack{
                Spacer()
                Text("Forgot Password?").font(.caption).foregroundColor(Color.white)
            }
            HStack{
                Text("Rember me").font(.caption).foregroundColor(Color.white)
            }
        .padding()
            
            HStack{
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("LOGIN")
                    .foregroundColor(.blue)
                }
                .padding()
                Spacer()
            }
            .background(Color.white)
            .cornerRadius(cornerRadiusRound)

            
        }
        .frame(
            minWidth: 150,
            maxWidth: UIScreen.main.bounds.size.width * 0.75,
            minHeight: 300,
            maxHeight: UIScreen.main.bounds.size.height * 0.4
            
        )
    }
}

struct LoginForm_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
