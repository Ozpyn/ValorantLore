//
//  Data.swift
//  ValorantLore
//
//  Created by ozpyn on 12/7/24.
//
//  Note: I don't think storing data like this is good practice, but I dont have the patience to set up a rest API.

let Maps = [
    Map(name: "Abyss", earth: "Alpha", lore: "", location: "Norway", numberOfSites: 2, imageUrls: ["https://static.wikia.nocookie.net/valorant-lore/images/6/61/Loading_Screen_Abyss.png", "https://static.wikia.nocookie.net/valorant-lore/images/5/5f/Abyss_minimap.png", ""]),
    Map(name: "Ascent", earth: "Alpha", lore: "", location: "San Marco, Italy", numberOfSites: 2, imageUrls: ["https://static.wikia.nocookie.net/valorant/images/e/e7/Loading_Screen_Ascent.png", "https://static.wikia.nocookie.net/valorant/images/0/04/Ascent_minimap.png"]),
    Map(name: "Bind", earth: "Alpha", lore: "", location: "Rabat, Morocco", numberOfSites: 2, imageUrls: ["https://static.wikia.nocookie.net/valorant/images/2/23/Loading_Screen_Bind.png", "https://static.wikia.nocookie.net/valorant/images/e/e6/Bind_minimap.png"]),
    Map(name: "Breeze", earth: "Alpha", lore: "", location: "Bermuda Triangle", numberOfSites: 2, imageUrls: ["https://static.wikia.nocookie.net/valorant/images/1/10/Loading_Screen_Breeze.png", "https://static.wikia.nocookie.net/valorant/images/7/78/Breeze_minimap.png"]),
    Map(name: "Fracture", earth: "Alpha", lore: "", location: "Santa Fe, New Mexico", numberOfSites: 2, imageUrls: ["https://static.wikia.nocookie.net/valorant/images/f/fc/Loading_Screen_Fracture.png", "https://static.wikia.nocookie.net/valorant/images/1/18/Fracture_minimap.png"]),
    Map(name: "Haven", earth: "Alpha", lore: "", location: "Thimphu, Bhutan", numberOfSites: 3, imageUrls: ["https://static.wikia.nocookie.net/valorant/images/7/70/Loading_Screen_Haven.png", "https://static.wikia.nocookie.net/valorant/images/2/25/Haven_minimap.png"]),
    Map(name: "Icebox", earth: "Alpha", lore: "", location: "Bennett Islant, Russia", numberOfSites: 2, imageUrls: ["https://static.wikia.nocookie.net/valorant/images/1/13/Loading_Screen_Icebox.png", "https://static.wikia.nocookie.net/valorant/images/c/cf/Icebox_minimap.png"]),
    Map(name: "Range", earth: "Alpha", lore: "", location: "Poveglia, Italy", numberOfSites: 0, imageUrls: ["https://static.wikia.nocookie.net/valorant/images/3/37/Loading_Screen_Range.png", "https://static.wikia.nocookie.net/valorant/images/5/59/Range_minimap.png"]),
    Map(name: "Split", earth: "Alpha", lore: "", location: "Shinjuku, Japan", numberOfSites: 2, imageUrls: ["https://static.wikia.nocookie.net/valorant/images/d/d6/Loading_Screen_Split.png", "https://static.wikia.nocookie.net/valorant/images/f/ff/Split_minimap.png"]),
    Map(name: "Sunset", earth: "Aplha", lore: "", location: "Boyle Heights, LA, USA", numberOfSites: 2, imageUrls: ["https://static.wikia.nocookie.net/valorant/images/5/5c/Loading_Screen_Sunset.png", "https://static.wikia.nocookie.net/valorant/images/7/7b/Sunset_minimap.png"]),
    Map(name: "Lotus", earth: "Omega", lore: "", location: "Western Ghats, India", numberOfSites: 3, imageUrls: ["https://static.wikia.nocookie.net/valorant/images/d/d0/Loading_Screen_Lotus.png", "https://static.wikia.nocookie.net/valorant/images/b/be/Lotus_minimap.png"]),
    Map(name: "Pearl", earth: "Omega", lore: "", location: "Lisbon, Portugal", numberOfSites: 2, imageUrls: ["https://static.wikia.nocookie.net/valorant/images/a/af/Loading_Screen_Pearl.png", "https://static.wikia.nocookie.net/valorant/images/6/63/Pearl_minimap.png"]),
]


