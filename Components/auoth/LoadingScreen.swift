//
//  LoadingScreen.swift
//  RoofTop_RealEstateApp
//
//  Created by Nishith Shanilka on 2025-05-01.
//

import SwiftUI

// Hex color extension
extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)

        let r, g, b: Double

        switch hex.count {
        case 6: // RGB (24-bit)
            r = Double((int >> 16) & 0xFF) / 255.0
            g = Double((int >> 8) & 0xFF) / 255.0
            b = Double(int & 0xFF) / 255.0
        default:
            r = 0
            g = 0
            b = 0
        }

        self.init(red: r, green: g, blue: b)
    }
}

struct LoadingScreen: View {
    var body: some View {
        ZStack {
            Color(hex: "#1a1aff") // #704F38
                .ignoresSafeArea()
            
            VStack {
                Text("Re-State")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .font(.system(size: 32, weight: .bold, design: .default))
                    .fontWeight(.heavy)
                    .padding()

                Text("Loading...")
                    .foregroundColor(.white)
                    .font(.title3)
                    .padding()
            }
        }
    }
}


#Preview {
    LoadingScreen()
}
