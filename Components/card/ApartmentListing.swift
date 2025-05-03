//
//  ApartmentListing.swift
//  RoofTop_RealEstateApp
//
//  Created by Nishith Shanilka on 2025-05-03.
//

import SwiftUI

struct ApartmentListing: View {
    // State for tab selection
    @State private var selectedTab: Int = 0
    
    // Sample apartment data
    let apartment = Apartment(
        name: "Woodland Apartments",
        address: "1012 Ocean avenue, New york, USA",
        rating: 4.5,
        reviews: 355,
        beds: 3,
        baths: 1,
        area: 1848,
        price: 1500,
        agent: "John Doe",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
    )
    
    var body: some View {
        VStack(spacing: 0) {
            // Header image with navigation
            ZStack(alignment: .top) {
                // Main apartment image
                Image("Home1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 350)
                    .padding(.top,20)
                    .clipped()

                
                // Top navigation buttons
                HStack {
                    Button(action: {
                        // Back button action
                    }) {
                        Image(systemName: "chevron.left")
                            .padding(12)
                            .background(Color.white.opacity(0.8))
                            .clipShape(Circle())
                    }
                    
                    Spacer()
                    
                    HStack(spacing: 12) {
                        Button(action: {
                            // Share button action
                        }) {
                            Image(systemName: "square.and.arrow.up")
                                .padding(12)
                                .background(Color.white.opacity(0.8))
                                .clipShape(Circle())
                        }
                        
                        Button(action: {
                            // Favorite button action
                        }) {
                            Image(systemName: "heart")
                                .padding(12)
                                .background(Color.white.opacity(0.8))
                                .clipShape(Circle())
                        }
                    }
                }
                .padding()
                .foregroundColor(.black)
            }
            
            // Apartment details section
            VStack(alignment: .leading, spacing: 16) {
                // Apartment category and rating
                HStack {
                    Text("Apartment")
                        .foregroundColor(.blue)
                        .font(.subheadline)
                    
                    Spacer()
                    
                    HStack(spacing: 4) {
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                        Text("\(apartment.rating, specifier: "%.1f") (\(apartment.reviews) reviews)")
                            .font(.subheadline)
                    }
                }
                
                // Apartment name and address
                Text(apartment.name)
                    .font(.title2)
                    .fontWeight(.bold)
                
                Text(apartment.address)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                // Tab buttons
                HStack {
                    TabButton(title: "About", isSelected: selectedTab == 0) {
                        selectedTab = 0
                    }
                    
                    TabButton(title: "Gallery", isSelected: selectedTab == 1) {
                        selectedTab = 1
                    }
                    
                    TabButton(title: "Review", isSelected: selectedTab == 2) {
                        selectedTab = 2
                    }
                }
                
                
                // Tab content
                TabView(selection: $selectedTab) {
                    AboutTab(description: apartment.description)
                        .tag(0)
                    
                    GalleryTab()
                        .tag(1)
                    
                    ReviewTab()
                        .tag(2)
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                .frame(height: 150)
                
                // Listing agent
                HStack(spacing: 12) {
                    Circle()
                        .fill(Color.gray.opacity(0.3))
                        .frame(width: 40, height: 40)
                        .overlay(
                            Image(systemName: "person.fill")
                                .foregroundColor(.gray)
                        )
                    
                    Text("Listing Agent")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    
                    Text(apartment.agent)
                        .font(.subheadline)
                        .fontWeight(.medium)
                    
                    Spacer()
                    
                    Button(action: {
                        // Message button action
                    }) {
                        Image(systemName: "message.fill")
                            .foregroundColor(.blue)
                            .padding(8)
                            .background(Color.blue.opacity(0.1))
                            .clipShape(Circle())
                    }
                }
                
                // Bottom price and booking area
                HStack {
                    VStack(alignment: .leading) {
                        Text("Total Price")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        
                        Text("$\(apartment.price)/month")
                            .font(.title3)
                            .fontWeight(.bold)
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        // Book Now action
                    }) {
                        Text("Book Now")
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .frame(width: 140, height: 50)
                            .background(Color.blue)
                            .cornerRadius(12)
                    }
                }
                .padding(.top, 8)
            }
            .padding()
            .background(Color.white)
        }
        .edgesIgnoringSafeArea(.top)
    }
}

// Tab content views
struct AboutTab: View {
    let description: String
    
