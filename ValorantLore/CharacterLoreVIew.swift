//
//  CharacterLoreView.swift
//  ValorantLore
//
//  Created by ozpyn on 11/19/24.
//

import SwiftUI

// Model to represent an agent and its abilities
struct Agent {
    var id: Int
    var name: String
    var profileImage: String // Image name for profile
    var birthDate: String
    var placeOfOrigin: String
    var abilities: [Ability]
    var agentLevelRewards: [String] // Strings for agent level rewards 1-10
}

struct Ability {
    var name: String
    var image: String // Image name for the ability icon
    var description: String
    var gif: String? // Optional gif for ability animation
}

// Sample data for agents
let sampleAgents = [
    Agent(id: 1, name: "Jett", profileImage: "jettProfile", birthDate: "July 3, 2000", placeOfOrigin: "South Korea", abilities: [
        Ability(name: "Cloudburst", image: "cloudburstIcon", description: "A quick burst of wind to obscure vision.", gif: "cloudburstGif"),
        Ability(name: "Updraft", image: "updraftIcon", description: "A vertical boost to gain higher ground.", gif: "updraftGif"),
        Ability(name: "Tailwind", image: "tailwindIcon", description: "A quick dash in the direction you're moving.", gif: "tailwindGif"),
        Ability(name: "Blade Storm", image: "bladesStormIcon", description: "Summons a set of throwing blades.", gif: "bladeStormGif")
    ], agentLevelRewards: [
        "Reward 1", "Reward 2", "Reward 3", "Reward 4", "Reward 5", "Reward 6", "Reward 7", "Reward 8", "Reward 9", "Reward 10"
    ]),
    Agent(id: 2, name: "Phoenix", profileImage: "phoenixProfile", birthDate: "October 14, 1996", placeOfOrigin: "United Kingdom", abilities: [
        Ability(name: "Blaze", image: "blazeIcon", description: "Create a wall of fire that blocks vision.", gif: "blazeGif"),
        Ability(name: "Curveball", image: "curveballIcon", description: "Flashbang that curves around corners.", gif: "curveballGif"),
        Ability(name: "Hot Hands", image: "hotHandsIcon", description: "Heal yourself or damage enemies with a fireball.", gif: "hotHandsGif"),
        Ability(name: "Run It Back", image: "runItBackIcon", description: "Resurrect at your original location after death.", gif: "runItBackGif")
    ], agentLevelRewards: [
        "Reward 1", "Reward 2", "Reward 3", "Reward 4", "Reward 5", "Reward 6", "Reward 7", "Reward 8", "Reward 9", "Reward 10"
    ])
]

// Main View - List of all Agents
struct CharacterLoreView: View {
    var agents = sampleAgents // List of agents
    
    var body: some View {
        NavigationView {
            List(agents, id: \.id) { agent in
                NavigationLink(destination: AgentDetailView(agent: agent)) {
                    Text(agent.name)
                        .font(.headline)
                }
            }
            .navigationTitle("Valorant Agents")
        }
    }
}

// Detail View for an individual Agent
struct AgentDetailView: View {
    var agent: Agent
    @State private var selectedAbility: Ability? = nil
    @State private var isAbilityModalPresented: Bool = false
    
    var body: some View {
        ScrollView {
            VStack {
                // Agent Profile Image
                Image(agent.profileImage) // Assuming the image is in your assets
                    .resizable()
                    .scaledToFit()
                    .frame(height: 300)
                    .padding()
                
                // Agent Name
                Text(agent.name)
                    .font(.largeTitle)
                    .padding(.bottom)
                
                // Agent Birthdate and Place of Origin
                Text("Birthday: \(agent.birthDate)")
                    .font(.subheadline)
                    .padding(.bottom, 2)
                
                Text("Place of Origin: \(agent.placeOfOrigin)")
                    .font(.subheadline)
                    .padding(.bottom)
                
                // Agent Abilities
                VStack(alignment: .leading) {
                    Text("Abilities")
                        .font(.title2)
                        .padding(.top)
                    
                    ForEach(agent.abilities, id: \.name) { ability in
                        Button(action: {
                            selectedAbility = ability
                            isAbilityModalPresented.toggle()
                        }) {
                            HStack {
                                Image(ability.image)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 50, height: 50)
                                Text(ability.name)
                                    .font(.headline)
                            }
                            .padding()
                        }
                        .sheet(isPresented: $isAbilityModalPresented) {
                            AbilityDetailView(ability: selectedAbility!)
                        }
                    }
                }
                .padding()
                
                // Agent Level Rewards
                VStack(alignment: .leading) {
                    Text("Agent Level Rewards")
                        .font(.title2)
                        .padding(.top)
                    
                    ForEach(agent.agentLevelRewards, id: \.self) { reward in
                        Text(reward)
                            .font(.subheadline)
                            .padding(.vertical, 2)
                    }
                }
                .padding()
            }
        }
        .navigationTitle(agent.name)
    }
}

// Modal to show detailed Ability information
struct AbilityDetailView: View {
    var ability: Ability
    
    var body: some View {
        VStack {
            Text(ability.name)
                .font(.title)
                .padding()
            
            if let gifName = ability.gif {
                Image(gifName) // Display GIF (make sure GIF is available in assets)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
            }
            
            Text(ability.description)
                .font(.body)
                .padding()
            
            Button("Close") {
                // Dismiss the modal
            }
            .padding()
        }
    }
}

struct CharacterLoreView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterLoreView()
    }
}
