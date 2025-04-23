//
//  Property.swift
//  RoofTop_RealEstateApp
//
//  Created by Nishith Shanilka on 2025-04-23.
//

import Foundation

struct Property: Identifiable {
    let id = UUID()
    let image: String
    let type: String
    let name: String
    let location: String
    let price: String
    let rating: Double
    var isFavourite: Bool
}
