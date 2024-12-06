//
//  UniverseLoreVIew.swift
//  ValorantLore
//
//  Created by ozpyn on 11/19/24.
//

import SwiftUI

// This struct wraps a UINavigationController inside SwiftUI
struct NavigationControllerWrapper: UIViewControllerRepresentable {
    let rootViewController: UIViewController

    func makeUIViewController(context: Context) -> UINavigationController {
        return UINavigationController(rootViewController: rootViewController)
    }

    func updateUIViewController(_ uiViewController: UINavigationController, context: Context) {}
}

struct UniverseLoreView: View {
    var body: some View {
        // Use a UINavigationControllerWrapper with a root view controller
        NavigationControllerWrapper(rootViewController: UIHostingController(rootView: RootView()))
            .edgesIgnoringSafeArea(.all)
    }
}

struct RootView: View {
    var body: some View {
        VStack {
            NavigationLink(destination: MapLoreView()) {
                Label("Maps", systemImage: "map")
            }
            NavigationLink(destination: TimelineView()) {
                Label("Timeline", systemImage: "clock")
            }
        }
        .navigationTitle("Universe Lore") // This title will appear in the UINavigationController
    }
}

struct UniverseLoreView_Previews: PreviewProvider {
    static var previews: some View {
        UniverseLoreView()
    }
}

