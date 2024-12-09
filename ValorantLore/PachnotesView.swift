//
//  PachnotesVIew.swift
//  ValorantLore
//
//  Created by ozpyn on 11/19/24.
//

import SwiftUI
import WebKit

// WebView to load URLs inside the modal
struct PatchnoteWebView: UIViewRepresentable {
    let url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(URLRequest(url: url))
    }
}

var selectedPatch: Patchnote?

struct PatchnotesView: View {
    @State private var showingPatchDetail = false
    @State private var patchnotesLimit = 3 // Default number of patchnotes to show
    
    var body: some View {
        NavigationView {
            VStack {
                // Stepper to adjust the number of visible patchnotes
                Stepper("Show \(patchnotesLimit) patchnotes", value: $patchnotesLimit, in: 1...Patchnotes.count)
                    .padding()
                
                List {
                    ForEach(Patchnotes.prefix(patchnotesLimit).sorted { $0.releaseDate > $1.releaseDate }) { patch in
                        PatchnoteRow(patch: patch)
                            .onTapGesture {
                                selectedPatch = patch
                                showingPatchDetail.toggle()
                            }
                    }
                }
                .navigationTitle("Patchnotes")
                .sheet(isPresented: $showingPatchDetail) {
                    if let patch = selectedPatch {
                        PatchnoteDetailView(patch: patch)
                    }
                }
            }
        }
    }
}

struct PatchnoteRow: View {
    var patch: Patchnote
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Text(patch.version)
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                
                Spacer()
                
                Text(patch.releaseDate, style: .date)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            
            Text(patch.title)
                .font(.title2)
                .fontWeight(.semibold)
                .padding(.bottom, 4)
            
            Divider()
                .padding(.vertical, 8)
            
            Button(action: {
                // Action for opening modal (will be implemented next)
            }) {
                Text("View Details")
                    .font(.body)
                    .foregroundColor(.blue)
            }
            .padding(.bottom, 8)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(8)
        .shadow(radius: 5)
        .padding(.horizontal)
    }
}

struct PatchnoteDetailView: View {
    var patch: Patchnote
    
    var body: some View {
        VStack {
            if let url = URL(string: patch.content), UIApplication.shared.canOpenURL(url) {
                // If content is a valid URL, display the WebView
                WebView(url: url)
                    .edgesIgnoringSafeArea(.all) // Make the web view occupy the entire screen
            } else {
                Text("Invalid URL")
                    .font(.headline)
                    .foregroundColor(.red)
                    .padding()
            }
        }
        .navigationTitle("Patch Details")
        .navigationBarHidden(true)  // Hide the navigation bar for a full-screen experience
    }
}

struct PatchnotesView_Previews: PreviewProvider {
    static var previews: some View {
        PatchnotesView()
    }
}
