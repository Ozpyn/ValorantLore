//
//  CharacterLoreView.swift
//  ValorantLore
//
//  Created by ozpyn on 11/19/24.
//

import SwiftUI
import WebKit

// Struct to handle image caching
class ImageCache {
    static let shared = ImageCache()
    private let cache = URLCache(memoryCapacity: 50 * 1024 * 1024, diskCapacity: 200 * 1024 * 1024, diskPath: "imageCache")
    
    // Function to load image either from cache or network
    func loadImage(from url: URL, completion: @escaping (UIImage?) -> Void) {
        if let cachedResponse = cache.cachedResponse(for: URLRequest(url: url)),
           let image = UIImage(data: cachedResponse.data) {
            // Image found in cache
            completion(image)
        } else {
            // Image not found in cache, download from network
            URLSession.shared.dataTask(with: url) { data, response, error in
                guard let data = data, error == nil, let image = UIImage(data: data) else {
                    completion(nil)
                    return
                }
                
                // Cache the image
                let cachedResponse = CachedURLResponse(response: response!, data: data)
                self.cache.storeCachedResponse(cachedResponse, for: URLRequest(url: url))
                
                completion(image)
            }.resume()
        }
    }
}

struct WebView: UIViewRepresentable {
    var url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        uiView.load(request)
    }
}

struct CharacterLoreView: View {
    var agents: [Agent] = Agents  // Add your agents array here
    
    var body: some View {
        NavigationView {
            List(agents, id: \.id) { agent in
                NavigationLink(destination: AgentDetailView(agents: agents, currentAgentIndex: agents.firstIndex(where: { $0.id == agent.id }) ?? 0)) {
                    AsyncImage(url: URL(string: agent.profileImage)) { image in
                        image
                            .resizable()
                            .scaledToFit()
                            .frame(height: 50)
                    } placeholder: {
                        ProgressView()
                            .frame(height: 50)
                    }
                    Text(agent.name)
                        .font(.headline)
                }
            }
            .navigationTitle("Valorant Agents")
        }
    }
}

struct AgentDetailView: View {
    var agents: [Agent]
    @State private var currentAgentIndex: Int
    @State private var selectedAbility: Ability? = nil
    @State private var isAbilityModalPresented: Bool = false
    
    init(agents: [Agent], currentAgentIndex: Int) {
        self.agents = agents
        self._currentAgentIndex = State(initialValue: currentAgentIndex)
    }
    
    var body: some View {
        let agent = agents[currentAgentIndex]
        
        ScrollView {
            VStack {
                // Agent Profile Image
                AsyncImage(url: URL(string: agent.artworkImage)) { image in
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
        .gesture(
            DragGesture()
                .onEnded { value in
                    if value.translation.width < 0 {
                        moveToNextAgent()
                    } else if value.translation.width > 0 {
                        moveToPreviousAgent()
                    }
                }
        )
        .navigationTitle(agent.name)
        .sheet(isPresented: $isAbilityModalPresented) {
            if let selectedAbility = selectedAbility {
                AbilityDetailView(ability: selectedAbility)
            }
        }
    }
    
    private func moveToNextAgent() {
        currentAgentIndex = (currentAgentIndex + 1) % agents.count
    }
    
    private func moveToPreviousAgent() {
        currentAgentIndex = (currentAgentIndex - 1 + agents.count) % agents.count
    }
}

struct AbilityDetailView: View {
    var ability: Ability
    @State private var gifLoaded: Bool = true
    
    var body: some View {
        VStack {
            Text(ability.name)
                .font(.title)
                .padding()
            
            if let gifUrl = ability.gif, let url = URL(string: gifUrl) {
                WebView(url: url)
                    .frame(height: 200) // Set the size of the GIF display area
            } else {
                Text("No GIF available for this ability.")
                    .foregroundColor(.gray)
                    .padding()
            }
            
            Text(ability.description)
                .font(.body)
                .padding()
            
            .padding()
        }
    }
}

struct CharacterLoreView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterLoreView()
    }
}