// Agent Role Types
let Roles = [
    Role(name: "Controller", icon: "https://static.wikia.nocookie.net/valorant/images/0/04/ControllerClassSymbol.png", description: "Controllers are experts in slicing up dangerous territory to set their team up for success."),
    Role(name: "Duelist", icon: "https://static.wikia.nocookie.net/valorant/images/f/fd/DuelistClassSymbol.png", description: "Duelists are self-sufficient fraggers who their team expects, through abilities and skills, to get high frags and seek out engagements first."),
    Role(name: "Initiator", icon: "https://static.wikia.nocookie.net/valorant/images/7/77/InitiatorClassSymbol.png", description: "Initiators challenge angles by setting up their team to enter contested ground and push defenders away."),
    Role(name: "Sentinel", icon: "https://static.wikia.nocookie.net/valorant/images/4/43/SentinelClassSymbol.png", description: "Sentinels are defensive experts who can lock down areas and watch flanks, both on attacker and defender rounds."),
]

// Agent Data
let Agents = [
    Agent(id: 1, role: Roles[0], name: "Brimstone", profileImage: "https://static.wikia.nocookie.net/valorant/images/4/4d/Brimstone_icon.png", artworkImage: "https://static.wikia.nocookie.net/valorant/images/8/81/Brimstone_Artwork_Full.png", placeOfOrigin: "United States", abilities: [
        Ability(name: "Sky Smokes", image: "https://static.wikia.nocookie.net/valorant/images/7/71/Sky_Smoke.png", description: "Deploy smokescreens to block vision.", gif: "https://beebom.com/wp-content/uploads/2023/07/Brimstone-one-way-smoke.gif"),
        Ability(name: "Stim Beacon", image: "https://static.wikia.nocookie.net/valorant/images/a/ad/Stim_Beacon.png", description: "Deploy a beacon that boosts speed and fire rate.", gif: "https://cdn.oneesports.gg/cdn-data/2022/03/Valorant_Brimstone_Stim_Beacon_Nerf-1024x576.webp"),
        Ability(name: "Incendiary", image: "https://static.wikia.nocookie.net/valorant/images/2/26/Incendiary.png", description: "Throw a fire grenade that burns enemies.", gif: "https://beebom.com/wp-content/uploads/2023/07/Brimstone-Incendiary-grenade.gif"),
        Ability(name: "Orbital Strike", image: "https://static.wikia.nocookie.net/valorant/images/6/61/Orbital_Strike.png", description: "Call down a devastating orbital strike in a selected area.", gif: "https://beebom.com/wp-content/uploads/2023/07/Brimstone-ultimate-Orbital-Strike.gif")
    ], agentLevelRewards: [
        "Player Title: Old Dog", "Spray: The Big One", "Player Card: VALORANT Brimstone", "Player Title: Coach", "Spray: Getting Reps", "Buddy: Dog Tags", "Spray: Brimstone", "Player Title: High Command", "Player Card: No One Left Behind", "Weapon Skin: Peacekeeper Sheriff"
    ]),
    Agent(id: 2, role: Roles[0], name: "Viper", profileImage: "https://static.wikia.nocookie.net/valorant/images/5/5f/Viper_icon.png", artworkImage: "https://static.wikia.nocookie.net/valorant/images/8/85/Viper_Artwork_Full.png", placeOfOrigin: "United States", abilities: [
        Ability(name: "Toxic Screen", image: "https://static.wikia.nocookie.net/valorant/images/c/cd/Toxic_Screen.png", description: "Deploy a long line of poison gas emitters.", gif: "https://staticg.sportskeeda.com/editor/2022/06/2a054-16541528080639-1920.jpg"),
        Ability(name: "Poison Cloud", image: "https://static.wikia.nocookie.net/valorant/images/8/81/Poison_Cloud.png", description: "Deploy a cloud of toxic gas that can be reactivated.", gif: "https://static1.thegamerimages.com/wordpress/wp-content/uploads/2020/07/poison-cloud.jpg"),
        Ability(name: "Snake Bite", image: "https://static.wikia.nocookie.net/valorant/images/a/a2/Snake_Bite.png", description: "Launch a projectile that creates a poisonous zone.", gif: "https://static1.thegamerimages.com/wordpress/wp-content/uploads/2020/07/snake-bite-2.jpg"),
        Ability(name: "Viper's Pit", image: "https://static.wikia.nocookie.net/valorant/images/c/cb/Viper%27s_Pit.png", description: "Create a massive toxic cloud that damages and disorients enemies.", gif: "https://cdn.thespike.gg/*Luke%25202.0%2Fviper_abilities_vipers_pit_ultimate_1696926900261.jpg")
    ], agentLevelRewards: [
        "Spray: Pick Your Poison", "Player Card: VALORANT Viper", "Player Title: Biohazard", "Spray: Deadly Venom", "Kingdom Credits: 2,000", "Buddy: Venom Vial", "Spray: Viper", "Player Title: Toxic", "Player Card: One Dark Night", "Weapon Skin: Snakebite Shorty"
    ]),
    Agent(id: 3, role: Roles[0], name: "Omen", profileImage: "https://static.wikia.nocookie.net/valorant/images/b/b0/Omen_icon.png", artworkImage: "https://static.wikia.nocookie.net/valorant/images/0/0e/Omen_Artwork_Full.png", placeOfOrigin: "Unknown", abilities: [
        Ability(name: "Shrouded Step", image: "https://static.wikia.nocookie.net/valorant/images/8/80/Shrouded_Step.png", description: "Teleport to a nearby location.", gif: "https://news.codashop.com/ph/wp-content/uploads/sites/5/2023/05/Shrouded-steps.png"),
        Ability(name: "Paranoia", image: "https://static.wikia.nocookie.net/valorant/images/8/8d/Paranoia.png", description: "Send out a shadowy projectile that blinds and deafens enemies.", gif: "https://assetsio.gnwcdn.com/omen-blind.jpg"),
        Ability(name: "Dark Cover", image: "https://static.wikia.nocookie.net/valorant/images/2/2c/Dark_Cover.png", description: "Deploy a sphere of shadow that can be shaped and thrown.", gif: "https://us-tuna-sounds-images.voicemod.net/c403a93c-af90-47b5-9279-3fdbce3d90fe.jpg"),
        Ability(name: "From the Shadows", image: "https://static.wikia.nocookie.net/valorant/images/0/0e/From_the_Shadows.png", description: "Teleport to a chosen location after being unseen for a time.", gif: "https://cdn.shopify.com/s/files/1/0022/8668/2163/files/From_the_Shadows_X_seven_ultimate_orbs_1024x1024.png")
    ], agentLevelRewards: [
        "Spray: It Hunts", "Player Card: VALORANT Omen", "Player Title: Harbinger", "Spray: Dark Focus", "Kingdom Credits: 2,000", "Buddy: Grim Delight", "Spray: Omen", "Player Title: Revenant", "Player Card: What's Another Death", "Weapon Skin: Soul Silencer Ghost"
    ]),
    Agent(id: 4, role: Roles[3], name: "Killjoy", profileImage: "https://static.wikia.nocookie.net/valorant/images/1/15/Killjoy_icon.png", artworkImage: "https://static.wikia.nocookie.net/valorant/images/8/81/Killjoy_Artwork_Full.png", placeOfOrigin: "Germany", abilities: [
        Ability(name: "Nanoswarm", image: "https://static.wikia.nocookie.net/valorant/images/4/4d/Nanoswarm.png", description: "Deploy a grenade that creates an area of damage and slows enemies.", gif: "nanoswarmGif"),
        Ability(name: "Alarmbot", image: "https://static.wikia.nocookie.net/valorant/images/d/d9/Alarmbot.png", description: "Deploy a bot that alerts the user of enemies within its radius.", gif: "alarmbotGif"),
        Ability(name: "Turret", image: "https://static.wikia.nocookie.net/valorant/images/3/32/Turret.png", description: "Deploy a turret that tracks and shoots enemies.", gif: "turretGif"),
        Ability(name: "Lockdown", image: "https://static.wikia.nocookie.net/valorant/images/7/7c/Lockdown.png", description: "Deploy a large emitter that slows and disables enemies within its radius.", gif: "lockdownGif")
    ], agentLevelRewards: [
        "Spray: Variable Removed", "Player Card: VALORANT Killjoy", "Player Title: Techie", "Spray: Don't Cross Me", "Kingdom Credits: 2,000", "Buddy: Bot", "Spray: Killjoy", "Player Title: Genius", "Player Card: Nächtelang", "Weapon Skin: Wunderkind Shorty"
    ]),
    Agent(id: 5, role: Roles[3], name: "Cypher", profileImage: "https://static.wikia.nocookie.net/valorant/images/8/88/Cypher_icon.png", artworkImage: "", placeOfOrigin: "Morocco", abilities: [
        Ability(name: "Spycam", image: "spycamIcon", description: "Deploy a camera to scout out enemy locations.", gif: "spycamGif"),
        Ability(name: "Trapwire", image: "trapwireIcon", description: "Place a tripwire that slows and reveals enemies.", gif: "trapwireGif"),
        Ability(name: "Cyber Cage", image: "cyberCageIcon", description: "Deploy a cage that slows and obstructs vision.", gif: "cyberCageGif"),
        Ability(name: "Neural Theft", image: "neuralTheftIcon", description: "Extract the location of all enemies after killing one.", gif: "neuralTheftGif")
    ], agentLevelRewards: [
        "Reward 1", "Reward 2", "Reward 3", "Reward 4", "Reward 5", "Reward 6", "Reward 7", "Reward 8", "Reward 9", "Reward 10"
    ]),
    Agent(id: 6, role: Roles[2], name: "Sova", profileImage: "https://static.wikia.nocookie.net/valorant/images/4/49/Sova_icon.png", artworkImage: "", placeOfOrigin: "Russia", abilities: [
        Ability(name: "Owl Drone", image: "owlDroneIcon", description: "Deploy a drone that provides vision and can tag enemies.", gif: "owlDroneGif"),
        Ability(name: "Recon Bolt", image: "reconBoltIcon", description: "Fire an arrow that reveals enemy locations.", gif: "reconBoltGif"),
        Ability(name: "Shock Bolt", image: "shockBoltIcon", description: "Fire an electric arrow that deals damage.", gif: "shockBoltGif"),
        Ability(name: "Hunter's Fury", image: "huntersFuryIcon", description: "Launch a series of powerful energy blasts to scan and damage enemies.", gif: "huntersFuryGif")
    ], agentLevelRewards: [
        "Reward 1", "Reward 2", "Reward 3", "Reward 4", "Reward 5", "Reward 6", "Reward 7", "Reward 8", "Reward 9", "Reward 10"
    ]),
    Agent(id: 7, role: Roles[3], name: "Sage", profileImage: "https://static.wikia.nocookie.net/valorant/images/7/74/Sage_icon.png", artworkImage: "", placeOfOrigin: "China", abilities: [
        Ability(name: "Barrier Orb", image: "barrierOrbIcon", description: "Place a solid wall that blocks movement and vision.", gif: "barrierOrbGif"),
        Ability(name: "Slow Orb", image: "slowOrbIcon", description: "Create a slowing field that hinders enemy movement.", gif: "slowOrbGif"),
        Ability(name: "Healing Orb", image: "healingOrbIcon", description: "Heal yourself or an ally.", gif: "healingOrbGif"),
        Ability(name: "Resurrection", image: "resurrectionIcon", description: "Revive a dead teammate.", gif: "resurrectionGif")
    ], agentLevelRewards: [
        "Reward 1", "Reward 2", "Reward 3", "Reward 4", "Reward 5", "Reward 6", "Reward 7", "Reward 8", "Reward 9", "Reward 10"
    ]),
    Agent(id: 9, role: Roles[1], name: "Phoenix", profileImage: "https://static.wikia.nocookie.net/valorant/images/1/14/Phoenix_icon.png", artworkImage: "", placeOfOrigin: "United Kingdom", abilities: [
        Ability(name: "Blaze", image: "blazeIcon", description: "Create a wall of fire that blocks vision.", gif: "blazeGif"),
        Ability(name: "Curveball", image: "curveballIcon", description: "Flashbang that curves around corners.", gif: "curveballGif"),
        Ability(name: "Hot Hands", image: "hotHandsIcon", description: "Heal yourself or damage enemies with a fireball.", gif: "hotHandsGif"),
        Ability(name: "Run It Back", image: "runItBackIcon", description: "Resurrect at your original location after death.", gif: "runItBackGif")
    ], agentLevelRewards: [
        "Reward 1", "Reward 2", "Reward 3", "Reward 4", "Reward 5", "Reward 6", "Reward 7", "Reward 8", "Reward 9", "Reward 10"
    ]),
    Agent(id: 10, role: Roles[1], name: "Jett", profileImage: "https://static.wikia.nocookie.net/valorant/images/3/35/Jett_icon.png", artworkImage: "", placeOfOrigin: "South Korea", abilities: [
        Ability(name: "Cloudburst", image: "cloudburstIcon", description: "A quick burst of wind to obscure vision.", gif: "cloudburstGif"),
        Ability(name: "Updraft", image: "updraftIcon", description: "A vertical boost to gain higher ground.", gif: "updraftGif"),
        Ability(name: "Tailwind", image: "tailwindIcon", description: "A quick dash in the direction you're moving.", gif: "tailwindGif"),
        Ability(name: "Blade Storm", image: "bladesStormIcon", description: "Summons a set of throwing blades.", gif: "bladeStormGif")
    ], agentLevelRewards: [
        "Reward 1", "Reward 2", "Reward 3", "Reward 4", "Reward 5", "Reward 6", "Reward 7", "Reward 8", "Reward 9", "Reward 10"
    ]),
    Agent(id: 11, role: Roles[1], name: "Reyna", profileImage: "https://static.wikia.nocookie.net/valorant/images/b/b0/Reyna_icon.png", artworkImage: "", placeOfOrigin: "Mexico", abilities: [
        Ability(name: "Leer", image: "leerIcon", description: "Send out a glowing orb that nearsighted enemies.", gif: "leerGif"),
        Ability(name: "Dismissing", image: "dismissIcon", description: "Consume a soul orb to become invulnerable and reposition.", gif: "dismissGif"),
        Ability(name: "Devour", image: "devourIcon", description: "Consume a soul orb to heal yourself.", gif: "devourGif"),
        Ability(name: "Empress", image: "empressIcon", description: "Activate to enhance your combat abilities, including fire rate.", gif: "empressGif")
    ], agentLevelRewards: [
        "Reward 1", "Reward 2", "Reward 3", "Reward 4", "Reward 5", "Reward 6", "Reward 7", "Reward 8", "Reward 9", "Reward 10"
    ]),
    Agent(id: 12, role: Roles[1], name: "Raze", profileImage: "https://static.wikia.nocookie.net/valorant/images/9/9c/Raze_icon.png", artworkImage: "", placeOfOrigin: "Brazil", abilities: [
        Ability(name: "Boom Bot", image: "boomBotIcon", description: "Deploy a bot that tracks enemies and explodes on contact.", gif: "boomBotGif"),
        Ability(name: "Blast Pack", image: "blastPackIcon", description: "Throw a satchel charge that can be detonated remotely for mobility or damage.", gif: "blastPackGif"),
        Ability(name: "Paint Shells", image: "paintShellsIcon", description: "Throw a cluster of grenades that explode multiple times.", gif: "paintShellsGif"),
        Ability(name: "Showstopper", image: "showstopperIcon", description: "Deploy a powerful rocket launcher that deals massive damage.", gif: "showstopperGif")
    ], agentLevelRewards: [
        "Reward 1", "Reward 2", "Reward 3", "Reward 4", "Reward 5", "Reward 6", "Reward 7", "Reward 8", "Reward 9", "Reward 10"
    ]),
    Agent(id: 13, role: Roles[2], name: "Breach", profileImage: "https://static.wikia.nocookie.net/valorant/images/5/53/Breach_icon.png", artworkImage: "", placeOfOrigin: "Sweden", abilities: [
        Ability(name: "Aftershock", image: "aftershockIcon", description: "Fire a projectile that causes an explosion.", gif: "aftershockGif"),
        Ability(name: "Flashpoint", image: "flashpointIcon", description: "Flash enemies through walls with a powerful burst.", gif: "flashpointGif"),
        Ability(name: "Fault Line", image: "faultLineIcon", description: "Send out a line that disorients and knocks up enemies.", gif: "faultLineGif"),
        Ability(name: "Rolling Thunder", image: "rollingThunderIcon", description: "Send out a powerful shockwave that stuns enemies.", gif: "rollingThunderGif")
    ], agentLevelRewards: [
        "Reward 1", "Reward 2", "Reward 3", "Reward 4", "Reward 5", "Reward 6", "Reward 7", "Reward 8", "Reward 9", "Reward 10"
    ]),
    Agent(id: 14, role: Roles[2], name: "Skye", profileImage: "https://static.wikia.nocookie.net/valorant/images/3/33/Skye_icon.png", artworkImage: "", placeOfOrigin: "Australia", abilities: [
        Ability(name: "Regrowth", image: "regrowthIcon", description: "Heal allies with a healing dart.", gif: "regrowthGif"),
        Ability(name: "Guiding Light", image: "guidingLightIcon", description: "Send out a flashbang that blinds enemies.", gif: "guidingLightGif"),
        Ability(name: "Trailblazer", image: "trailblazerIcon", description: "Send out a Tasmanian tiger that stuns enemies.", gif: "trailblazerGif"),
        Ability(name: "Ultimate Heal", image: "ultimateHealIcon", description: "Heal all allies in a large radius around you.", gif: "ultimateHealGif")
    ], agentLevelRewards: [
        "Reward 1", "Reward 2", "Reward 3", "Reward 4", "Reward 5", "Reward 6", "Reward 7", "Reward 8", "Reward 9", "Reward 10"
    ]),
    Agent(id: 15, role: Roles[1], name: "Yoru", profileImage: "https://static.wikia.nocookie.net/valorant/images/d/d4/Yoru_icon.png", artworkImage: "", placeOfOrigin: "Japan", abilities: [
        Ability(name: "Fakeout", image: "fakeoutIcon", description: "Create a fake footstep sound to distract enemies.", gif: "fakeoutGif"),
        Ability(name: "Gatecrash", image: "gatecrashIcon", description: "Teleport to a location through a rift.", gif: "gatecrashGif"),
        Ability(name: "Blindside", image: "blindsideIcon", description: "Throw a flashbang that blinds enemies.", gif: "blindsideGif"),
        Ability(name: "Dimensional Drift", image: "dimensionalDriftIcon", description: "Enter another dimension to become invisible and untouchable.", gif: "dimensionalDriftGif")
    ], agentLevelRewards: [
        "Reward 1", "Reward 2", "Reward 3", "Reward 4", "Reward 5", "Reward 6", "Reward 7", "Reward 8", "Reward 9", "Reward 10"
    ]),
    Agent(id: 16, role: Roles[0], name: "Astra", profileImage: "https://static.wikia.nocookie.net/valorant/images/0/08/Astra_icon.png", artworkImage: "", placeOfOrigin: "Ghana", abilities: [
        Ability(name: "Nebula", image: "nebulaIcon", description: "Turn star into a smoke screen that blocks vision.", gif: "nebulaGif"),
        Ability(name: "Gravity Well", image: "gravityWellIcon", description: "Create a gravitational pull that pulls enemies in and disorients them.", gif: "gravityWellGif"),
        Ability(name: "Nova Pulse", image: "novaPulseIcon", description: "Activate a star to create a pulse that concusses enemies.", gif: "novaPulseGif"),
        Ability(name: "Astral Form", image: "astralFormIcon", description: "Switch to a cosmic form and place stars to activate them.", gif: "astralFormGif")
    ], agentLevelRewards: [
        "Reward 1", "Reward 2", "Reward 3", "Reward 4", "Reward 5", "Reward 6", "Reward 7", "Reward 8", "Reward 9", "Reward 10"
    ]),
    Agent(id: 17, role: Roles[2], name: "KAY/O", profileImage: "https://static.wikia.nocookie.net/valorant/images/f/f0/KAYO_icon.png", artworkImage: "", placeOfOrigin: "United States", abilities: [
        Ability(name: "FRAG/ment", image: "fragMentIcon", description: "Throw a grenade that splits into smaller grenades.", gif: "fragMentGif"),
        Ability(name: "Flash/Drive", image: "flashDriveIcon", description: "Throw a flashbang that blinds enemies.", gif: "flashDriveGif"),
        Ability(name: "Suppressor", image: "suppressorIcon", description: "Deploy a suppressor grenade to disable enemy abilities.", gif: "suppressorGif"),
        Ability(name: "Null/CMD", image: "nullCmdIcon", description: "Activate an EMP that disables enemy abilities in its radius.", gif: "nullCmdGif")
    ], agentLevelRewards: [
        "Reward 1", "Reward 2", "Reward 3", "Reward 4", "Reward 5", "Reward 6", "Reward 7", "Reward 8", "Reward 9", "Reward 10"
    ]),
    Agent(id: 18, role: Roles[3], name: "Chamber", profileImage: "https://static.wikia.nocookie.net/valorant/images/0/09/Chamber_icon.png", artworkImage: "", placeOfOrigin: "France", abilities: [
        Ability(name: "Trademark", image: "trademarkIcon", description: "Place a trap that slows enemies in its proximity.", gif: "trademarkGif"),
        Ability(name: "Headhunter", image: "headhunterIcon", description: "Use a special sidearm with high damage.", gif: "headhunterGif"),
        Ability(name: "Rendezvous", image: "rendezvousIcon", description: "Place teleportation anchors to quickly reposition.", gif: "rendezvousGif"),
        Ability(name: "Tour De Force", image: "tourDeForceIcon", description: "Activate a powerful sniper rifle that can slow and eliminate enemies.", gif: "tourDeForceGif")
    ], agentLevelRewards: [
        "Reward 1", "Reward 2", "Reward 3", "Reward 4", "Reward 5", "Reward 6", "Reward 7", "Reward 8", "Reward 9", "Reward 10"
    ]),
    Agent(id: 19, role: Roles[1], name: "Neon", profileImage: "https://static.wikia.nocookie.net/valorant/images/d/d0/Neon_icon.png", artworkImage: "", placeOfOrigin: "Philippines", abilities: [
            Ability(name: "Relay Bolt", image: "relayBoltIcon", description: "Throw a bolt that creates a concussive shockwave.", gif: "relayBoltGif"),
            Ability(name: "Fast Lane", image: "fastLaneIcon", description: "Create two walls of energy that block vision and move at high speed.", gif: "fastLaneGif"),
            Ability(name: "High Gear", image: "highGearIcon", description: "Activate a sprint boost that increases speed and energy regeneration.", gif: "highGearGif"),
            Ability(name: "Overdrive", image: "overdriveIcon", description: "Activate a supercharged state to deal damage with a powerful energy blast.", gif: "overdriveGif")
        ], agentLevelRewards: [
            "Reward 1", "Reward 2", "Reward 3", "Reward 4", "Reward 5", "Reward 6", "Reward 7", "Reward 8", "Reward 9", "Reward 10"
    ]),
    Agent(id: 20, role: Roles[2], name: "Fade", profileImage: "https://static.wikia.nocookie.net/valorant/images/a/a6/Fade_icon.png", artworkImage: "", placeOfOrigin: "Turkey", abilities: [
            Ability(name: "Seize", image: "seizeIcon", description: "Throw a projectile that nearsights and debuffs enemies.", gif: "seizeGif"),
            Ability(name: "Haunt", image: "hauntIcon", description: "Send out a creature that reveals enemies in a radius.", gif: "hauntGif"),
            Ability(name: "Prowler", image: "prowlerIcon", description: "Send out a prowling creature that disables and reveals enemies.", gif: "prowlerGif"),
            Ability(name: "Nightfall", image: "nightfallIcon", description: "Send out a wave that disorients and nearsights enemies in its path.", gif: "nightfallGif")
        ], agentLevelRewards: [
            "Reward 1", "Reward 2", "Reward 3", "Reward 4", "Reward 5", "Reward 6", "Reward 7", "Reward 8", "Reward 9", "Reward 10"
    ]),
    Agent(id: 21, role: Roles[0], name: "Harbor", profileImage: "https://static.wikia.nocookie.net/valorant/images/f/f3/Harbor_icon.png", artworkImage: "", placeOfOrigin: "India", abilities: [
            Ability(name: "High Tide", image: "highTideIcon", description: "Create a wall of water that slows enemies and blocks vision.", gif: "highTideGif"),
            Ability(name: "Cove", image: "coveIcon", description: "Create a sphere of water that blocks bullets and vision.", gif: "coveGif"),
            Ability(name: "Cascade", image: "cascadeIcon", description: "Send out a wave of water that knocks enemies back and slows them.", gif: "cascadeGif"),
            Ability(name: "Reckoning", image: "reckoningIcon", description: "Send out a wave that debuffs enemies and causes them to become vulnerable.", gif: "reckoningGif")
        ], agentLevelRewards: [
            "Reward 1", "Reward 2", "Reward 3", "Reward 4", "Reward 5", "Reward 6", "Reward 7", "Reward 8", "Reward 9", "Reward 10"
    ]),
    Agent(id: 22, role: Roles[2], name: "Gekko", profileImage: "https://static.wikia.nocookie.net/valorant/images/6/66/Gekko_icon.png", artworkImage: "", placeOfOrigin: "United States", abilities: [
            Ability(name: "Mosh Pit", image: "https://static.wikia.nocookie.net/valorant/images/2/24/Mosh_Pit.png", description: "Throw a blob that sticks to surfaces and explodes after a delay.", gif: "moshPitGif"),
            Ability(name: "Dizzy", image: "https://static.wikia.nocookie.net/valorant/images/8/8d/Dizzy.png", description: "Send out a creature that disorients enemies within its radius.", gif: "dizzyGif"),
            Ability(name: "Wingman", image: "https://static.wikia.nocookie.net/valorant/images/0/09/Wingman.png", description: "Deploy a creature that can find and disable enemies or plant the spike.", gif: "wingmanGif"),
            Ability(name: "Thrash", image: "https://static.wikia.nocookie.net/valorant/images/f/f8/Thrash.png", description: "Activate a powerful creature to attack and disable enemies.", gif: "thrashGif")
        ], agentLevelRewards: [
            "Reward 1", "Reward 2", "Reward 3", "Reward 4", "Reward 5", "Reward 6", "Reward 7", "Reward 8", "Reward 9", "Reward 10"
    ])
]

