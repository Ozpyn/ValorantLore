//
//  Models.swift
//  ValorantLore
//
//  Created by ozpyn on 11/19/24.
//

import Foundation

struct Patchnote: Identifiable, Codable {
    var id: UUID
    var version: String
    var title: String
    var releaseDate: Date
    var content: String
}

struct Role {
    var name: String
    var icon: String
    var description: String
}

struct Ability {
    var name: String
    var image: String // URL for the ability icon
    var description: String
    var gif: String? // Optional URL for ability animation GIF
}

struct Agent: Identifiable {
    var id: Int
    var role: Role
    var name: String
    var profileImage: String // URL for profile image
    var artworkImage: String // URL for artwork image
    var placeOfOrigin: String
    var abilities: [Ability]
}

struct Map: Identifiable {
    var id = UUID()
    var name: String
    var earth: String
    var lore: String
    var location: String
    var numberOfSites: Int
    var imageUrls: [String]?  // Array of image URLs (as Strings)
}

struct Weapon {
    var Name: String
    var Category: String
    var Cost: Int
    var Skins: [Skin]?
}

struct Skin {
    var Name: String
    var Images: [String]? //URLs for skin images / variants
}

struct TimelineEvent: Identifiable {
    var id: Int
    var title: String
    var yearsAfterFirstLight: Int // Number of years after First Light (aFL)
    var description: String
}
