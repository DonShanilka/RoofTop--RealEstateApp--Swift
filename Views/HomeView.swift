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
                                    Image(systemName: "building.2.fill")
                                        .font(.system(size: 35))
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
                                    Image(systemName: "house.lodge.fill")
                                        .font(.system(size: 35))
                                    Text("Bangalow")
                                        .font(.caption)
                                        .foregroundColor(.black)
                                        .bold()
                                }
                            }
                        }
                        .padding(16)
                
                    }
                    RecomendedProperty()
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
