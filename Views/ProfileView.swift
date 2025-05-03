//
//  ProfileView.swift
//  RoofTop_RealEstateApp
//
//  Created by Nishith Shanilka on 2025-04-23.
//

import SwiftUI

struct ProfileView: View {
    @State private var showLogoutConfirmation = false
    @State private var selectedTab = 0
    
    var body: some View {
        NavigationView {
            ZStack {
                // Main Profile View
                VStack(spacing: 0) {
                    // Profile Header
                    VStack(spacing: 20) {
                        HStack {
                            Button(action: {
                                // Go back action
                            }) {
                                Image(systemName: "arrow.left")
                                    .foregroundColor(.primary)
                            }
                            
                            Spacer()
                            
                            Text("Profile")
                                .font(.system(size: 18, weight: .medium))
                            
                            Spacer()
                            
                            // Empty view for alignment
                            Image(systemName: "arrow.left")
                                .foregroundColor(.clear)
                        }
                        .padding(.horizontal)
                        
                        // Profile Image and Name
                        VStack(spacing: 8) {
                            ZStack(alignment: .bottomTrailing) {
                                Image("profile_placeholder")
                                    .resizable()
                                    .renderingMode(.original)
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 80, height: 80)
                                    .clipShape(Circle())
                                    .overlay(Circle().stroke(Color.gray.opacity(0.2), lineWidth: 1))
                                
                                // Edit button
                                Circle()
                                    .fill(Color.blue)
                                    .frame(width: 28, height: 28)
                                    .overlay(
                                        Image(systemName: "pencil")
                                            .font(.system(size: 12))
                                            .foregroundColor(.white)
                                    )
                            }
                            
                            Text("Esther Howard")
                                .font(.system(size: 18, weight: .semibold))
                        }
                    }
                    .padding(.bottom, 20)
                    
                    // Profile Menu Items
                    VStack {
                        VStack(spacing: 0) {
                            // Your Profile
                            ProfileMenuItem(icon: "person", title: "Your profile", hasNavigation: true)
                            
                            // Payment Methods
                            ProfileMenuItem(icon: "creditcard", title: "Payment Methods", hasNavigation: true)
                            
                            // Settings
                            ProfileMenuItem(icon: "gearshape", title: "Settings", hasNavigation: true)
                            
                            // Help Center
                            ProfileMenuItem(icon: "questionmark.circle", title: "Help Center", hasNavigation: true)
                            
                            // Privacy Policy
                            ProfileMenuItem(icon: "lock.shield", title: "Privacy Policy", hasNavigation: true)
                            
                            // Log out
                            Button(action: {
                                showLogoutConfirmation = true
                            }) {
                                ProfileMenuItem(icon: "rectangle.portrait.and.arrow.right", title: "Log out", hasNavigation: false)
                            }
                        }
                    }
                    
                    Spacer()
                    
                }
                
                // Logout Confirmation Modal
                if showLogoutConfirmation {
                    Color.black.opacity(0.4)
                        .edgesIgnoringSafeArea(.all)
                        .onTapGesture {
                            showLogoutConfirmation = false
                        }
                    
                    VStack(spacing: 20) {
                        Text("Logout")
                            .font(.system(size: 18, weight: .semibold))
                            .padding(.top)
                        
                        Text("Are you sure you want to log out?")
                            .font(.system(size: 16))
                            .foregroundColor(.secondary)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal)
                        
                        HStack(spacing: 15) {
                            // Cancel Button
                            Button(action: {
                                showLogoutConfirmation = false
                            }) {
                                Text("Cancel")
                                    .font(.system(size: 16))
                                    .foregroundColor(.primary)
                                    .frame(maxWidth: .infinity)
                                    .padding(.vertical, 12)
                                    .background(
                                        RoundedRectangle(cornerRadius: 25)
                                            .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                                    )
                            }
                            
                            // Logout Button
                            Button(action: {
                                // Perform logout action
                                showLogoutConfirmation = false
                            }) {
                                Text("Yes, Logout")
                                    .font(.system(size: 16, weight: .medium))
                                    .foregroundColor(.white)
                                    .frame(maxWidth: .infinity)
                                    .padding(.vertical, 12)
                                    .background(
                                        RoundedRectangle(cornerRadius: 25)
                                            .fill(Color.blue)
                                    )
                            }
                        }
                        .padding(.horizontal)
                        
                        // Bottom Indicator
                        Rectangle()
                            .fill(Color.gray.opacity(0.5))
                            .frame(width: 40, height: 5)
                            .cornerRadius(2.5)
                            .padding(.bottom, 10)
                    }
                    .background(Color.white)
                    .cornerRadius(25)
                    .padding(.horizontal, 20)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
                    .transition(.move(edge: .bottom))
                    .animation(.spring())
                }
            }
            .navigationBarHidden(true)
        }
    }
}

struct ProfileMenuItem: View {
    let icon: String
    let title: String
    let hasNavigation: Bool
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .font(.system(size: 18))
                .foregroundColor(.blue)
                .frame(width: 30, height: 30)
                .cornerRadius(8)
            
            Text(title)
                .font(.system(size: 16))
                .padding(.leading, 8)
            
            Spacer()
            
            if hasNavigation {
                Image(systemName: "chevron.right")
                    .font(.system(size: 14))
                    .foregroundColor(.gray)
            }
        }
        .padding()
        .background(Color.white)
        .contentShape(Rectangle())
    }
}


#Preview {
    ProfileView()
}