    @State private var showFullDescription = false
    
    let apartment = Apartment(
        name: "Woodland Apartments",
        address: "1012 Ocean avenue, New york, USA",
        rating: 4.5,
        reviews: 355,
        beds: 3,
        baths: 1,
        area: 1848,
        price: 1500,
        agent: "John Doe",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
    )
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            // Apartment features
            HStack(spacing: 16) {
                FeatureItem(icon: "bed.double.fill", text: "\(apartment.beds) Beds")
                FeatureItem(icon: "drop.fill", text: "\(apartment.baths) Bath")
                FeatureItem(icon: "square.dashed", text: "\(apartment.area) sqft")
            }
            .padding(.vertical, 8)
            
            Text("Description")
                .font(.headline)
            
            Text(description)
                .font(.subheadline)
                .foregroundColor(.gray)
                .lineLimit(showFullDescription ? nil : 3)
            
            Button(action: {
                showFullDescription.toggle()
            }) {
                Text(showFullDescription ? "Read less" : "Read more")
                    .font(.subheadline)
                    .foregroundColor(.blue)
            }
            
            Spacer()
        }
    }
}

struct GalleryTab: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("Photo Gallery")
                .font(.headline)
            
            LazyVGrid(columns: [
                GridItem(.flexible()),
                GridItem(.flexible()),
                GridItem(.flexible())
            ], spacing: 10) {
                ForEach(1...3, id: \.self) { _ in
                    RoundedRectangle(cornerRadius: 8)
                        .fill(Color.gray.opacity(0.2))
                        .aspectRatio(1, contentMode: .fit)
                }
            }
            
            Spacer()
        }
    }
}

struct ReviewTab: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Customer Reviews")
                .font(.headline)
            
            ForEach(1...1, id: \.self) { index in
                VStack(alignment: .leading) {
                    HStack {
                        Circle()
                            .fill(Color.gray.opacity(0.3))
                            .frame(width: 40, height: 40)
                        
                        VStack(alignment: .leading) {
                            Text("User \(index)")
                                .font(.subheadline)
                                .fontWeight(.medium)
                            
                            HStack {
                                ForEach(1...5, id: \.self) { star in
                                    Image(systemName: star <= 4 ? "star.fill" : "star")
                                        .foregroundColor(.yellow)
                                        .font(.system(size: 12))
                                }
                                
                                Text("• 2 weeks ago")
                                    .font(.caption)
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                    
                    Text("Great apartment with nice amenities. Very spacious and clean.")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        .padding(.top, 4)
                    
                    Divider()
                        .padding(.vertical, 8)
                }
            }
            
            Spacer()
        }
    }
}

// Supporting components
struct TabButton: View {
    let title: String
    let isSelected: Bool
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            VStack(spacing: 8) {
                Text(title)
                    .font(.subheadline)
                    .fontWeight(isSelected ? .semibold : .regular)
                    .foregroundColor(isSelected ? .blue : .gray)
                
                Rectangle()
                    .fill(isSelected ? Color.blue : Color.clear)
                    .frame(height: 2)
            }
        }
        .frame(maxWidth: .infinity)
    }
}

struct FeatureItem: View {
    let icon: String
    let text: String
    
    var body: some View {
        HStack(spacing: 8) {
            Image(systemName: icon)
                .foregroundColor(.blue)
            
            Text(text)
                .font(.subheadline)
        }
        .frame(maxWidth: .infinity)
    }
}

// Data model
struct Apartment {
    let name: String
    let address: String
    let rating: Double
    let reviews: Int
    let beds: Int
    let baths: Int
    let area: Int
    let price: Int
    let agent: String
    let description: String
}


#Preview {
    ApartmentListing()
}
