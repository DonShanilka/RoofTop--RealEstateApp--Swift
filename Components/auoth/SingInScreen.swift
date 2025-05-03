//
//  SignInScreen.swift
//  RoofTop_RealEstateApp
//
//  Created by Nishith Shanilka on 2025-05-02.
//

import SwiftUI

struct SignInScreen: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var navigateToSignUp = false
    
    var body: some View {
        NavigationView {
            VStack(spacing: 30) {
                
                // Header
                VStack(spacing: 4) {
                    Text("Sign In")
                        .font(.system(size: 30, weight: .medium))
                        .padding(.top)
                    
                    Text("Hi! Welcome back, you've been missed")
                        .multilineTextAlignment(.center)
                        .frame(width: 300)
                        .foregroundColor(.gray)
                }
                
                // Email and Password
                VStack(spacing: 20) {
                    
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
                        
                        SecureField("Enter your password", text: $password)
                            .padding()
                            .frame(width: 350)
                            .background(Color(.systemGray6))
                            .cornerRadius(8)
                            .autocapitalization(.none)
                    }
                }
                
                // Sign In Button
                Button(action: {
                    print("Sign In clicked")
                }) {
                    Text("Sign In")
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color(hex: "#004cff"))
                        .cornerRadius(26)
                }
                .frame(width: 350)
                
                // Divider
                HStack {
                    Rectangle()
                        .fill(Color(.systemGray5))
                        .frame(height: 1)
                        .frame(width: 100)
                    
                    Text("Or sign in with")
                        .font(.system(size: 14))
                        .foregroundColor(.secondary)
                        .padding(.horizontal, 8)
                    
                    Rectangle()
                        .fill(Color(.systemGray5))
                        .frame(height: 1)
                        .frame(width: 100)
                }
                
                // Social sign-in buttons
                HStack(spacing: 30) {
                    SocialSignInButton(image: "apple.logo", backgroundColor: .white)
                    SocialSignInButton(image: "g.circle.fill", backgroundColor: .white)
                    SocialSignInButton(image: "f.circle.fill", backgroundColor: .white)
                }
                
                
                // Don't have an account
                HStack(spacing: 4) {
                    Text("Don't have an account?")
                        .font(.system(size: 14))
                        .foregroundColor(.secondary)
                    
                    NavigationLink(destination: SingUpScreen().navigationBarBackButtonHidden(true)) {
                        Text("Sign Up")
                            .font(.system(size: 14, weight: .semibold))
                            .foregroundColor(.blue)
                    }
                }
                .padding(.top, 8)
                
                Spacer()
            }
            .padding()
        }
    }
}


#Preview {
    SignInScreen()
}