let Weapons = [
    Weapon(Name: "Classic", Category: "Sidearm", Cost: 0, Skins: [
        Skin(Name: "Default", Images: [])
    ]),
    Weapon(Name: "Shorty", Category: "Sidearm", Cost: 0, Skins: [
        Skin(Name: "Default", Images: [])
    ]),
    Weapon(Name: "Frenzy", Category: "Sidearm", Cost: 0, Skins: [
        Skin(Name: "Default", Images: [])
    ]),
    Weapon(Name: "Ghost", Category: "Sidearm", Cost: 0, Skins: [
        Skin(Name: "Default", Images: [])
    ]),
    Weapon(Name: "Sheriff", Category: "Sidearm", Cost: 0, Skins: [
        Skin(Name: "Default", Images: [])
    ]),
    Weapon(Name: "Golden Gun", Category: "Sidearm", Cost: 0, Skins: [
        Skin(Name: "Default", Images: [])
    ]),
    Weapon(Name: "Snowball Launcher", Category: "Sidearm", Cost: 0, Skins: [
        Skin(Name: "Default", Images: [])
    ]),
    Weapon(Name: "Stinger", Category: "SMG", Cost: 0, Skins: [
        Skin(Name: "Default", Images: [])
    ]),
    Weapon(Name: "Spectre", Category: "SMG", Cost: 0, Skins: [
        Skin(Name: "Default", Images: [])
    ]),
    Weapon(Name: "Bucky", Category: "Shotgun", Cost: 0, Skins: [
        Skin(Name: "Default", Images: [])
    ]),
    Weapon(Name: "Judge", Category: "Shotgun", Cost: 0, Skins: [
        Skin(Name: "Default", Images: [])
    ]),
    Weapon(Name: "Bulldog", Category: "Rifle", Cost: 0, Skins: [
        Skin(Name: "Default", Images: [])
    ]),
    Weapon(Name: "Guardian", Category: "Rifle", Cost: 0, Skins: [
        Skin(Name: "Default", Images: [])
    ]),
    Weapon(Name: "Phantom", Category: "Rifle", Cost: 0, Skins: [
        Skin(Name: "Default", Images: [])
    ]),
    Weapon(Name: "Vandal", Category: "Rifle", Cost: 0, Skins: [
        Skin(Name: "Default", Images: [])
    ]),
    Weapon(Name: "Marshal", Category: "Sniper Rifle", Cost: 0, Skins: [
        Skin(Name: "Default", Images: [])
    ]),
    Weapon(Name: "Outlaw", Category: "Sniper Rifle", Cost: 0, Skins: [
        Skin(Name: "Default", Images: [])
    ]),
    Weapon(Name: "Operator", Category: "Sniper Rifle", Cost: 0, Skins: [
        Skin(Name: "Default", Images: [])
    ]),
    Weapon(Name: "Ares", Category: "Machine Gun", Cost: 0, Skins: [
        Skin(Name: "Default", Images: [])
    ]),
    Weapon(Name: "Odin", Category: "Machine Gun", Cost: 0, Skins: [
        Skin(Name: "Default", Images: [])
    ]),
    Weapon(Name: "Melee", Category: "Melee", Cost: 0, Skins: [
        Skin(Name: "Default", Images: [])
    ])
]

let Events: [TimelineEvent] = [
    TimelineEvent(id: 1, title: "First Light", yearsAfterFirstLight: 0, description: "A global event, soon after which the corporation 'Kingdom' discovered Radianite. This event led to rapid and incredible changes across the globe, including advancements in science and technology, vast changes in everyday life and society, and the appearance of Radiants: gifted individuals with hypernatural powers. Soon after this event, Kingdom rapidly rose in power due to their expert harnessing of radianite and its properties, becoming a megacorporation with near-universal influence. Most elements in VALORANT's world that differ greatly from today's real world can be traced back to this event.Some theories place First Light at the point of divergence between the two Earths as well. While hints that could be interpreted to support this have been dropped recently, the theory still remains unconfirmed.")
    ]
