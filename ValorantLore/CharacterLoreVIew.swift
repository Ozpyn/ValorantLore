//
//  CharacterLoreView.swift
//  ValorantLore
//
//  Created by ozpyn on 11/19/24.
//

import SwiftUI

struct Role{
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

struct Agent {
    var id: Int
    var role: Role
    var name: String
    var profileImage: String // URL for profile image
    var birthDate: String
    var placeOfOrigin: String
    var abilities: [Ability]
    var agentLevelRewards: [String] // Strings for agent level rewards 1-10
}

let Roles = [
    Role(name: "Controller", icon: "controllerIcon.png", description: "Controllers are experts in slicing up dangerous territory to set their team up for success."),
    Role(name: "Duelist", icon: "duelistIcon.png", description: "Duelists are self-sufficient fraggers who their team expects, through abilities and skills, to get high frags and seek out engagements first."),
    Role(name: "Initiator", icon: "initiatorIcon.png", description: "Initiators challenge angles by setting up their team to enter contested ground and push defenders away."),
    Role(name: "Sentinel", icon: "sentinelIcon.png", description: "Sentinels are defensive experts who can lock down areas and watch flanks, both on attacker and defender rounds."),
]

// Agent Data
let Agents = [
    Agent(id: 1, role: Roles[0], name: "Brimstone", profileImage: "https://static.wikia.nocookie.net/valorant/images/4/4d/Brimstone_icon.png", birthDate: "Unknown", placeOfOrigin: "United States", abilities: [
        Ability(name: "Sky Smokes", image: "skySmokesIcon", description: "Deploy smokescreens to block vision.", gif: "skySmokesGif"),
        Ability(name: "Stim Beacon", image: "stimBeaconIcon", description: "Deploy a beacon that boosts speed and fire rate.", gif: "stimBeaconGif"),
        Ability(name: "Incendiary", image: "incendiaryIcon", description: "Throw a fire grenade that burns enemies.", gif: "incendiaryGif"),
        Ability(name: "Orbital Strike", image: "orbitalStrikeIcon", description: "Call down a devastating orbital strike in a selected area.", gif: "orbitalStrikeGif")
    ], agentLevelRewards: [
        "Reward 1", "Reward 2", "Reward 3", "Reward 4", "Reward 5", "Reward 6", "Reward 7", "Reward 8", "Reward 9", "Reward 10"
    ]),
    Agent(id: 2, role: Roles[0], name: "Viper", profileImage: "https://static.wikia.nocookie.net/valorant/images/5/5f/Viper_icon.png", birthDate: "October 9, 1991", placeOfOrigin: "United States", abilities: [
        Ability(name: "Toxic Screen", image: "toxicScreenIcon", description: "Deploy a long line of poison gas emitters.", gif: "toxicScreenGif"),
        Ability(name: "Poison Cloud", image: "poisonCloudIcon", description: "Deploy a cloud of toxic gas that can be reactivated.", gif: "poisonCloudGif"),
        Ability(name: "Snake Bite", image: "snakeBiteIcon", description: "Launch a projectile that creates a poisonous zone.", gif: "snakeBiteGif"),
        Ability(name: "Viper's Pit", image: "vipersPitIcon", description: "Create a massive toxic cloud that damages and disorients enemies.", gif: "vipersPitGif")
    ], agentLevelRewards: [
        "Reward 1", "Reward 2", "Reward 3", "Reward 4", "Reward 5", "Reward 6", "Reward 7", "Reward 8", "Reward 9", "Reward 10"
    ]),
    Agent(id: 3, role: Roles[0], name: "Omen", profileImage: "https://static.wikia.nocookie.net/valorant/images/b/b0/Omen_icon.png", birthDate: "Unknown", placeOfOrigin: "Unknown", abilities: [
        Ability(name: "Shrouded Step", image: "shroudedStepIcon", description: "Teleport to a nearby location.", gif: "shroudedStepGif"),
        Ability(name: "Paranoia", image: "paranoiaIcon", description: "Send out a shadowy projectile that blinds and deafens enemies.", gif: "paranoiaGif"),
        Ability(name: "Dark Cover", image: "darkCoverIcon", description: "Deploy a sphere of shadow that can be shaped and thrown.", gif: "darkCoverGif"),
        Ability(name: "From the Shadows", image: "fromTheShadowsIcon", description: "Teleport to a chosen location after being unseen for a time.", gif: "fromTheShadowsGif")
    ], agentLevelRewards: [
        "Reward 1", "Reward 2", "Reward 3", "Reward 4", "Reward 5", "Reward 6", "Reward 7", "Reward 8", "Reward 9", "Reward 10"
    ]),
    Agent(id: 4, role: Roles[3], name: "Killjoy", profileImage: "https://static.wikia.nocookie.net/valorant/images/1/15/Killjoy_icon.png", birthDate: "May 24, 2000", placeOfOrigin: "Germany", abilities: [
        Ability(name: "Nanoswarm", image: "nanoswarmIcon", description: "Deploy a grenade that creates an area of damage and slows enemies.", gif: "nanoswarmGif"),
        Ability(name: "Lockdown", image: "lockdownIcon", description: "Deploy a large emitter that slows and disables enemies within its radius.", gif: "lockdownGif"),
        Ability(name: "Turret", image: "turretIcon", description: "Deploy a turret that tracks and shoots enemies.", gif: "turretGif"),
        Ability(name: "Lockdown", image: "lockdownIcon", description: "Deploy a large emitter that slows and disables enemies within its radius.", gif: "lockdownGif")
    ], agentLevelRewards: [
        "Reward 1", "Reward 2", "Reward 3", "Reward 4", "Reward 5", "Reward 6", "Reward 7", "Reward 8", "Reward 9", "Reward 10"
    ]),
    Agent(id: 5, role: Roles[3], name: "Cypher", profileImage: "https://static.wikia.nocookie.net/valorant/images/8/88/Cypher_icon.png", birthDate: "May 8, 1994", placeOfOrigin: "Morocco", abilities: [
        Ability(name: "Spycam", image: "spycamIcon", description: "Deploy a camera to scout out enemy locations.", gif: "spycamGif"),
        Ability(name: "Trapwire", image: "trapwireIcon", description: "Place a tripwire that slows and reveals enemies.", gif: "trapwireGif"),
        Ability(name: "Cyber Cage", image: "cyberCageIcon", description: "Deploy a cage that slows and obstructs vision.", gif: "cyberCageGif"),
        Ability(name: "Neural Theft", image: "neuralTheftIcon", description: "Extract the location of all enemies after killing one.", gif: "neuralTheftGif")
    ], agentLevelRewards: [
        "Reward 1", "Reward 2", "Reward 3", "Reward 4", "Reward 5", "Reward 6", "Reward 7", "Reward 8", "Reward 9", "Reward 10"
    ]),
    Agent(id: 6, role: Roles[2], name: "Sova", profileImage: "https://static.wikia.nocookie.net/valorant/images/4/49/Sova_icon.png", birthDate: "March 2, 1996", placeOfOrigin: "Russia", abilities: [
        Ability(name: "Owl Drone", image: "owlDroneIcon", description: "Deploy a drone that provides vision and can tag enemies.", gif: "owlDroneGif"),
        Ability(name: "Recon Bolt", image: "reconBoltIcon", description: "Fire an arrow that reveals enemy locations.", gif: "reconBoltGif"),
        Ability(name: "Shock Bolt", image: "shockBoltIcon", description: "Fire an electric arrow that deals damage.", gif: "shockBoltGif"),
        Ability(name: "Hunter's Fury", image: "huntersFuryIcon", description: "Launch a series of powerful energy blasts to scan and damage enemies.", gif: "huntersFuryGif")
    ], agentLevelRewards: [
        "Reward 1", "Reward 2", "Reward 3", "Reward 4", "Reward 5", "Reward 6", "Reward 7", "Reward 8", "Reward 9", "Reward 10"
    ]),
    Agent(id: 7, role: Roles[3], name: "Sage", profileImage: "https://static.wikia.nocookie.net/valorant/images/7/74/Sage_icon.png", birthDate: "April 23, 1994", placeOfOrigin: "China", abilities: [
        Ability(name: "Barrier Orb", image: "barrierOrbIcon", description: "Place a solid wall that blocks movement and vision.", gif: "barrierOrbGif"),
        Ability(name: "Slow Orb", image: "slowOrbIcon", description: "Create a slowing field that hinders enemy movement.", gif: "slowOrbGif"),
        Ability(name: "Healing Orb", image: "healingOrbIcon", description: "Heal yourself or an ally.", gif: "healingOrbGif"),
        Ability(name: "Resurrection", image: "resurrectionIcon", description: "Revive a dead teammate.", gif: "resurrectionGif")
    ], agentLevelRewards: [
        "Reward 1", "Reward 2", "Reward 3", "Reward 4", "Reward 5", "Reward 6", "Reward 7", "Reward 8", "Reward 9", "Reward 10"
    ]),
    Agent(id: 9, role: Roles[1], name: "Phoenix", profileImage: "https://static.wikia.nocookie.net/valorant/images/1/14/Phoenix_icon.png", birthDate: "October 14, 1996", placeOfOrigin: "United Kingdom", abilities: [
        Ability(name: "Blaze", image: "blazeIcon", description: "Create a wall of fire that blocks vision.", gif: "blazeGif"),
        Ability(name: "Curveball", image: "curveballIcon", description: "Flashbang that curves around corners.", gif: "curveballGif"),
        Ability(name: "Hot Hands", image: "hotHandsIcon", description: "Heal yourself or damage enemies with a fireball.", gif: "hotHandsGif"),
        Ability(name: "Run It Back", image: "runItBackIcon", description: "Resurrect at your original location after death.", gif: "runItBackGif")
    ], agentLevelRewards: [
        "Reward 1", "Reward 2", "Reward 3", "Reward 4", "Reward 5", "Reward 6", "Reward 7", "Reward 8", "Reward 9", "Reward 10"
    ]),
    Agent(id: 10, role: Roles[1], name: "Jett", profileImage: "https://static.wikia.nocookie.net/valorant/images/3/35/Jett_icon.png", birthDate: "July 3, 2000", placeOfOrigin: "South Korea", abilities: [
        Ability(name: "Cloudburst", image: "cloudburstIcon", description: "A quick burst of wind to obscure vision.", gif: "cloudburstGif"),
        Ability(name: "Updraft", image: "updraftIcon", description: "A vertical boost to gain higher ground.", gif: "updraftGif"),
        Ability(name: "Tailwind", image: "tailwindIcon", description: "A quick dash in the direction you're moving.", gif: "tailwindGif"),
        Ability(name: "Blade Storm", image: "bladesStormIcon", description: "Summons a set of throwing blades.", gif: "bladeStormGif")
    ], agentLevelRewards: [
        "Reward 1", "Reward 2", "Reward 3", "Reward 4", "Reward 5", "Reward 6", "Reward 7", "Reward 8", "Reward 9", "Reward 10"
    ]),
    Agent(id: 11, role: Roles[1], name: "Reyna", profileImage: "https://static.wikia.nocookie.net/valorant/images/b/b0/Reyna_icon.png", birthDate: "November 19, 1997", placeOfOrigin: "Mexico", abilities: [
        Ability(name: "Leer", image: "leerIcon", description: "Send out a glowing orb that nearsighted enemies.", gif: "leerGif"),
        Ability(name: "Dismissing", image: "dismissIcon", description: "Consume a soul orb to become invulnerable and reposition.", gif: "dismissGif"),
        Ability(name: "Devour", image: "devourIcon", description: "Consume a soul orb to heal yourself.", gif: "devourGif"),
        Ability(name: "Empress", image: "empressIcon", description: "Activate to enhance your combat abilities, including fire rate.", gif: "empressGif")
    ], agentLevelRewards: [
        "Reward 1", "Reward 2", "Reward 3", "Reward 4", "Reward 5", "Reward 6", "Reward 7", "Reward 8", "Reward 9", "Reward 10"
    ]),
    Agent(id: 12, role: Roles[1], name: "Raze", profileImage: "https://static.wikia.nocookie.net/valorant/images/9/9c/Raze_icon.png", birthDate: "June 19, 1998", placeOfOrigin: "Brazil", abilities: [
        Ability(name: "Boom Bot", image: "boomBotIcon", description: "Deploy a bot that tracks enemies and explodes on contact.", gif: "boomBotGif"),
        Ability(name: "Blast Pack", image: "blastPackIcon", description: "Throw a satchel charge that can be detonated remotely for mobility or damage.", gif: "blastPackGif"),
        Ability(name: "Paint Shells", image: "paintShellsIcon", description: "Throw a cluster of grenades that explode multiple times.", gif: "paintShellsGif"),
        Ability(name: "Showstopper", image: "showstopperIcon", description: "Deploy a powerful rocket launcher that deals massive damage.", gif: "showstopperGif")
    ], agentLevelRewards: [
        "Reward 1", "Reward 2", "Reward 3", "Reward 4", "Reward 5", "Reward 6", "Reward 7", "Reward 8", "Reward 9", "Reward 10"
    ]),
    Agent(id: 13, role: Roles[2], name: "Breach", profileImage: "https://static.wikia.nocookie.net/valorant/images/5/53/Breach_icon.png", birthDate: "January 3, 1993", placeOfOrigin: "Sweden", abilities: [
        Ability(name: "Aftershock", image: "aftershockIcon", description: "Fire a projectile that causes an explosion.", gif: "aftershockGif"),
        Ability(name: "Flashpoint", image: "flashpointIcon", description: "Flash enemies through walls with a powerful burst.", gif: "flashpointGif"),
        Ability(name: "Fault Line", image: "faultLineIcon", description: "Send out a line that disorients and knocks up enemies.", gif: "faultLineGif"),
        Ability(name: "Rolling Thunder", image: "rollingThunderIcon", description: "Send out a powerful shockwave that stuns enemies.", gif: "rollingThunderGif")
    ], agentLevelRewards: [
        "Reward 1", "Reward 2", "Reward 3", "Reward 4", "Reward 5", "Reward 6", "Reward 7", "Reward 8", "Reward 9", "Reward 10"
    ]),
    Agent(id: 14, role: Roles[2], name: "Skye", profileImage: "https://static.wikia.nocookie.net/valorant/images/3/33/Skye_icon.png", birthDate: "June 15, 1995", placeOfOrigin: "Australia", abilities: [
        Ability(name: "Regrowth", image: "regrowthIcon", description: "Heal allies with a healing dart.", gif: "regrowthGif"),
        Ability(name: "Guiding Light", image: "guidingLightIcon", description: "Send out a flashbang that blinds enemies.", gif: "guidingLightGif"),
        Ability(name: "Trailblazer", image: "trailblazerIcon", description: "Send out a Tasmanian tiger that stuns enemies.", gif: "trailblazerGif"),
        Ability(name: "Ultimate Heal", image: "ultimateHealIcon", description: "Heal all allies in a large radius around you.", gif: "ultimateHealGif")
    ], agentLevelRewards: [
        "Reward 1", "Reward 2", "Reward 3", "Reward 4", "Reward 5", "Reward 6", "Reward 7", "Reward 8", "Reward 9", "Reward 10"
    ]),
    Agent(id: 15, role: Roles[1], name: "Yoru", profileImage: "https://static.wikia.nocookie.net/valorant/images/d/d4/Yoru_icon.png", birthDate: "August 7, 1997", placeOfOrigin: "Japan", abilities: [
        Ability(name: "Fakeout", image: "fakeoutIcon", description: "Create a fake footstep sound to distract enemies.", gif: "fakeoutGif"),
        Ability(name: "Gatecrash", image: "gatecrashIcon", description: "Teleport to a location through a rift.", gif: "gatecrashGif"),
        Ability(name: "Blindside", image: "blindsideIcon", description: "Throw a flashbang that blinds enemies.", gif: "blindsideGif"),
        Ability(name: "Dimensional Drift", image: "dimensionalDriftIcon", description: "Enter another dimension to become invisible and untouchable.", gif: "dimensionalDriftGif")
    ], agentLevelRewards: [
        "Reward 1", "Reward 2", "Reward 3", "Reward 4", "Reward 5", "Reward 6", "Reward 7", "Reward 8", "Reward 9", "Reward 10"
    ]),
    Agent(id: 16, role: Roles[0], name: "Astra", profileImage: "https://static.wikia.nocookie.net/valorant/images/0/08/Astra_icon.png", birthDate: "July 9, 1994", placeOfOrigin: "Ghana", abilities: [
        Ability(name: "Nebula", image: "nebulaIcon", description: "Turn star into a smoke screen that blocks vision.", gif: "nebulaGif"),
        Ability(name: "Gravity Well", image: "gravityWellIcon", description: "Create a gravitational pull that pulls enemies in and disorients them.", gif: "gravityWellGif"),
        Ability(name: "Nova Pulse", image: "novaPulseIcon", description: "Activate a star to create a pulse that concusses enemies.", gif: "novaPulseGif"),
        Ability(name: "Astral Form", image: "astralFormIcon", description: "Switch to a cosmic form and place stars to activate them.", gif: "astralFormGif")
    ], agentLevelRewards: [
        "Reward 1", "Reward 2", "Reward 3", "Reward 4", "Reward 5", "Reward 6", "Reward 7", "Reward 8", "Reward 9", "Reward 10"
    ]),
    Agent(id: 17, role: Roles[2], name: "KAY/O", profileImage: "https://static.wikia.nocookie.net/valorant/images/f/f0/KAYO_icon.png", birthDate: "December 8, 1997", placeOfOrigin: "United States", abilities: [
        Ability(name: "FRAG/ment", image: "fragMentIcon", description: "Throw a grenade that splits into smaller grenades.", gif: "fragMentGif"),
        Ability(name: "Flash/Drive", image: "flashDriveIcon", description: "Throw a flashbang that blinds enemies.", gif: "flashDriveGif"),
        Ability(name: "Suppressor", image: "suppressorIcon", description: "Deploy a suppressor grenade to disable enemy abilities.", gif: "suppressorGif"),
        Ability(name: "Null/CMD", image: "nullCmdIcon", description: "Activate an EMP that disables enemy abilities in its radius.", gif: "nullCmdGif")
    ], agentLevelRewards: [
        "Reward 1", "Reward 2", "Reward 3", "Reward 4", "Reward 5", "Reward 6", "Reward 7", "Reward 8", "Reward 9", "Reward 10"
    ]),
    Agent(id: 18, role: Roles[3], name: "Chamber", profileImage: "https://static.wikia.nocookie.net/valorant/images/0/09/Chamber_icon.png", birthDate: "October 11, 1996", placeOfOrigin: "France", abilities: [
        Ability(name: "Trademark", image: "trademarkIcon", description: "Place a trap that slows enemies in its proximity.", gif: "trademarkGif"),
        Ability(name: "Headhunter", image: "headhunterIcon", description: "Use a special sidearm with high damage.", gif: "headhunterGif"),
        Ability(name: "Rendezvous", image: "rendezvousIcon", description: "Place teleportation anchors to quickly reposition.", gif: "rendezvousGif"),
        Ability(name: "Tour De Force", image: "tourDeForceIcon", description: "Activate a powerful sniper rifle that can slow and eliminate enemies.", gif: "tourDeForceGif")
    ], agentLevelRewards: [
        "Reward 1", "Reward 2", "Reward 3", "Reward 4", "Reward 5", "Reward 6", "Reward 7", "Reward 8", "Reward 9", "Reward 10"
    ]),
    Agent(id: 19, role: Roles[1], name: "Neon", profileImage: "https://static.wikia.nocookie.net/valorant/images/d/d0/Neon_icon.png", birthDate: "July 17, 2000", placeOfOrigin: "Philippines", abilities: [
            Ability(name: "Relay Bolt", image: "relayBoltIcon", description: "Throw a bolt that creates a concussive shockwave.", gif: "relayBoltGif"),
            Ability(name: "Fast Lane", image: "fastLaneIcon", description: "Create two walls of energy that block vision and move at high speed.", gif: "fastLaneGif"),
            Ability(name: "High Gear", image: "highGearIcon", description: "Activate a sprint boost that increases speed and energy regeneration.", gif: "highGearGif"),
            Ability(name: "Overdrive", image: "overdriveIcon", description: "Activate a supercharged state to deal damage with a powerful energy blast.", gif: "overdriveGif")
        ], agentLevelRewards: [
            "Reward 1", "Reward 2", "Reward 3", "Reward 4", "Reward 5", "Reward 6", "Reward 7", "Reward 8", "Reward 9", "Reward 10"
    ]),
    Agent(id: 20, role: Roles[2], name: "Fade", profileImage: "https://static.wikia.nocookie.net/valorant/images/a/a6/Fade_icon.png", birthDate: "February 14, 1998", placeOfOrigin: "Turkey", abilities: [
            Ability(name: "Seize", image: "seizeIcon", description: "Throw a projectile that nearsights and debuffs enemies.", gif: "seizeGif"),
            Ability(name: "Haunt", image: "hauntIcon", description: "Send out a creature that reveals enemies in a radius.", gif: "hauntGif"),
            Ability(name: "Prowler", image: "prowlerIcon", description: "Send out a prowling creature that disables and reveals enemies.", gif: "prowlerGif"),
            Ability(name: "Nightfall", image: "nightfallIcon", description: "Send out a wave that disorients and nearsights enemies in its path.", gif: "nightfallGif")
        ], agentLevelRewards: [
            "Reward 1", "Reward 2", "Reward 3", "Reward 4", "Reward 5", "Reward 6", "Reward 7", "Reward 8", "Reward 9", "Reward 10"
    ]),
    Agent(id: 21, role: Roles[0], name: "Harbor", profileImage: "https://static.wikia.nocookie.net/valorant/images/f/f3/Harbor_icon.png", birthDate: "July 22, 1997", placeOfOrigin: "India", abilities: [
            Ability(name: "High Tide", image: "highTideIcon", description: "Create a wall of water that slows enemies and blocks vision.", gif: "highTideGif"),
            Ability(name: "Cove", image: "coveIcon", description: "Create a sphere of water that blocks bullets and vision.", gif: "coveGif"),
            Ability(name: "Cascade", image: "cascadeIcon", description: "Send out a wave of water that knocks enemies back and slows them.", gif: "cascadeGif"),
            Ability(name: "Reckoning", image: "reckoningIcon", description: "Send out a wave that debuffs enemies and causes them to become vulnerable.", gif: "reckoningGif")
        ], agentLevelRewards: [
            "Reward 1", "Reward 2", "Reward 3", "Reward 4", "Reward 5", "Reward 6", "Reward 7", "Reward 8", "Reward 9", "Reward 10"
    ]),
    Agent(id: 22, role: Roles[2], name: "Gekko", profileImage: "https://static.wikia.nocookie.net/valorant/images/6/66/Gekko_icon.png", birthDate: "August 15, 2002", placeOfOrigin: "United States", abilities: [
            Ability(name: "Mosh Pit", image: "https://static.wikia.nocookie.net/valorant/images/2/24/Mosh_Pit.png", description: "Throw a blob that sticks to surfaces and explodes after a delay.", gif: "moshPitGif"),
            Ability(name: "Dizzy", image: "https://static.wikia.nocookie.net/valorant/images/8/8d/Dizzy.png", description: "Send out a creature that disorients enemies within its radius.", gif: "dizzyGif"),
            Ability(name: "Wingman", image: "https://static.wikia.nocookie.net/valorant/images/0/09/Wingman.png", description: "Deploy a creature that can find and disable enemies or plant the spike.", gif: "wingmanGif"),
            Ability(name: "Thrash", image: "https://static.wikia.nocookie.net/valorant/images/f/f8/Thrash.png", description: "Activate a powerful creature to attack and disable enemies.", gif: "thrashGif")
        ], agentLevelRewards: [
            "Reward 1", "Reward 2", "Reward 3", "Reward 4", "Reward 5", "Reward 6", "Reward 7", "Reward 8", "Reward 9", "Reward 10"
    ])
]
// Main View - List of all Agents
struct CharacterLoreView: View {
    var agents = Agents
    
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
                AsyncImage(url: URL(string: agent.profileImage)) { image in
                    image
                        .resizable()
                        .scaledToFit()
                        .frame(height: 300)
                        .padding()
                } placeholder: {
                    ProgressView()
                        .frame(height: 300)
                }
                
