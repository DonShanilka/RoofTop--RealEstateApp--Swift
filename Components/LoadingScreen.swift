//
//  LoadingScreen.swift
//  RoofTop_RealEstateApp
//
//  Created by Nishith Shanilka on 2025-05-01.
//

import SwiftUI

struct LoadingScreen: View {
    var body: some View {
        ZStack {
            Color(hex: "#004cff") // #704F38
                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                Text("Re-Estate")
                    .foregroundColor(.white)
//                    .font(.largeTitle)
                    .font(.system(size: 50, weight: .bold, design: .default))
                    .fontWeight(.heavy)
                    .padding()

                Text("Loading...")
                    .foregroundColor(.white)
                    .font(.system(size: 28))
                    .fontWeight(.light)
                    .padding()
            }
        }
    }
}


#Preview {
    LoadingScreen()
}
