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

struct CharacterLore: Identifiable, Codable {
    var id: UUID
    var name: String
    var background: String
    var voiceLines: [String]
    var emails: [String]
}
