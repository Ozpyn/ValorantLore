//
//  PachnotesVIew.swift
//  ValorantLore
//
//  Created by ozpyn on 11/19/24.
//

import SwiftUI

struct PatchnotesView: View {
    @State private var patchnotes: [Patchnote] = [
        Patchnote(id: UUID(), version: "1.04", title: "Valorant Patch 1.04 - Balance Updates", releaseDate: Date(), content: "In-depth patch content for Patch 1.04 goes here."),
        Patchnote(id: UUID(), version: "1.03", title: "Valorant Patch 1.03 - Bug Fixes", releaseDate: Calendar.current.date(byAdding: .day, value: -1, to: Date())!, content: "In-depth patch content for Patch 1.03 goes here."),
        Patchnote(id: UUID(), version: "1.02", title: "Valorant Patch 1.02 - Agent Updates", releaseDate: Calendar.current.date(byAdding: .day, value: -5, to: Date())!, content: "In-depth patch content for Patch 1.02 goes here.")
    ]
    
    @State private var selectedPatch: Patchnote?
    @State private var showingPatchDetail = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(patchnotes.sorted { $0.releaseDate > $1.releaseDate }) { patch in
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

struct PatchnotesView_Previews: PreviewProvider {
    static var previews: some View {
        PatchnotesView()
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

struct PatchnoteRow_Previews: PreviewProvider {
    static var previews: some View {
        PatchnoteRow(patch: Patchnote(id: UUID(), version: "1.04", title: "Valorant Patch 1.04 - Balance Updates", releaseDate: Date(), content: "In-depth patch content for Patch 1.04 goes here."))
    }
}

struct PatchnoteDetailView: View {
    var patch: Patchnote
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text(patch.title)
                    .font(.title)
                    .fontWeight(.bold)
                
                Text("Version: \(patch.version)")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                Text(patch.releaseDate, style: .date)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                Divider()
                
                Text(patch.content)
                    .font(.body)
                    .lineSpacing(6)
                
                Spacer()
            }
            .padding()
        }
        .navigationTitle("Patch Details")
    }
}

struct PatchnoteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PatchnoteDetailView(patch: Patchnote(id: UUID(), version: "1.04", title: "Valorant Patch 1.04 - Balance Updates", releaseDate: Date(), content: "In-depth patch content for Patch 1.04 goes here."))
    }
}
