//
//  ContentView.swift
//  ValorantLore
//
//  Created by ozpyn on 11/19/24.
//

import SwiftUI

struct ContentView: View {
    // Store the selected tab index in AppStorage
    @AppStorage("selectedTab") private var selectedTab: Int = 0

    var body: some View {
        TabView(selection: $selectedTab) {
            UniverseLoreView()
                .tabItem {
                    Label("Universe", systemImage: "globe")
                }
                .tag(0) // Assigning a tag to each tab to identify it

            CharacterLoreView()
                .tabItem {
                    Label("Characters", systemImage: "person.fill")
                }
                .tag(1)

            WeaponLoreView()
                .tabItem {
                    Label("Weapons", systemImage: "scissors")
                }
                .tag(2)

            PatchnotesView()
                .tabItem {
                    Label("Patchnotes", systemImage: "note.text")
                }
                .tag(3)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
