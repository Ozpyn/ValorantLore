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
    var birthDate: String
    var placeOfOrigin: String
    var abilities: [Ability]
    var agentLevelRewards: [String] // Strings for agent level rewards 1-10
}

struct Map: Identifiable {
    var id = UUID()
    var name: String
    var lore: String
    var location: String
    var numberOfSites: Int
    var imageUrls: [String]?  // Array of image URLs (as Strings)
}
