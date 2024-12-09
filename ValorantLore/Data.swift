//
//  Data.swift
//  ValorantLore
//
//  Created by ozpyn on 12/7/24.
//
//  Note: I don't think storing data like this is good practice, but I dont have the patience to set up a rest API.

import SwiftUI

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
    ]),
    Agent(id: 2, role: Roles[0], name: "Viper", profileImage: "https://static.wikia.nocookie.net/valorant/images/5/5f/Viper_icon.png", artworkImage: "https://static.wikia.nocookie.net/valorant/images/8/85/Viper_Artwork_Full.png", placeOfOrigin: "United States", abilities: [
        Ability(name: "Toxic Screen", image: "https://static.wikia.nocookie.net/valorant/images/c/cd/Toxic_Screen.png", description: "Deploy a long line of poison gas emitters.", gif: "https://staticg.sportskeeda.com/editor/2022/06/2a054-16541528080639-1920.jpg"),
        Ability(name: "Poison Cloud", image: "https://static.wikia.nocookie.net/valorant/images/8/81/Poison_Cloud.png", description: "Deploy a cloud of toxic gas that can be reactivated.", gif: "https://static1.thegamerimages.com/wordpress/wp-content/uploads/2020/07/poison-cloud.jpg"),
        Ability(name: "Snake Bite", image: "https://static.wikia.nocookie.net/valorant/images/a/a2/Snake_Bite.png", description: "Launch a projectile that creates a poisonous zone.", gif: "https://static1.thegamerimages.com/wordpress/wp-content/uploads/2020/07/snake-bite-2.jpg"),
        Ability(name: "Viper's Pit", image: "https://static.wikia.nocookie.net/valorant/images/c/cb/Viper%27s_Pit.png", description: "Create a massive toxic cloud that damages and disorients enemies.", gif: "https://cdn.thespike.gg/*Luke%25202.0%2Fviper_abilities_vipers_pit_ultimate_1696926900261.jpg")
    ]),
    Agent(id: 3, role: Roles[0], name: "Omen", profileImage: "https://static.wikia.nocookie.net/valorant/images/b/b0/Omen_icon.png", artworkImage: "https://static.wikia.nocookie.net/valorant/images/0/0e/Omen_Artwork_Full.png", placeOfOrigin: "Unknown", abilities: [
        Ability(name: "Shrouded Step", image: "https://static.wikia.nocookie.net/valorant/images/8/80/Shrouded_Step.png", description: "Teleport to a nearby location.", gif: "https://news.codashop.com/ph/wp-content/uploads/sites/5/2023/05/Shrouded-steps.png"),
        Ability(name: "Paranoia", image: "https://static.wikia.nocookie.net/valorant/images/8/8d/Paranoia.png", description: "Send out a shadowy projectile that blinds and deafens enemies.", gif: "https://assetsio.gnwcdn.com/omen-blind.jpg"),
        Ability(name: "Dark Cover", image: "https://static.wikia.nocookie.net/valorant/images/2/2c/Dark_Cover.png", description: "Deploy a sphere of shadow that can be shaped and thrown.", gif: "https://us-tuna-sounds-images.voicemod.net/c403a93c-af90-47b5-9279-3fdbce3d90fe.jpg"),
        Ability(name: "From the Shadows", image: "https://static.wikia.nocookie.net/valorant/images/0/0e/From_the_Shadows.png", description: "Teleport to a chosen location after being unseen for a time.", gif: "https://cdn.shopify.com/s/files/1/0022/8668/2163/files/From_the_Shadows_X_seven_ultimate_orbs_1024x1024.png")
    ]),
    Agent(id: 4, role: Roles[3], name: "Killjoy", profileImage: "https://static.wikia.nocookie.net/valorant/images/1/15/Killjoy_icon.png", artworkImage: "https://static.wikia.nocookie.net/valorant/images/8/81/Killjoy_Artwork_Full.png", placeOfOrigin: "Germany", abilities: [
        Ability(name: "Nanoswarm", image: "https://static.wikia.nocookie.net/valorant/images/4/4d/Nanoswarm.png", description: "Deploy a grenade that creates an area of damage and slows enemies.", gif: "https://beebom.com/wp-content/uploads/2024/04/Killjoy-Nanoswarm.jpg"),
        Ability(name: "Alarmbot", image: "https://static.wikia.nocookie.net/valorant/images/d/d9/Alarmbot.png", description: "Deploy a bot that alerts the user of enemies within its radius.", gif: "https://staticg.sportskeeda.com/editor/2021/01/eb750-16109524795478-800.jpg"),
        Ability(name: "Turret", image: "https://static.wikia.nocookie.net/valorant/images/3/32/Turret.png", description: "Deploy a turret that tracks and shoots enemies.", gif: "https://www.pcgamesn.com/wp-content/uploads/2020/08/killjoy-turret-broll-edit.jpg"),
        Ability(name: "Lockdown", image: "https://static.wikia.nocookie.net/valorant/images/7/7c/Lockdown.png", description: "Deploy a large emitter that slows and disables enemies within its radius.", gif: "https://beebom.com/wp-content/uploads/2024/04/Killjoy-Lockdown.jpg")
    ]),
    Agent(id: 5, role: Roles[3], name: "Cypher", profileImage: "https://static.wikia.nocookie.net/valorant/images/8/88/Cypher_icon.png", artworkImage: "https://static.wikia.nocookie.net/valorant/images/5/55/Cypher_Artwork_Full.png", placeOfOrigin: "Morocco", abilities: [
        Ability(name: "Spycam", image: "https://static.wikia.nocookie.net/valorant/images/3/3f/Spycam.png", description: "Deploy a camera to scout out enemy locations.", gif: "https://fbi.cults3d.com/uploaders/21595173/illustration-file/06a3b477-9cc2-46e4-82e8-5f35bfa7c897/120820-maintenant-quoi-amp_main_img-1.png"),
        Ability(name: "Trapwire", image: "https://static.wikia.nocookie.net/valorant/images/0/01/Trapwire.png", description: "Place a tripwire that slows and reveals enemies.", gif: "https://assetsio.gnwcdn.com/cypher-tripwire-2.jpg"),
        Ability(name: "Cyber Cage", image: "https://static.wikia.nocookie.net/valorant/images/7/7c/Cyber_Cage.png", description: "Deploy a cage that slows and obstructs vision.", gif: "https://static0.gamerantimages.com/wordpress/wp-content/uploads/2020/05/Cypher-CyberCage-1.jpg"),
        Ability(name: "Neural Theft", image: "https://static.wikia.nocookie.net/valorant/images/4/42/Neural_Theft.png", description: "Extract the location of all enemies after killing one.", gif: "https://blix.gg/wp-content/uploads/2024/10/b8c52c01335bbd51.png")
    ]),
    Agent(id: 6, role: Roles[2], name: "Sova", profileImage: "https://static.wikia.nocookie.net/valorant/images/4/49/Sova_icon.png", artworkImage: "https://static.wikia.nocookie.net/valorant/images/c/c5/Sova_Artwork_Full.png", placeOfOrigin: "Russia", abilities: [
        Ability(name: "Owl Drone", image: "https://static.wikia.nocookie.net/valorant/images/1/1d/Owl_Drone.png", description: "Deploy a drone that provides vision and can tag enemies.", gif: "https://media.assettype.com/afkgaming%2F2023-05%2F49de08ad-6fc0-465e-9e50-82f41c02a9e5%2FCover_Image___Sova_Owl_Drone_Secret_Valorant_Trick_To_Gather_More_Information.jpg"),
        Ability(name: "Recon Bolt", image: "https://static.wikia.nocookie.net/valorant/images/3/39/Recon_Bolt.png", description: "Fire an arrow that reveals enemy locations.", gif: "https://assetsio.gnwcdn.com/sova-recon-arrow.jpg"),
        Ability(name: "Shock Bolt", image: "https://static.wikia.nocookie.net/valorant/images/f/fe/Shock_Bolt.png", description: "Fire an electric arrow that deals damage.", gif: "https://gamelevate.com/wp-content/uploads/2022/11/Valorant-Sova-Shock-Bolt.jpg"),
        Ability(name: "Hunter's Fury", image: "https://static.wikia.nocookie.net/valorant/images/9/90/Hunter%27s_Fury.png", description: "Launch a series of powerful energy blasts to scan and damage enemies.", gif: "https://static0.gamerantimages.com/wordpress/wp-content/uploads/2020/05/Sova-Fury-2.jpg")
    ]),
    Agent(id: 7, role: Roles[3], name: "Sage", profileImage: "https://static.wikia.nocookie.net/valorant/images/7/74/Sage_icon.png", artworkImage: "https://static.wikia.nocookie.net/valorant/images/7/7e/Sage_Artwork_Full.png", placeOfOrigin: "China", abilities: [
        Ability(name: "Barrier Orb", image: "https://static.wikia.nocookie.net/valorant/images/1/10/Barrier_Orb.png", description: "Place a solid wall that blocks movement and vision.", gif: "https://images.1v9.gg/how%20to%20play%20sage-3766453cf25d.webp"),
        Ability(name: "Slow Orb", image: "https://static.wikia.nocookie.net/valorant/images/b/bb/Slow_Orb.png", description: "Create a slowing field that hinders enemy movement.", gif: "https://news.codashop.com/ph/wp-content/uploads/sites/5/2023/05/Slow-Orb.png"),
        Ability(name: "Healing Orb", image: "https://static.wikia.nocookie.net/valorant/images/e/ea/Healing_Orb.png", description: "Heal yourself or an ally.", gif: "https://playerassist.com/wp-content/uploads/2020/04/healing-orb.jpg"),
        Ability(name: "Resurrection", image: "https://static.wikia.nocookie.net/valorant/images/e/e1/Resurrection.png", description: "Revive a dead teammate.", gif: "https://www.dexerto.com/cdn-image/wp-content/uploads/2020/05/sage-revive-valorant.jpg")
    ]),
    Agent(id: 9, role: Roles[1], name: "Phoenix", profileImage: "https://static.wikia.nocookie.net/valorant/images/1/14/Phoenix_icon.png", artworkImage: "https://static.wikia.nocookie.net/valorant/images/9/90/Phoenix_Artwork_Full.png", placeOfOrigin: "United Kingdom", abilities: [
        Ability(name: "Blaze", image: "https://static.wikia.nocookie.net/valorant/images/b/bd/Blaze.png", description: "Create a wall of fire that blocks vision.", gif: "https://platform.polygon.com/wp-content/uploads/sites/2/chorus/uploads/chorus_asset/file/19877144/Phoenix_wall.jpg"),
        Ability(name: "Curveball", image: "https://static.wikia.nocookie.net/valorant/images/3/30/Curveball.png", description: "Flashbang that curves around corners.", gif: "https://files.bo3.gg/uploads/image/23327/image/webp-3ce65739c680bf61667dc9510de3968f.webp"),
        Ability(name: "Hot Hands", image: "https://static.wikia.nocookie.net/valorant/images/7/75/Hot_Hands.png", description: "Heal yourself or damage enemies with a fireball.", gif: "https://files.bo3.gg/uploads/image/23328/image/webp-44a24bae4de7c3c3a82ae55c889d7a7b.webp"),
        Ability(name: "Run It Back", image: "https://static.wikia.nocookie.net/valorant/images/f/fd/Run_it_Back.png", description: "Resurrect at your original location after death.", gif: "https://external-preview.redd.it/LxSDWSTp4dPe6MD0dqzIo7I-1JLYhMEj7Zk7PbhmUl8.png")
    ]),
    Agent(id: 10, role: Roles[1], name: "Jett", profileImage: "https://static.wikia.nocookie.net/valorant/images/3/35/Jett_icon.png", artworkImage: "https://static.wikia.nocookie.net/valorant/images/e/e3/Jett_Artwork_Full.png", placeOfOrigin: "South Korea", abilities: [
        Ability(name: "Cloudburst", image: "https://static.wikia.nocookie.net/valorant/images/b/b9/Cloudburst.png", description: "A quick burst of wind to obscure vision.", gif: "https://www.mandatory.gg/wp-content/uploads/valorant-jett-skill-averse-utilisation.png"),
        Ability(name: "Updraft", image: "https://static.wikia.nocookie.net/valorant/images/d/dc/Updraft.png", description: "A vertical boost to gain higher ground.", gif: "https://i.ytimg.com/vi/3K75QzDDI-8/maxresdefault.jpg"),
        Ability(name: "Tailwind", image: "https://static.wikia.nocookie.net/valorant/images/b/bc/Tailwind.png", description: "A quick dash in the direction you're moving.", gif: "https://blix.gg/wp-content/uploads/2024/10/2b29a665f78dfe43.jpeg"),
        Ability(name: "Blade Storm", image: "https://static.wikia.nocookie.net/valorant/images/0/06/Blade_Storm.png", description: "Summons a set of throwing blades.", gif: "https://staticg.sportskeeda.com/editor/2023/07/94246-16901153035210-1920.jpg")
    ]),
    Agent(id: 11, role: Roles[1], name: "Reyna", profileImage: "https://static.wikia.nocookie.net/valorant/images/b/b0/Reyna_icon.png", artworkImage: "https://static.wikia.nocookie.net/valorant/images/3/36/Reyna_Artwork_Full.png", placeOfOrigin: "Mexico", abilities: [
        Ability(name: "Leer", image: "https://static.wikia.nocookie.net/valorant/images/3/3e/Leer.png", description: "Send out a glowing orb that nearsighted enemies.", gif: "leerGif"),
        Ability(name: "Dismiss", image: "https://static.wikia.nocookie.net/valorant/images/0/0a/Dismiss.png", description: "Consume a soul orb to become invulnerable and reposition.", gif: "dismissGif"),
        Ability(name: "Devour", image: "https://static.wikia.nocookie.net/valorant/images/3/3d/Devour.png", description: "Consume a soul orb to heal yourself.", gif: "devourGif"),
        Ability(name: "Empress", image: "https://static.wikia.nocookie.net/valorant/images/1/12/Empress.png", description: "Activate to enhance your combat abilities, including fire rate.", gif: "empressGif")
    ]),
    Agent(id: 12, role: Roles[1], name: "Raze", profileImage: "https://static.wikia.nocookie.net/valorant/images/9/9c/Raze_icon.png", artworkImage: "https://static.wikia.nocookie.net/valorant/images/6/6f/Raze_Artwork_Full.png", placeOfOrigin: "Brazil", abilities: [
        Ability(name: "Boom Bot", image: "https://static.wikia.nocookie.net/valorant/images/f/ff/Boom_Bot.png", description: "Deploy a bot that tracks enemies and explodes on contact.", gif: "boomBotGif"),
        Ability(name: "Blast Pack", image: "https://static.wikia.nocookie.net/valorant/images/e/e1/Blast_Pack.png", description: "Throw a satchel charge that can be detonated remotely for mobility or damage.", gif: "blastPackGif"),
        Ability(name: "Paint Shells", image: "https://static.wikia.nocookie.net/valorant/images/3/30/Paint_Shells.png", description: "Throw a cluster of grenades that explode multiple times.", gif: "paintShellsGif"),
        Ability(name: "Showstopper", image: "https://static.wikia.nocookie.net/valorant/images/1/18/Showstopper.png", description: "Deploy a powerful rocket launcher that deals massive damage.", gif: "showstopperGif")
    ]),
    Agent(id: 13, role: Roles[2], name: "Breach", profileImage: "https://static.wikia.nocookie.net/valorant/images/5/53/Breach_icon.png", artworkImage: "https://static.wikia.nocookie.net/valorant/images/2/24/Breach_Artwork_Full.png", placeOfOrigin: "Sweden", abilities: [
        Ability(name: "Aftershock", image: "https://static.wikia.nocookie.net/valorant/images/3/32/Aftershock.png", description: "Fire a projectile that causes an explosion.", gif: "aftershockGif"),
        Ability(name: "Flashpoint", image: "https://static.wikia.nocookie.net/valorant/images/f/f2/Flashpoint.png", description: "Flash enemies through walls with a powerful burst.", gif: "flashpointGif"),
        Ability(name: "Fault Line", image: "https://static.wikia.nocookie.net/valorant/images/0/09/Fault_Line.png", description: "Send out a line that disorients and knocks up enemies.", gif: "faultLineGif"),
        Ability(name: "Rolling Thunder", image: "https://static.wikia.nocookie.net/valorant/images/7/7a/Rolling_Thunder.png", description: "Send out a powerful shockwave that stuns enemies.", gif: "rollingThunderGif")
    ]),
    Agent(id: 14, role: Roles[2], name: "Skye", profileImage: "https://static.wikia.nocookie.net/valorant/images/3/33/Skye_icon.png", artworkImage: "https://static.wikia.nocookie.net/valorant/images/7/7f/Skye_Artwork_Full.png", placeOfOrigin: "Australia", abilities: [
        Ability(name: "Regrowth", image: "https://static.wikia.nocookie.net/valorant/images/4/47/Regrowth.png", description: "Heal all allies in a large radius around you.", gif: "regrowthGif"),
        Ability(name: "Guiding Light", image: "https://static.wikia.nocookie.net/valorant/images/3/37/Guiding_Light.png", description: "Send out a flashbang that blinds enemies.", gif: "guidingLightGif"),
        Ability(name: "Trailblazer", image: "https://static.wikia.nocookie.net/valorant/images/8/89/Trailblazer.png", description: "Send out a Tasmanian tiger that stuns enemies.", gif: "trailblazerGif"),
        Ability(name: "Seekers", image: "https://static.wikia.nocookie.net/valorant/images/a/a9/Seekers.png", description: "Send out 3 seekers who track down enemies", gif: "ultimateHealGif")
    ]),
    Agent(id: 15, role: Roles[1], name: "Yoru", profileImage: "https://static.wikia.nocookie.net/valorant/images/d/d4/Yoru_icon.png", artworkImage: "https://static.wikia.nocookie.net/valorant/images/1/1e/Yoru_Artwork_Full.png", placeOfOrigin: "Japan", abilities: [
        Ability(name: "Fakeout", image: "https://static.wikia.nocookie.net/valorant/images/b/b1/Fakeout.png", description: "Create a fake clone to distract enemies.", gif: "fakeoutGif"),
        Ability(name: "Gatecrash", image: "https://static.wikia.nocookie.net/valorant/images/f/f4/Gatecrash.png", description: "Teleport to a location through a rift.", gif: "gatecrashGif"),
        Ability(name: "Blindside", image: "https://static.wikia.nocookie.net/valorant/images/2/2f/Blindside.png", description: "Throw a flashbang that blinds enemies.", gif: "blindsideGif"),
        Ability(name: "Dimensional Drift", image: "https://static.wikia.nocookie.net/valorant/images/7/70/Dimensional_Drift.png", description: "Enter another dimension to become invisible and untouchable.", gif: "dimensionalDriftGif")
    ]),
    Agent(id: 16, role: Roles[0], name: "Astra", profileImage: "https://static.wikia.nocookie.net/valorant/images/0/08/Astra_icon.png", artworkImage: "https://static.wikia.nocookie.net/valorant/images/e/e0/Astra_Artwork_Full.png", placeOfOrigin: "Ghana", abilities: [
        Ability(name: "Nebula/Dissipate", image: "https://static.wikia.nocookie.net/valorant/images/8/8b/Nebula_-_Dissipate.png", description: "Turn star into a smoke screen that blocks vision.", gif: "nebulaGif"),
        Ability(name: "Gravity Well", image: "https://static.wikia.nocookie.net/valorant/images/4/41/Gravity_Well.png", description: "Create a gravitational pull that pulls enemies in and disorients them.", gif: "gravityWellGif"),
        Ability(name: "Nova Pulse", image: "https://static.wikia.nocookie.net/valorant/images/5/51/Nova_Pulse.png", description: "Activate a star to create a pulse that concusses enemies.", gif: "novaPulseGif"),
        Ability(name: "Cosmic Divide", image: "https://static.wikia.nocookie.net/valorant/images/f/f4/Cosmic_Divide.png", description: "Divide the world to gain a tactical advantage.", gif: "astralFormGif")
    ]),
    Agent(id: 17, role: Roles[2], name: "KAY/O", profileImage: "https://static.wikia.nocookie.net/valorant/images/f/f0/KAYO_icon.png", artworkImage: "https://static.wikia.nocookie.net/valorant/images/5/57/KAYO_Artwork_Full.png", placeOfOrigin: "United States", abilities: [
        Ability(name: "FRAG/ment", image: "https://static.wikia.nocookie.net/valorant/images/4/46/FRAG-ment.png", description: "Throw a grenade that explodes multiple times, dealing damage to everyone in radius.", gif: "fragMentGif"),
        Ability(name: "FLASH/drive", image: "https://static.wikia.nocookie.net/valorant/images/1/13/FLASH-drive.png", description: "Throw a flashbang that blinds enemies.", gif: "flashDriveGif"),
        Ability(name: "ZERO/point", image: "https://static.wikia.nocookie.net/valorant/images/2/2a/ZERO-point.png", description: "Deploy a suppressor knife to disable enemy abilities.", gif: "suppressorGif"),
        Ability(name: "NULL/cmd", image: "https://static.wikia.nocookie.net/valorant/images/8/8a/NULL-cmd.png", description: "Activate an EMP that disables enemy abilities in its radius.", gif: "nullCmdGif")
    ]),
    Agent(id: 18, role: Roles[3], name: "Chamber", profileImage: "https://static.wikia.nocookie.net/valorant/images/0/09/Chamber_icon.png", artworkImage: "https://static.wikia.nocookie.net/valorant/images/5/5d/Chamber_Artwork_Full.png", placeOfOrigin: "France", abilities: [
        Ability(name: "Trademark", image: "https://static.wikia.nocookie.net/valorant/images/3/3b/Trademark.png", description: "Place a trap that slows enemies in its proximity.", gif: "trademarkGif"),
        Ability(name: "Headhunter", image: "https://static.wikia.nocookie.net/valorant/images/0/06/Headhunter.png", description: "Use a special sidearm with high damage.", gif: "headhunterGif"),
        Ability(name: "Rendezvous", image: "https://static.wikia.nocookie.net/valorant/images/8/83/Rendezvous.png", description: "Place teleportation anchors to quickly reposition.", gif: "rendezvousGif"),
        Ability(name: "Tour De Force", image: "https://static.wikia.nocookie.net/valorant/images/e/eb/Tour_De_Force.png", description: "Activate a powerful sniper rifle that can slow and eliminate enemies.", gif: "tourDeForceGif")
    ]),
    Agent(id: 19, role: Roles[1], name: "Neon", profileImage: "https://static.wikia.nocookie.net/valorant/images/d/d0/Neon_icon.png", artworkImage: "https://static.wikia.nocookie.net/valorant/images/f/fe/Neon_Artwork_Full.png", placeOfOrigin: "Philippines", abilities: [
            Ability(name: "Relay Bolt", image: "https://static.wikia.nocookie.net/valorant/images/a/ac/Relay_Bolt.png", description: "Throw a bolt that creates a concussive shockwave.", gif: "relayBoltGif"),
            Ability(name: "Fast Lane", image: "https://static.wikia.nocookie.net/valorant/images/e/e7/Fast_Lane.png", description: "Create a tunnel of energy that blocks enemy visuals.", gif: "fastLaneGif"),
            Ability(name: "High Gear", image: "https://static.wikia.nocookie.net/valorant/images/7/7f/High_Gear.png", description: "Activate a sprint boost that increases speed and energy regeneration.", gif: "highGearGif"),
            Ability(name: "Overdrive", image: "https://static.wikia.nocookie.net/valorant/images/a/ab/Overdrive.png", description: "Activate a supercharged state to deal damage with a powerful energy beam.", gif: "overdriveGif")
        ]),
    Agent(id: 20, role: Roles[2], name: "Fade", profileImage: "https://static.wikia.nocookie.net/valorant/images/a/a6/Fade_icon.png", artworkImage: "https://static.wikia.nocookie.net/valorant/images/e/e8/Fade_Artwork_Full.png", placeOfOrigin: "Turkey", abilities: [
            Ability(name: "Seize", image: "https://static.wikia.nocookie.net/valorant/images/1/1f/Seize.png", description: "Throw a projectile that restricts movement of nearby enemies.", gif: "seizeGif"),
            Ability(name: "Haunt", image: "https://static.wikia.nocookie.net/valorant/images/3/37/Haunt.png", description: "Send out a creature that reveals enemies in a radius.", gif: "hauntGif"),
            Ability(name: "Prowler", image: "https://static.wikia.nocookie.net/valorant/images/6/68/Prowler.png", description: "Send out a prowling creature that blinds and deafens enemies.", gif: "prowlerGif"),
            Ability(name: "Nightfall", image: "https://static.wikia.nocookie.net/valorant/images/9/90/Nightfall.png", description: "Send out a wave that disorients and nearsights enemies in its path.", gif: "nightfallGif")
        ]),
    Agent(id: 21, role: Roles[0], name: "Harbor", profileImage: "https://static.wikia.nocookie.net/valorant/images/f/f3/Harbor_icon.png", artworkImage: "https://static.wikia.nocookie.net/valorant/images/5/5c/Harbor_Artwork_Full.png", placeOfOrigin: "India", abilities: [
            Ability(name: "High Tide", image: "https://static.wikia.nocookie.net/valorant/images/4/4a/High_Tide.png", description: "Create a wall of water that slows enemies and blocks vision.", gif: "highTideGif"),
            Ability(name: "Cove", image: "https://static.wikia.nocookie.net/valorant/images/a/ab/Cove.png", description: "Create a sphere of water that blocks bullets and vision.", gif: "coveGif"),
            Ability(name: "Cascade", image: "https://static.wikia.nocookie.net/valorant/images/f/f8/Cascade.png", description: "Send out a wave of water that knocks enemies back and slows them.", gif: "cascadeGif"),
            Ability(name: "Reckoning", image: "https://static.wikia.nocookie.net/valorant/images/2/20/Reckoning.png", description: "EQUIP the full power of your Artifact. FIRE to summon a geyser pool on the ground. Enemy players in the area are targeted by successive geyser strikes. Players caught within a strike are Concussed.", gif: "reckoningGif")
        ]),
    Agent(id: 22, role: Roles[2], name: "Gekko", profileImage: "https://static.wikia.nocookie.net/valorant/images/6/66/Gekko_icon.png", artworkImage: "https://static.wikia.nocookie.net/valorant/images/a/a4/Gekko_Artwork_Full.png", placeOfOrigin: "United States", abilities: [
            Ability(name: "Mosh Pit", image: "https://static.wikia.nocookie.net/valorant/images/2/24/Mosh_Pit.png", description: "Throw a blob that sticks to surfaces and explodes after a delay.", gif: "moshPitGif"),
            Ability(name: "Dizzy", image: "https://static.wikia.nocookie.net/valorant/images/8/8d/Dizzy.png", description: "Send out a creature that disorients enemies within its radius.", gif: "dizzyGif"),
            Ability(name: "Wingman", image: "https://static.wikia.nocookie.net/valorant/images/0/09/Wingman.png", description: "Deploy a creature that can find and disable enemies or plant the spike.", gif: "wingmanGif"),
            Ability(name: "Thrash", image: "https://static.wikia.nocookie.net/valorant/images/f/f8/Thrash.png", description: "Activate a powerful creature to attack and disable enemies.", gif: "thrashGif")
        ]),
    Agent(id: 23, role: Roles[3], name: "Deadlock", profileImage: "https://static.wikia.nocookie.net/valorant/images/e/eb/Deadlock_icon.png", artworkImage: "https://static.wikia.nocookie.net/valorant/images/a/aa/Deadlock_Artwork_Full.png", placeOfOrigin: "Norway", abilities: [
        Ability(name: "GravNet", image: "https://static.wikia.nocookie.net/valorant/images/9/9b/GravNet.png", description: "EQUIP a GravNet grenade. FIRE to throw. ALT FIRE to lob. The GravNet detonates upon landing, forcing any characters caught within to crouch and move slowly.", gif: ""),
        Ability(name: "Sonic Sensor", image: "https://static.wikia.nocookie.net/valorant/images/e/e3/Sonic_Sensor.png", description: "EQUIP a Sonic Sensor. FIRE to deploy. The sensor monitors an area for enemies making sound. It concusses that area if footsteps, weapons fire, or significant noise are detected.", gif: ""),
        Ability(name: "Barrier Mesh", image: "https://static.wikia.nocookie.net/valorant/images/e/ec/Barrier_Mesh.png", description: "EQUIP a Barrier Mesh disc. FIRE to throw forward. Upon landing, the disc generates barriers from the origin point that block character movement.", gif: ""),
        Ability(name: "Annihilation", image: "https://static.wikia.nocookie.net/valorant/images/b/b2/Annihilation.png", description: "EQUIP a Nanowire Accelerator. FIRE to unleash a pulse of nanowires that captures the first enemy contacted. The cocooned enemy is pulled along a nanowire path and will die unless they are freed. The nanowire cocoon is destructible.", gif: "")]),
    Agent(id: 24, role: Roles[1], name: "Iso", profileImage: "https://static.wikia.nocookie.net/valorant/images/b/b7/Iso_icon.png", artworkImage: "https://static.wikia.nocookie.net/valorant/images/5/5f/Iso_Artwork_Full.png", placeOfOrigin: "China", abilities: [
        Ability(name: "Contingency", image: "https://static.wikia.nocookie.net/valorant/images/7/77/Contingency.png", description: "EQUIP to assemble prismatic energy. FIRE to push an indestructible wall of energy forward that blocks bullets.", gif: ""),
        Ability(name: "Undercut", image: "https://static.wikia.nocookie.net/valorant/images/8/84/Undercut.png", description: "EQUIP a molecular bolt. Fire to throw it forward, briefly applying Vulnerable to all players it touches. The bolt can pass through solid objects, including walls.", gif: ""),
        Ability(name: "Double Tap", image: "https://static.wikia.nocookie.net/valorant/images/7/7c/Double_Tap.png", description: "INSTANTLY start channeling your focus. Once focused: gain a shield which absorbs one instance of damage from any source, and enter a flow state during which downed enemies you kill or damage spawn an energy orb. Shooting this orb refreshes your flow state and your existing shield, or grants another.", gif: ""),
        Ability(name: "Kill Contract", image: "https://static.wikia.nocookie.net/valorant/images/6/6a/Kill_Contract.png", description: "EQUIP an interdimensional arena. FIRE to hurl a column of energy through the battlefield, pulling you and the first enemy hit into the arena. You and your opponent duel to the death.", gif: "")]),
    Agent(id: 25, role: Roles[0], name: "Clove", profileImage: "https://static.wikia.nocookie.net/valorant/images/3/30/Clove_icon.png", artworkImage: "https://static.wikia.nocookie.net/valorant/images/0/0b/Clove_Artwork_Full.png", placeOfOrigin: "United Kingdom", abilities: [
        Ability(name: "Pick-me-up", image: "https://static.wikia.nocookie.net/valorant/images/5/52/Pick-me-up.png", description: "ACTIVATE to absorb the life force of a fallen enemy that Clove damaged or killed, gaining haste and temporary health.", gif: ""),
        Ability(name: "Meddle", image: "https://static.wikia.nocookie.net/valorant/images/c/c2/Meddle.png", description: "EQUIP a fragment of immortality essence. FIRE to throw the fragment, which erupts after a short delay and temporarily Decays all targets caught inside.", gif: ""),
        Ability(name: "Ruse", image: "https://static.wikia.nocookie.net/valorant/images/6/63/Ruse.png", description: "EQUIP a view of the battlefield. FIRE to set the locations where Clove’s clouds will settle. ALT FIRE to confirm, launching clouds that block vision in the chosen areas. Clove can use this ability after death.", gif: ""),
        Ability(name: "Not Dead Yet", image: "https://static.wikia.nocookie.net/valorant/images/7/73/Not_Dead_Yet.png", description: "After dying, ACTIVATE to resurrect. Once resurrected, Clove must earn a kill or a damaging assist within a set time or they will die. REACTIVATE to cancel early.", gif: "")]),
    Agent(id: 26, role: Roles[3], name: "Vyse", profileImage: "https://static.wikia.nocookie.net/valorant/images/2/21/Vyse_icon.png", artworkImage: "https://static.wikia.nocookie.net/valorant/images/d/d4/Vyse_Artwork_Full.png", placeOfOrigin: "Unknown", abilities: [
        Ability(name: "Razorvine", image: "https://static.wikia.nocookie.net/valorant/images/6/66/Razorvine.png", description: "EQUIP a nest of liquid metal. FIRE to launch. Upon landing, the nest becomes invisible. When ACTIVATED, it sprawls out into a large razorvine nest which slows and damages all players who move through it.", gif: ""),
        Ability(name: "Shear", image: "https://static.wikia.nocookie.net/valorant/images/a/a2/Shear.png", description: "EQUIP filaments of liquid metal. FIRE to place a hidden wall trap. When an enemy crosses, an indestructible wall bursts from the ground behind them. The wall lasts for a brief time before dissipating.", gif: ""),
        Ability(name: "Arc Rose", image: "https://static.wikia.nocookie.net/valorant/images/3/38/Arc_Rose.png", description: "EQUIP an Arc Rose. Target a surface and FIRE to place a stealthed Arc Rose, or ALT FIRE to place the Arc Rose through it. REUSE to blind all players looking at it. This ability can be picked up to be REDEPLOYED.", gif: ""),
        Ability(name: "Steel Garden", image: "https://static.wikia.nocookie.net/valorant/images/c/cb/Steel_Garden.png", description: "EQUIP a bramble of liquid metal. FIRE to send the metal erupting from you as a torrent of metal thorns, JAMMING enemy primary weapons after a brief windup.", gif: "")])
]

