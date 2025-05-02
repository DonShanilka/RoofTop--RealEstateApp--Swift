//
//  SingInScreen.swift
//  RoofTop_RealEstateApp
//
//  Created by Nishith Shanilka on 2025-05-02.
//

import SwiftUI

struct SingInScreen: View {
    
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                VStack(spacing: 4) {
                    Text("Sing In")
                        .fontWeight(.medium)
                        .font(.system(size: 30))
                        .padding()
                    
                    Text("Hi! Welcome back, you've been missed")
                        .multilineTextAlignment(.center)
                        .frame(width: 300)
                        .foregroundColor(.gray)
                }
            }
        }
    }
}


#Preview {
    SingInScreen()
}
