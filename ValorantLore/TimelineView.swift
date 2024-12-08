//
//  TimelineView.swift
//  ValorantLore
//
//  Created by ozpyn on 11/19/24.
//

import SwiftUI

struct TimelineView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            ForEach(Events.sorted(by: { $0.yearsAfterFirstLight > $1.yearsAfterFirstLight })) { event in
                VStack(alignment: .leading, spacing: 8) {
                    HStack {
                        Text(event.title)
                            .font(.headline)
                            .fontWeight(.bold)
                        Spacer()
                        // Display "X aFL" instead of a specific date
                        Text("\(event.yearsAfterFirstLight) aFL")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                    
                    Text(event.description)
                        .font(.body)
                        .lineLimit(2) // To prevent overflow
                        .foregroundColor(.secondary)
                    
                    Divider()
                        .background(Color.gray.opacity(0.4))
                }
                .padding(.horizontal)
            }
        }
        .padding()
    }
}

struct TimelineView_Previews: PreviewProvider {
    static var previews: some View {
        TimelineView()
    }
}