let Weapons = [
    Weapon(Name: "Classic", Category: "Sidearm", Cost: 0, Skins: [
        Skin(Name: "Default", Images: ["https://static.wikia.nocookie.net/valorant/images/5/57/Classic.png"])
    ]),
    Weapon(Name: "Shorty", Category: "Sidearm", Cost: 200, Skins: [
        Skin(Name: "Default", Images: ["https://static.wikia.nocookie.net/valorant/images/7/77/Shorty.png"])
    ]),
    Weapon(Name: "Frenzy", Category: "Sidearm", Cost: 400, Skins: [
        Skin(Name: "Default", Images: ["https://static.wikia.nocookie.net/valorant/images/f/f1/Frenzy.png"])
    ]),
    Weapon(Name: "Ghost", Category: "Sidearm", Cost: 500, Skins: [
        Skin(Name: "Default", Images: ["https://static.wikia.nocookie.net/valorant/images/a/ab/Ghost.png"])
    ]),
    Weapon(Name: "Sheriff", Category: "Sidearm", Cost: 800, Skins: [
        Skin(Name: "Default", Images: ["https://static.wikia.nocookie.net/valorant/images/3/3e/Sheriff.png"])
    ]),
    Weapon(Name: "Golden Gun", Category: "Sidearm", Cost: 0, Skins: [
        Skin(Name: "Default", Images: ["https://static.wikia.nocookie.net/valorant/images/2/23/GoldenGun.png"])
    ]),
    Weapon(Name: "Snowball Launcher", Category: "Sidearm", Cost: 0, Skins: [
        Skin(Name: "Default", Images: ["https://static.wikia.nocookie.net/valorant/images/d/dc/SnowballLauncher_icon.png"])
    ]),
    Weapon(Name: "Stinger", Category: "SMG", Cost: 1000, Skins: [
        Skin(Name: "Default", Images: ["https://static.wikia.nocookie.net/valorant/images/b/b6/Stinger.png"])
    ]),
    Weapon(Name: "Spectre", Category: "SMG", Cost: 1600, Skins: [
        Skin(Name: "Default", Images: ["https://static.wikia.nocookie.net/valorant/images/9/90/Spectre.png"])
    ]),
    Weapon(Name: "Bucky", Category: "Shotgun", Cost: 900, Skins: [
        Skin(Name: "Default", Images: ["https://static.wikia.nocookie.net/valorant/images/e/eb/Bucky.png"])
    ]),
    Weapon(Name: "Judge", Category: "Shotgun", Cost: 1500, Skins: [
        Skin(Name: "Default", Images: ["https://static.wikia.nocookie.net/valorant/images/8/8a/Judge.png"])
    ]),
    Weapon(Name: "Bulldog", Category: "Rifle", Cost: 2100, Skins: [
        Skin(Name: "Default", Images: ["https://static.wikia.nocookie.net/valorant/images/0/07/Bulldog.png"])
    ]),
    Weapon(Name: "Guardian", Category: "Rifle", Cost: 2700, Skins: [
        Skin(Name: "Default", Images: ["https://static.wikia.nocookie.net/valorant/images/f/fd/Guardian.png"])
    ]),
    Weapon(Name: "Phantom", Category: "Rifle", Cost: 2900, Skins: [
        Skin(Name: "Default", Images: ["https://static.wikia.nocookie.net/valorant/images/e/ec/Phantom.png"])
    ]),
    Weapon(Name: "Vandal", Category: "Rifle", Cost: 2900, Skins: [
        Skin(Name: "Default", Images: ["https://static.wikia.nocookie.net/valorant/images/5/56/Vandal.png"])
    ]),
    Weapon(Name: "Marshall", Category: "Sniper Rifle", Cost: 1100, Skins: [
        Skin(Name: "Default", Images: ["https://static.wikia.nocookie.net/valorant/images/b/b9/Marshal.png"])
    ]),
    Weapon(Name: "Outlaw", Category: "Sniper Rifle", Cost: 2400, Skins: [
        Skin(Name: "Default", Images: ["https://static.wikia.nocookie.net/valorant/images/f/f0/Outlaw.png"]),
        Skin(Name: "Aperture", Images: ["https://static.wikia.nocookie.net/valorant/images/8/86/Aperture_Outlaw.png"]),
        Skin(Name: "Ego", Images: ["https://static.wikia.nocookie.net/valorant/images/a/ae/Ego_Outlaw.png", "https://static.wikia.nocookie.net/valorant/images/4/41/Ego_Outlaw_Red.png", "https://static.wikia.nocookie.net/valorant/images/0/04/Ego_Outlaw_Tan.png", "https://static.wikia.nocookie.net/valorant/images/0/00/Ego_Outlaw_Pink.png"]),
        Skin(Name: "Holomoku", Images: ["https://static.wikia.nocookie.net/valorant/images/b/b3/Holomoku_Outlaw.png", "https://static.wikia.nocookie.net/valorant/images/e/ed/Holomoku_Outlaw_Deep_Sea.png"]),
        Skin(Name: "Prism//Reloaded", Images: ["https://static.wikia.nocookie.net/valorant/images/4/43/PrismReloaded_Outlaw.png", "https://static.wikia.nocookie.net/valorant/images/8/8f/PrismReloaded_Outlaw_Orange.png", "https://static.wikia.nocookie.net/valorant/images/e/e9/PrismReloaded_Outlaw_Pink.png", "https://static.wikia.nocookie.net/valorant/images/5/5d/PrismReloaded_Outlaw_Green.png"]),
        Skin(Name: "RGX 11z Pro", Images: ["https://static.wikia.nocookie.net/valorant/images/0/05/RGX_11z_Pro_Outlaw.png", "https://static.wikia.nocookie.net/valorant/images/d/d1/RGX_11z_Pro_Outlaw_Red.png", "https://static.wikia.nocookie.net/valorant/images/d/d7/RGX_11z_Pro_Outlaw_Blue.png", "https://static.wikia.nocookie.net/valorant/images/4/42/RGX_11z_Pro_Outlaw_Yellow.png"]),
        Skin(Name: "Aquatica", Images: ["https://static.wikia.nocookie.net/valorant/images/1/18/Aquatica_Outlaw.png"]),
        Skin(Name: "Cloudweaver", Images: ["https://static.wikia.nocookie.net/valorant/images/c/c2/Cloudweaver_Outlaw.png"]),
        Skin(Name: "Overlay", Images: ["https://static.wikia.nocookie.net/valorant/images/d/d5/Overlay_Outlaw.png", "https://static.wikia.nocookie.net/valorant/images/e/eb/Overlay_Outlaw_Black.png", "https://static.wikia.nocookie.net/valorant/images/4/47/Overlay_Outlaw_Pink.png", "https://static.wikia.nocookie.net/valorant/images/0/0e/Overlay_Outlaw_Grey.png"])
    ]),
    Weapon(Name: "Operator", Category: "Sniper Rifle", Cost: 4500, Skins: [
        Skin(Name: "Default", Images: ["https://static.wikia.nocookie.net/valorant/images/1/17/Operator.png"])
    ]),
    Weapon(Name: "Ares", Category: "Machine Gun", Cost: 1600, Skins: [
        Skin(Name: "Default", Images: ["https://static.wikia.nocookie.net/valorant/images/0/05/Ares.png"])
    ]),
    Weapon(Name: "Odin", Category: "Machine Gun", Cost: 3200, Skins: [
        Skin(Name: "Default", Images: ["https://static.wikia.nocookie.net/valorant/images/5/58/Odin.png"])
    ]),
    Weapon(Name: "Melee", Category: "Melee", Cost: 0, Skins: [
        Skin(Name: "Default", Images: ["https://static.wikia.nocookie.net/valorant/images/8/8f/Melee.png"])
    ])
]

