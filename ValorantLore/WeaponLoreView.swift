//
//  WeaponLoreVIew.swift
//  ValorantLore
//
//  Created by ozpyn on 11/19/24.
//

import SwiftUI

struct WeaponLoreView: View {
    var body: some View {
        NavigationView {
            List {
                // Group Weapons by Category
                let groupedWeapons = Dictionary(grouping: Weapons, by: { $0.Category })
                
                ForEach(groupedWeapons.keys.sorted(), id: \.self) { category in
                    Section(header: Text(category)) {
                        ForEach(groupedWeapons[category] ?? [], id: \.Name) { weapon in
                            NavigationLink(destination: WeaponDetailView(weapon: weapon)) {
                                Text(weapon.Name)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Weapons")
        }
    }
}

struct WeaponDetailView: View {
    var weapon: Weapon
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(weapon.Name)
                .font(.largeTitle)
                .bold()
            
            Text("Category: \(weapon.Category)")
            Text("Cost: \(weapon.Cost) Credits")
            
            if let skins = weapon.Skins {
                Text("Skins")
                    .font(.headline)
                
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(skins, id: \.Name) { skin in
                            VStack {
                                Text(skin.Name)
                                ForEach(skin.Images ?? [], id: \.self) { _ in
                                    Image(systemName: "photo") // Placeholder image
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 80, height: 80)
                                }
                            }
                        }
                    }
                }
            }
        }
        .padding()
        .navigationTitle(weapon.Name)
    }
}

struct WeaponLoreView_Previews: PreviewProvider {
    static var previews: some View {
        WeaponLoreView()
    }
}
