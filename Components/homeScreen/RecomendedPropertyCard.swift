//
//  Untitled.swift
//  RoofTop_RealEstateApp
//
//  Created by Nishith Shanilka on 2025-04-23.
//

import SwiftUI

struct PropertyCard: View {
    
    let properties: [Property] = [
        Property(
            imageURL: "Home1",
            type: "Apartment",
            name: "Skyline Flat",
            location: "New York, NY",
            price: "$2,500",
            rating: 4.5,
            isFavorite: false
        ),
        Property(
            imageURL: "Home2",
            type: "Villa",
            name: "Palm Oasis",
            location: "Miami, FL",
            price: "$4,000",
            rating: 4.8,
            isFavorite: false
        ),
        Property(
            imageURL: "Home3",
            type: "Studio",
            name: "Compact Comfort",
            location: "San Francisco, CA",
            price: "$1,800",
            rating: 4.2,
            isFavorite: false
        ),
        Property(
            imageURL: "Home4",
            type: "Condo",
            name: "Urban Nest",
            location: "Chicago, IL",
            price: "$2,200",
            rating: 4.4,
            isFavorite: false
        ),
        Property(
            imageURL: "Home5",
            type: "House",
            name: "Sunset Home",
            location: "Los Angeles, CA",
            price: "$3,500",
            rating: 4.7,
            isFavorite: false
        )
    ]
    
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
                    .padding(5)
                
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
                .padding(2)
            
            HStack {
                Image(systemName: "mappin.circle.fill")
                    .foregroundColor(.gray)
                    .font(.caption)
                
                Text(property.location)
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            .padding(1)
            
            Text("\(property.price) /month")
                .font(.subheadline)
                .foregroundColor(.blue)
                .fontWeight(.semibold)
                .padding(1)
        }
        .frame(width: 180)
        .padding(.vertical, 1)
        .background(Color.white)
        .cornerRadius(15)
    }
}

#Preview {
    RecomendedProperty()
}