let Events: [TimelineEvent] = [
    TimelineEvent(id: 1, title: "First Light", yearsAfterFirstLight: 0, description: "A global event, soon after which the corporation 'Kingdom' discovered Radianite. This event led to rapid and incredible changes across the globe, including advancements in science and technology, vast changes in everyday life and society, and the appearance of Radiants: gifted individuals with hypernatural powers. Soon after this event, Kingdom rapidly rose in power due to their expert harnessing of radianite and its properties, becoming a megacorporation with near-universal influence. Most elements in VALORANT's world that differ greatly from today's real world can be traced back to this event.Some theories place First Light at the point of divergence between the two Earths as well. While hints that could be interpreted to support this have been dropped recently, the theory still remains unconfirmed.")
    ]

func parseReleaseDate(from value: Any) -> Date {
    if let dateString = value as? String {
        // If value is a date string, try to convert it to Date
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd" // Adjust format as needed
        if let date = dateFormatter.date(from: dateString) {
            return date
        } else {
            fatalError("Invalid date string format. Expected format: yyyy-MM-dd")
        }
    } else if let daysAgo = value as? Int {
        // If value is an integer, assume it's a number of days relative to today
        return Calendar.current.date(byAdding: .day, value: daysAgo, to: Date())!
    } else {
        fatalError("Invalid input for releaseDate. Expected a String or Int.")
    }
}

