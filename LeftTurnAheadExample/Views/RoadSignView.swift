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
                .aspectRatio(1.0, contentMode: .fit)
                .overlay(
                    DiamondShape()
                        .stroke(Color.black, lineWidth: 10) // Black border
                        .padding(20)
                        .overlay {
                            // Left-turn arrow
                            LeftTurnArrowShape()
                                .stroke(
                                    .black,
                                    style: StrokeStyle(
                                        lineWidth: 8,
                                        lineCap: .round,
                                        lineJoin: .round
                                    )
                                )
                                .fill(.black)
                                .padding(125)
                        }
                )
                
            
        }
    }
}

#Preview {
    RoadSignView()
}
