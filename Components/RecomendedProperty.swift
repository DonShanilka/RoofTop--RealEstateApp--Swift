//
//  RecomendedProperty.swift
//  RoofTop_RealEstateApp
//
//  Created by Nishith Shanilka on 2025-04-23.
//

//
//  HomeScreen.swift
//  RoofTop_RealEstateApp
//
//  Created by Nishith Shanilka on 2025-04-23.
//

import SwiftUI

struct RecomendedProperty: View {
    
    @State private var searchText = ""
    @State private var location = "Sri Lanka"
    
    var body: some View {
                        
        VStack(alignment: .leading) {
            HStack {
                Text("Recommended Property")
                    .font(.headline)
                    .bold()
                
                Spacer()
                
                Button(action: {
                    print("See all Recommended Property")
                }) {
                    Text("See all")
                        .foregroundColor(.blue)
                        .font(.subheadline)
                        .bold()
                }
            }
        }
        .padding(.horizontal)
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 15) {
                
            }
        }
    }
}

#Preview {
    RecomendedProperty()
}
