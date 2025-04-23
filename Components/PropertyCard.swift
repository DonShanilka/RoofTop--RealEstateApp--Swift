//
//  Untitled.swift
//  RoofTop_RealEstateApp
//
//  Created by Nishith Shanilka on 2025-04-23.
//

import SwiftUI

struct PropertyCard: View {
    
    let property: Property
    @State private var isFavorite: Bool
    
    init(property: Property) {
        self.property = property
        _isFavorite = State(initialValue: property.isFavorite)
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            ZStack(alignment: .topTrailing) {
                Image(property.imageURL)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 120)
                    .cornerRadius(12)
                    .clipped()
                
                Button(action: {
                    isFavorite.toggle()
                }) {
                    Image(systemName: isFavorite ? "heart.fill" : "heart")
                        .foregroundColor(isFavorite ? .red : .white)
                        .padding(8)
                        .background(Circle().fill(Color.white.opacity(0.8)))
                        .padding(8)
                }
            }
            
            HStack {
                Text(property.type)
                    .font(.caption)
                    .foregroundColor(.blue)
                
                Spacer()
                
                HStack(spacing: 4) {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                        .font(.caption)
                    
                    Text(String(format: "%.1f", property.rating))
                        .font(.caption)
                        .foregroundColor(.black)
                }
            }
            
            Text(property.name)
                .font(.headline)
            
            HStack {
                Image(systemName: "mappin.circle.fill")
                    .foregroundColor(.gray)
                    .font(.caption)
                
                Text(property.location)
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            Text("\(property.price)/month")
                .font(.subheadline)
                .foregroundColor(.blue)
                .fontWeight(.semibold)
        }
        .frame(width: 160)
        .padding(.vertical, 10)
    }
}

