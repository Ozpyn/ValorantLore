//
//  MapLoreView.swift
//  ValorantLore
//
//  Created by ozpyn on 11/19/24.
//

import SwiftUI

// Define the Map model with optional imageUrls (URLs of the images)
struct Map: Identifiable {
    var id = UUID()
    var name: String
    var lore: String
    var location: String
    var numberOfSites: Int
    var imageUrls: [String]?  // Array of image URLs (as Strings)
}

// Sample Data for Maps (with image URLs)
let sampleMaps = [
    Map(name: "Bind", lore: "Bind's lore goes here...", location: "Middle East", numberOfSites: 2, imageUrls: [
        "https://via.placeholder.com/300?text=Image+1",
        "https://via.placeholder.com/300?text=Image+2"
    ]),
    Map(name: "Haven", lore: "Haven's lore goes here...", location: "Iran", numberOfSites: 3, imageUrls: [
        "https://via.placeholder.com/300?text=Haven+Image+1"
    ]), // No images
    Map(name: "Ascent", lore: "Ascent's lore goes here...", location: "Italy", numberOfSites: 2, imageUrls: [
        "https://via.placeholder.com/300?text=Ascent+Image+1"
    ]),
    // Add more maps with valid URLs
]

struct MapLoreView: View {
    @State private var currentIndex: Double = 0  // Use Double for Slider
    @State private var selectedImageIndex = 0 // Tracks the selected image index
    
    var body: some View {
        let map = sampleMaps[Int(currentIndex)]  // Convert currentIndex to Int to access array
        
        VStack {
            // Map Image Gallery (conditionally display if imageUrls is available)
            if let images = map.imageUrls, !images.isEmpty {
                TabView(selection: $selectedImageIndex) {
                    ForEach(0..<images.count, id: \.self) { index in
                        AsyncImage(url: URL(string: images[index])) { phase in
                            switch phase {
                            case .empty:
                                ProgressView()  // Show a loading spinner while the image is loading
                                    .progressViewStyle(CircularProgressViewStyle())
                                    .frame(width: 300, height: 300)
                                    .padding()
                            case .success(let image):
                                image
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 300, height: 300)
                                    .padding()
                                    .onAppear {
                                        cacheImage(from: images[index])  // Cache the image when it's loaded
                                    }
                            case .failure:
                                Image(systemName: "exclamationmark.triangle.fill")  // Show error icon if the image fails to load
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 300, height: 300)
                                    .padding()
                            @unknown default:
                                EmptyView()  // Fallback for unknown states
                            }
                        }
                        .tag(index)  // Assign the index as the tag
                    }
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))  // Page-style swiping
                .padding()
                .onChange(of: selectedImageIndex) { newIndex in
                    // Loop back to the first image when the last image is reached
                    if newIndex == map.imageUrls!.count {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                            selectedImageIndex = 0  // Reset to the first image
                        }
                    }
                }
            } else {
                // Fallback when no images are available
                Rectangle()
                    .fill(Color.gray)
                    .frame(height: 200)
                    .overlay(
                        Text("No Images Available")
                            .foregroundColor(.white)
                            .font(.headline)
                    )
                    .padding()
            }
            
            // Map Information
            Text(map.name)
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            
            Text("Location: \(map.location)")
                .font(.title2)
                .padding(.bottom)
            
            Text("Lore: \(map.lore)")
                .font(.body)
                .padding(.bottom)
            
            Text("Number of Sites: \(map.numberOfSites)")
                .font(.title2)
                .padding(.bottom)
            
            // Navigation Controls
            HStack {
                Button(action: {
                    if currentIndex > 0 {
                        currentIndex -= 1
                    }
                }) {
                    Image(systemName: "arrow.left.circle.fill")
                        .font(.system(size: 40))
                        .foregroundColor(currentIndex > 0 ? .blue : .gray)
                }
                
                Spacer()
                
                Slider(value: $currentIndex, in: 0...Double(sampleMaps.count - 1), step: 1)
                    .accentColor(.blue)
                
                Spacer()
                
                Button(action: {
                    if currentIndex < Double(sampleMaps.count - 1) {
                        currentIndex += 1
                    }
                }) {
                    Image(systemName: "arrow.right.circle.fill")
                        .font(.system(size: 40))
                        .foregroundColor(currentIndex < Double(sampleMaps.count - 1) ? .blue : .gray)
                }
            }
            .padding()
        }
        .padding()
    }
    
    // Function to cache images using URLCache
    private func cacheImage(from url: String) {
        guard let url = URL(string: url) else { return }
        
        let urlCache = URLCache.shared
        
        // Check if the image is already cached
        if let cachedResponse = urlCache.cachedResponse(for: URLRequest(url: url)) {
            print("Image is cached.")
            return
        }
        
        // If not cached, download and store it
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data, error == nil, let response = response {
                let cachedResponse = CachedURLResponse(response: response, data: data)
                urlCache.storeCachedResponse(cachedResponse, for: URLRequest(url: url))
                print("Image cached.")
            }
        }.resume()
    }
}

struct MapLoreView_Previews: PreviewProvider {
    static var previews: some View {
        MapLoreView()
    }
}
