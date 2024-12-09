//
//  MapLoreView.swift
//  ValorantLore
//
//  Created by ozpyn on 11/19/24.
//

import SwiftUI

struct MapLoreView: View {
    @State private var currentIndex: Double = 0  // Use Double for Slider
    @State private var selectedImageIndex = 0 // Tracks the selected image index
    
    var body: some View {
        let map = Maps[Int(currentIndex)]  // Convert currentIndex to Int to access array
        
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
                Spacer()

                // Slider
                Slider(value: $currentIndex, in: 0...Double(Maps.count - 1), step: 1)
                    .accentColor(.blue)
                    .frame(width: 200) // Set a fixed width for the slider to avoid it stretching too much

                Spacer()

                // Stepper
                Stepper(value: $currentIndex, in: 0...Double(Maps.count - 1), step: 1) {
                    // Label for Stepper (empty label, but you can add one if needed)
                }
                .accentColor(.blue)

                Spacer()
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
            print(cachedResponse)
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
