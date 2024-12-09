//
//  CharacterLoreView.swift
//  ValorantLore
//
//  Created by ozpyn on 11/19/24.
//

import SwiftUI
import WebKit

var selectedAbility = AbilityNil

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
            List {
                ForEach(groupedAgents.keys.sorted(), id: \.self) { letter in
                    Section(header: (Text(letter).font(.headline))) {
                        ForEach(groupedAgents[letter] ?? [], id: \.id) { agent in
                            NavigationLink(destination: AgentDetailView(agents: agents, currentAgentIndex: agents.firstIndex(where: { $0.id == agent.id }) ?? 0)) {
                                HStack {
                                    // Use ImageCache to load the agent profile image
                                    AgentImage(url: URL(string: agent.profileImage))
                                        .frame(height: 50)
                                    
                                    Text(agent.name)
                                        .font(.body)
                                }
                            }
                        }
                    }
                }
            }
            .navigationTitle("Valorant Agents")
        }
    }
    
    var groupedAgents: [String: [Agent]] {
        Dictionary(grouping: agents, by: { String($0.role.name) })
    }
}

struct AgentImage: View {
    var url: URL?
    @State private var loadedImage: UIImage?
    
    var body: some View {
        Group {
            if let image = loadedImage {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
            } else {
                ProgressView()
                    .onAppear {
                        loadImage()
                    }
            }
        }
    }
    
    private func loadImage() {
        guard let url = url else { return }
        ImageCache.shared.loadImage(from: url) { image in
            DispatchQueue.main.async {
                self.loadedImage = image
            }
        }
    }
}

struct AgentDetailView: View {
    var agents: [Agent]
    @State private var currentAgentIndex: Int
    @State private var isAbilityModalPresented: Bool = false
    
    init(agents: [Agent], currentAgentIndex: Int) {
        self.agents = agents
        self._currentAgentIndex = State(initialValue: currentAgentIndex)
    }
    
    var body: some View {
        let agent = agents[currentAgentIndex]
        
        ScrollView {
            VStack {
                // Use ImageCache to load the agent's artwork image
                AgentImage(url: URL(string: agent.artworkImage))
                    .frame(height: 300)
                    .padding()
                
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
                            DispatchQueue.main.async {
                                isAbilityModalPresented.toggle()
                            }
                        }) {
                            HStack {
                                // Use ImageCache to load ability image
                                AgentImage(url: URL(string: ability.image))
                                    .frame(width: 50, height: 50)
                                
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
            AbilityDetailView()
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
    var ability = selectedAbility
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
