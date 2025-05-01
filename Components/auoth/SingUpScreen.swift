//
//  SingUpScreen.swift
//  RoofTop_RealEstateApp
//
//  Created by Nishith Shanilka on 2025-05-01.
//

import SwiftUI

struct SingUpScreen:View {
    
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack(spacing: 20) {
            VStack(spacing: 15) {
                Text("Create Account")
                    .fontWeight(.medium)
                    .font(.system(size: 30))
                    .padding()
                
                Text("Fill your information below or register with social account")
                    .multilineTextAlignment(.center)
                    .frame(width: 300)
                    .foregroundColor(.gray)
            }
            
            VStack(spacing: 20) {
                
                // Name
                VStack(alignment: .leading, spacing: 10) {
                    Text("Name")
                        .font(.system(size: 18))
                        .foregroundColor(.black)
                    
                    TextField("Enter your name", text: $name)
                        .padding()
                        .frame(width: 350)
                        .background(Color(.systemGray6))
                        .cornerRadius(8)
                        .autocapitalization(.none)
                }
                
                // Email
                VStack(alignment: .leading, spacing: 10) {
                    Text("Email")
                        .font(.system(size: 18))
                        .foregroundColor(.black)
                    
                    TextField("Enter your email", text: $email)
                        .padding()
                        .frame(width: 350)
                        .background(Color(.systemGray6))
                        .cornerRadius(8)
                        .autocapitalization(.none)
                }
                
                // Password
                VStack(alignment: .leading, spacing: 10) {
                    Text("Password")
                        .font(.system(size: 18))
                        .foregroundColor(.black)
                    
                    TextField("Enter your password", text: $email)
                        .padding()
                        .frame(width: 350)
                        .background(Color(.systemGray6))
                        .cornerRadius(8)
                        .autocapitalization(.none)
                }
            }
            
        }
    }
}


#Preview {
    SingUpScreen()
}