                Text(agent.name)
                    .font(.largeTitle)
                    .padding(.bottom)
                
                Text("Birthday: \(agent.birthDate)")
                    .font(.subheadline)
                    .padding(.bottom, 2)
                
                Text("Place of Origin: \(agent.placeOfOrigin)")
                    .font(.subheadline)
                    .padding(.bottom)
                
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
                                AsyncImage(url: URL(string: ability.image)) { image in
                                    image
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 50, height: 50)
                                } placeholder: {
                                    ProgressView()
                                        .frame(width: 50, height: 50)
                                }
                                
                                Text(ability.name)
                                    .font(.headline)
                                    .foregroundColor(.white)
                            }
                            .padding()
                            .background(Color.red)
                            .cornerRadius(10)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .fixedSize(horizontal: false, vertical: true)
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
    @State private var gifLoaded: Bool = true // Track if the GIF has successfully loaded
    
    var body: some View {
        VStack {
            Text(ability.name)
                .font(.title)
                .padding()
            
            if let gifUrl = ability.gif, let url = URL(string: gifUrl) {
                AsyncImage(url: url) { phase in
                    switch phase {
                    case .empty:
                        // Placeholder when loading
                        ProgressView()
                            .frame(height: 200)
                    case .success(let image):
                        // Success - Show GIF image
                        image
                            .resizable()
                            .scaledToFit()
                            .frame(height: 200)
                            .onAppear {
                                gifLoaded = true
                            }
                    case .failure:
                        // Failure - Display a message if the GIF fails to load
                        Text("GIF failed to load.")
                            .foregroundColor(.red)
                            .padding()
                            .onAppear {
                                gifLoaded = false
                            }
                    @unknown default:
                        EmptyView()
                    }
                }
            } else {
                // If no GIF URL is provided, show a fallback message
                Text("No GIF available for this ability.")
                    .foregroundColor(.gray)
                    .padding()
            }
            
            // Display the ability description
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
