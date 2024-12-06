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

            CharacterLoreView()
                .tabItem {
                    Label("Characters", systemImage: "person.fill")
                }

            WeaponLoreView()
                .tabItem {
                    Label("Weapons", systemImage: "gun")
                }

            PatchnotesView()
                .tabItem {
                    Label("Patchnotes", systemImage: "note.text")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
