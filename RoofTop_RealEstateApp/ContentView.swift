//
//  ContentView.swift
//  RoofTop_RealEstateApp
//
//  Created by Nishith Shanilka on 2025-04-23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
            
            ExploreView()
                .tabItem {
                    Label("Explore", systemImage: "magnifyingglass")
                }
            
            FavoriteView()
                .tabItem {
                    Label("Favorite", systemImage: "heart.fill")
                }
            
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                }
        }
        .accentColor(.blue)
    }
}


#Preview {
    ContentView()
}
