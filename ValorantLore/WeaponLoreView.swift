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
                    .padding(.top, 10)
                
                ScrollView(.horizontal) {
                    HStack(spacing: 20) {
                        ForEach(skins, id: \.Name) { skin in
                            VStack {
                                // Skin Name
                                Text(skin.Name)
                                    .font(.subheadline)
                                    .bold()
                                    .padding(.bottom, 5)
                                
                                // Skin Images
                                ForEach(skin.Images ?? [], id: \.self) { imageUrl in
                                    AsyncImage(url: URL(string: imageUrl)) { phase in
                                        switch phase {
                                        case .empty:
                                            ProgressView()
                                                .frame(width: 80, height: 80)
                                                .background(Color.gray.opacity(0.2))
                                                .cornerRadius(10)
                                        case .success(let image):
                                            image
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 80, height: 80)
                                                .cornerRadius(10)
                                                .padding(5)
                                                .background(Color.white)
                                                .shadow(radius: 5)
                                        case .failure:
                                            Image(systemName: "photo")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 80, height: 80)
                                                .background(Color.gray.opacity(0.1))
                                                .cornerRadius(10)
                                        @unknown default:
                                            EmptyView()
                                        }
                                    }
                                }
                            }
                            .padding()
                            .background(LinearGradient(gradient: Gradient(colors: [Color.red.opacity(0.2), Color.orange.opacity(0.1)]), startPoint: .top, endPoint: .bottom))
                            .cornerRadius(15)
                            .shadow(radius: 5)
                        }
                    }
                    .padding(.vertical, 10)
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