let patchNoteDefaultLink = "https://playvalorant.com/en-us/news/game-updates/valorant-patch-notes-"

var Patchnotes: [Patchnote] = [
    Patchnote(id: UUID(), version: "9.10", title: "VALORANT PATCH NOTES 9.10", releaseDate: parseReleaseDate(from: "2024-11-19"), content: patchNoteDefaultLink + "9-10/"),
    Patchnote(id: UUID(), version: "9.09", title: "VALORANT PATCH NOTES 9.09", releaseDate: parseReleaseDate(from: "2024-11-5"), content: patchNoteDefaultLink + "9-09/"),
    Patchnote(id: UUID(), version: "9.08", title: "VALORANT PATCH NOTES 9.08", releaseDate: parseReleaseDate(from: "2024-10-22"), content: patchNoteDefaultLink + "9-08/"),
    Patchnote(id: UUID(), version: "9.07", title: "VALORANT PATCH NOTES 9.07", releaseDate: parseReleaseDate(from: "2024-10-8"), content: patchNoteDefaultLink + "9-07/"),
    Patchnote(id: UUID(), version: "9.06", title: "VALORANT PATCH NOTES 9.06", releaseDate: parseReleaseDate(from: "2024-9-24"), content: patchNoteDefaultLink + "906/"),
    Patchnote(id: UUID(), version: "9.05", title: "VALORANT PATCH NOTES 9.05", releaseDate: parseReleaseDate(from: "2024-9-10"), content: patchNoteDefaultLink + "9-05/"),
    Patchnote(id: UUID(), version: "9.04", title: "VALORANT PATCH NOTES 9.04", releaseDate: parseReleaseDate(from: "2024-8-27"), content: patchNoteDefaultLink + "9-04/"),
    Patchnote(id: UUID(), version: "9.03", title: "VALORANT PATCH NOTES 9.03", releaseDate: parseReleaseDate(from: "2024-8-13"), content: patchNoteDefaultLink + "9-03/"),
    Patchnote(id: UUID(), version: "9.02", title: "VALORANT PATCH NOTES 9.02", releaseDate: parseReleaseDate(from: "2024-7-30"), content: patchNoteDefaultLink + "902/"),
    Patchnote(id: UUID(), version: "9.01", title: "VALORANT PATCH NOTES 9.01", releaseDate: parseReleaseDate(from: "2024-7-16"), content: patchNoteDefaultLink + "901/"),
    Patchnote(id: UUID(), version: "9.0", title: "VALORANT PATCH NOTES 9.0", releaseDate: parseReleaseDate(from: "2024-6-25"), content: patchNoteDefaultLink + "9-0/")
]
