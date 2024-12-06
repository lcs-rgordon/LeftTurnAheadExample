//
//  RoadSignView.swift
//  LeftTurnAheadExample
//
//  Created by Russell Gordon on 2024-12-06.
//

import SwiftUI

struct RoadSignView: View {
    var body: some View {
        ZStack {
            // Diamond background
            DiamondShape()
                .fill(Color.yellow)
                .frame(width: 200, height: 200)
                .overlay(
                    DiamondShape()
                        .stroke(Color.black, lineWidth: 4) // Black border
                )
            
            // Left-turn arrow
            LeftTurnArrowShape()
                .stroke(Color.black, lineWidth: 8)
                .frame(width: 100, height: 100)
        }
    }
}

#Preview {
    RoadSignView()
}
