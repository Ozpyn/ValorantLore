//
//  ContentView.swift
//  ValorantLore
//
//  Created by ozpyn on 11/19/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            UniverseLoreView()
                .tabItem {
                    Label("Universe", systemImage: "globe")
                }
            
            MapLoreView()
                .tabItem {
                    Label("Maps", systemImage: "map")
                }

            CharacterLoreView()
                .tabItem {
                    Label("Characters", systemImage: "person.fill")
                }

            WeaponLoreView()
                .tabItem {
                    Label("Weapons", systemImage: "sword")
                }

            PatchnotesView()
                .tabItem {
                    Label("Patchnotes", systemImage: "note.text")
                }

            TimelineView()
                .tabItem {
                    Label("Timeline", systemImage: "clock")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
