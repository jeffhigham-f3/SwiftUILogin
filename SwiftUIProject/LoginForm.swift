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
    let toggleColor = UIColor(displayP3Red: 47.0/255.0, green: 128.0/255.0, blue: 228.0/255.0, alpha: 0.5)
    let facebookColor = UIColor(displayP3Red: 60.0/255.0, green: 93.0/255.0, blue: 137.0/255.0, alpha: 0.5)
    
    
    init()
    {
        UISwitch.appearance().onTintColor = toggleColor
    }
    
    var body: some View {
        VStack(){
            
            FormInput(inputType: .login).padding(.bottom)
            FormInput(inputType: .password).padding(.bottom)
            ForgotPassword().padding(.bottom)
            LoginButton().padding(.bottom)
            RememberMeToggle().padding(.bottom)
            AlternateLoginText()
            SocialButtons()
            
        }
    }
}


struct LoginForm_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

fileprivate struct ForgotPassword: View {
    var body: some View {
        HStack(){
            Spacer()
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("Forgot Password?")
                    .font(.body)
                    .foregroundColor(Color.white)
            }
        }
    }
}

fileprivate struct LoginButton: View {
    let cornerRadiusRound = CGFloat(25.0)
    var body: some View {
        HStack{
            Spacer()
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("LOGIN")
                    .foregroundColor(.blue)
            }
            .frame(width: 100.0)
            Spacer()
        }
        .padding(.vertical)
        .frame(height: 42.0)
        .background(Color.white)
        .cornerRadius(cornerRadiusRound)
    }
}

fileprivate struct RememberMeToggle: View {
    @State var rememberMe : Bool = false
    var body: some View {
        HStack{
            Toggle(isOn: $rememberMe) {
                Text("Rember me").foregroundColor(Color.white)
            }
        }
    }
}

fileprivate struct AlternateLoginText: View {
    var body: some View {
        VStack {
            HStack{
                Spacer()
                Text("- OR -")
                    .font(.caption).foregroundColor(Color.white)
                Spacer()
            }.padding(.bottom)
            
            HStack{
                Spacer()
                Text("Sign in with")
                    .font(.caption).foregroundColor(Color.white)
                Spacer()
            }.padding(.bottom)
        }
    }
}

struct SocialButtons: View {
    var body: some View {
        HStack{
            
            Spacer()
            Button(action: {
                print("Facebook Tapped")
            }) {
                Image("facebookLogo")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                    .foregroundColor(Color.white)
                
            }
            .padding(.trailing)
            
            Button(action: {
                print("Google Tapped")
            }) {
                Image("googleLogo")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                    .foregroundColor(Color.white)
            }
            Spacer()
        }
    }
}
