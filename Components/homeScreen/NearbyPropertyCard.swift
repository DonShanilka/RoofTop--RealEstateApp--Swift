//
//  NearbyProperty.swift
//  RoofTop_RealEstateApp
//
//  Created by Nishith Shanilka on 2025-04-23.
//

import SwiftUI

struct NearbyProperty: View {
    let property: Property
    @State private var isFavorite: Bool

    init(property: Property) {
        self.property = property
        _isFavorite = State(initialValue: property.isFavorite)
    }

    var body: some View {
        HStack(spacing: 15) {
            ZStack(alignment: .topTrailing) {
                Image(property.imageURL)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .clipped()
                    .cornerRadius(12)

                Button(action: {
                    isFavorite.toggle()
                }) {
                    Image(systemName: isFavorite ? "heart.fill" : "heart")
                        .foregroundColor(isFavorite ? .red : .gray)
                        .padding(6)
                        .background(Color.white)
                        .clipShape(Circle())
                        .shadow(radius: 1)
                }
                .padding(4)
            }

            VStack(alignment: .leading, spacing: 4) {
                Text(property.type)
                    .font(.caption)
                    .foregroundColor(.blue)
                    .padding(.horizontal, 6)
                    .padding(.vertical, 2)
                    .background(Color.blue.opacity(0.1))
                    .cornerRadius(4)

                Text(property.name)
                    .font(.headline)
                    .foregroundColor(.primary)
                    .lineLimit(1)
                
                Text(property.location)
                    .font(.caption)
                    .foregroundColor(.gray)
                
                Text("\(property.price) /month")
                    .font(.subheadline)
                    .foregroundColor(.blue)
                    .fontWeight(.semibold)
                    .padding(1)
            }

            Spacer()

            HStack(spacing: 4) {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                    .font(.caption)
                Text(String(format: "%.1f", property.rating))
                    .font(.caption)
                    .foregroundColor(.gray)
            }
        }
        .padding(8)
        .background(Color.white)
        .cornerRadius(16)
        .shadow(color: Color.black.opacity(0.05), radius: 3, x: 0, y: 1)
    }
}




struct NearbyPropertiesList: View {
    let properties: [Property]

    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 16) {
                ForEach(properties, id: \.name) { property in
                    NearbyProperty(property: property)
                }
            }
            .padding()
        }
//        .background(Color(.systemGroupedBackground)) // optional subtle background
    }
}


// MARK: - Preview
#Preview {
    NearbyPropertiesList(properties: [
        Property(imageURL: "Home1", type: "Apartment", name: "Skyline Flat", location: "New York, NY", price: "$2,500", rating: 4.5, isFavorite: false),
        Property(imageURL: "Home2", type: "Villa", name: "Palm Oasis", location: "Miami, FL", price: "$4,000", rating: 4.8, isFavorite: false),
        Property(imageURL: "Home3", type: "Studio", name: "Compact Comfort", location: "San Francisco, CA", price: "$1,800", rating: 4.2, isFavorite: false),
        Property(imageURL: "Home4", type: "Condo", name: "Urban Nest", location: "Chicago, IL", price: "$2,200", rating: 4.4, isFavorite: false),
        Property(imageURL: "Home5", type: "House", name: "Sunset Home", location: "Los Angeles, CA", price: "$3,500", rating: 4.7, isFavorite: false)
    ])
}

