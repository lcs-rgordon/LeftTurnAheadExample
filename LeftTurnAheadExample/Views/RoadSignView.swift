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
                    GeometryReader { reader in
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
                                    .frame(
                                        width: reader.size.width * 0.45,
                                        height: reader.size.width * 0.45
                                    )
                                    .offset(x: reader.size.width * -0.05)
                                    .padding(125)
                            }
                    }
                )
                
            
        }
    }
}

#Preview {
    RoadSignView()
}
