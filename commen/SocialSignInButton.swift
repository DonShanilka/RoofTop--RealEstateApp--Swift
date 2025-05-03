//
//  SocialSignInButton.swift
//  RoofTop_RealEstateApp
//
//  Created by Nishith Shanilka on 2025-05-02.
//

import SwiftUI

struct SocialSignInButton: View {
    let image: String
    let backgroundColor: Color
    
    var body: some View {
        Button(action: {
            // Handle social sign in
        }) {
            Image(systemName: image)
                .font(.system(size: 20))
                .foregroundColor(.primary)
                .frame(width: 50, height: 50)
                .background(backgroundColor)
                .cornerRadius(25)
                .overlay(
                    Circle()
                        .stroke(Color(.systemGray5), lineWidth: 1)
                )
        }
    }
}
