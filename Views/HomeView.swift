//
//  HomeScreen.swift
//  RoofTop_RealEstateApp
//
//  Created by Nishith Shanilka on 2025-04-23.
//

import SwiftUI

struct HomeView: View {
    
    @State private var searchText = ""
    @State private var location = "Sri Lanka"
    
    let nearbyProperties: [Property] = [
            Property(imageURL: "Home1", type: "Apartment", name: "Skyline Flat", location: "New York, NY", price: "$2,500", rating: 4.5, isFavorite: false),
            Property(imageURL: "Home2", type: "Villa", name: "Palm Oasis", location: "Miami, FL", price: "$4,000", rating: 4.8, isFavorite: false),
            Property(imageURL: "Home3", type: "Studio", name: "Compact Comfort", location: "San Francisco, CA", price: "$1,800", rating: 4.2, isFavorite: false),
            Property(imageURL: "Home4", type: "Condo", name: "Urban Nest", location: "Chicago, IL", price: "$2,200", rating: 4.4, isFavorite: false),
            Property(imageURL: "Home5", type: "House", name: "Sunset Home", location: "Los Angeles, CA", price: "$3,500", rating: 4.7, isFavorite: false)
        ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    // Loaction
                    HStack {
                        VStack (alignment: .leading) {
                            Text("Location")
                                .font(.caption)
                                .foregroundColor(.gray)
                            
                            HStack {
                                Image(systemName: "location.fill")
                                    .foregroundColor(.blue)
                                Text(location)
                                    .fontWeight(.medium)
                                Image(systemName: "chevron.down")
                                    .font(.caption)
                            }
                        }
                        
                        Spacer()
                        
                        Image(systemName: "bell.fill")
                            .font(.caption)
                    }
                    .padding(.horizontal)
                    
                    // Search Bar
                    HStack {
                        HStack {
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.blue)
                            TextField("Search", text: $searchText)
                        }
                        .padding(10)
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color(.systemGray6)))
                        
                        Button(action: {}) {
                            Image(systemName: "slider.horizontal.2.square")
                                .resizable()
                                .foregroundColor(.white)
                                .background(Rectangle().fill(Color.blue))
                                .frame(width: 40, height: 40)
                                .cornerRadius(15)
                                
                        }
                    }
                    .padding(.horizontal)
                    
                    // Property Types
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 43) {
                            
                            Button(action: {
                                print("House")
                            }) {
                                VStack(spacing: 4) {
                                    Image(systemName: "house.fill")
                                        .font(.system(size: 35))
                                    Text("House")
                                        .font(.caption)
                                        .foregroundColor(.black)
                                        .bold()
                                }
                            }
                            
                            Button(action: {
                                print("Villa")
                            }) {
                                VStack(spacing: 4) {
                                    Image("villa")
                                        .font(.system(size: 35))
                                        .opacity(0.9)
                                    Text("Villa")
                                        .font(.caption)
                                        .foregroundColor(.black)
                                        .bold()
                                }
                            }
                            
                            Button(action: {
                                print("Apartment")
                            }) {
                                VStack(spacing: 4) {
                                    Image(systemName: "building.fill")
                                        .font(.system(size: 35))
                                    Text("Apartment")
                                        .font(.caption)
                                        .foregroundColor(.black)
                                        .bold()
                                }
                            }
                            
                            Button(action: {
                                print("Bangalow")
                            }) {
                                VStack(spacing: 4) {
                                    Image("bungallow")
                                        .font(.system(size: 35))
                                        .opacity(0.9)
                                    Text("Bangalow")
                                        .font(.caption)
                                        .foregroundColor(.black)
                                        .bold()
                                }
                            }
                        }
                        .padding(.horizontal, 30)
                
                    }
                    RecomendedProperty()
                    
                    Text("Nearby Property")
                        .font(.headline)
                        .bold()
                        .padding(.leading, 16)
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack {
                            NearbyPropertiesList(properties: nearbyProperties)
                        }
                        
                    }
                    .frame(height: 170)

                }
            }
            .background(Color(.gray.opacity(0.04)))
            .ignoresSafeArea(edges: .bottom)
        }
        
    }
}

#Preview {
    HomeView()
}
