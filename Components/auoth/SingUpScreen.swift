//
//  SingUpScreen.swift
//  RoofTop_RealEstateApp
//
//  Created by Nishith Shanilka on 2025-05-01.
//

import SwiftUI

struct SingUpScreen: View {
    
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var agreeToTerms = false
    @State private var navigateToSignIn = false
    
    var body: some View {
        NavigationView {
            VStack(spacing: 40) {
                VStack(spacing: 4) {
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
                        
                        SecureField("Enter your password", text: $password)
                            .padding()
                            .frame(width: 350)
                            .background(Color(.systemGray6))
                            .cornerRadius(8)
                            .autocapitalization(.none)
                    }
                    
                    // Terms and conditions
                    HStack {
                        Button(action: {
                            agreeToTerms.toggle()
                        }) {
                            ZStack {
                                Rectangle()
                                    .fill(agreeToTerms ? Color.blue : Color.clear)
                                    .frame(width: 12, height: 12)
                                    .cornerRadius(4)
                                    .overlay(RoundedRectangle(cornerRadius: 4)
                                        .stroke(agreeToTerms ? Color.blue : Color.gray, lineWidth: 1)
                                    )
                                
                                if agreeToTerms {
                                    Image(systemName: "checkmark")
                                        .font(.system(size: 10, weight: .bold))
                                        .foregroundColor(.white)
                                }
                            }
                        }
                        
                        Text("Agree with")
                            .font(.system(size: 14))
                        
                        Button(action: {
                            // Open terms
                        }) {
                            Text("Terms & Condition")
                                .font(.system(size: 14))
                                .foregroundColor(.blue)
                        }
                        
                        Spacer()
                    }
                    .padding(.leading, 14)
                    
                    // Sign Up Button
                    Button(action: {
                        print("Click Sing Up")
                    }) {
                        Text("Sign Up")
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
                        
                        Text("Or sign up with")
                            .font(.system(size: 14))
                            .foregroundColor(.secondary)
                            .padding(.horizontal, 8)
                        
                        Rectangle()
                            .fill(Color(.systemGray5))
                            .frame(height: 1)
                            .frame(width: 100)
                    }
                    
                    // Social sign-up options
                    HStack(spacing: 20) {
                        SocialSignInButton(image: "apple.logo", backgroundColor: .white)
                        SocialSignInButton(image: "g.circle.fill", backgroundColor: .white)
                        SocialSignInButton(image: "f.circle.fill", backgroundColor: .white)
                    }
                    
                    
                    // Already have an account
                    HStack(spacing: 6) {
                        Text("Already have an account?")
                            .font(.system(size: 14))
                            .foregroundColor(.secondary)
                        
                        NavigationLink(destination: SignInScreen().navigationBarBackButtonHidden(true)) {
                            Text("Sign In")
                                .font(.system(size: 14, weight: .semibold))
                                .foregroundColor(.blue)
                        }
                    }
                    .padding(.top, 8)
                    
                }
            }
            .padding()
        }
    }
}


#Preview {
    SingUpScreen()
}
