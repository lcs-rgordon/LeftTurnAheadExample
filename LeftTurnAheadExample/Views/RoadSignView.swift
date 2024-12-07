//
//  RoadSignView.swift
//  LeftTurnAheadExample
//
//  Created by Russell Gordon on 2024-12-06.
//

import SwiftUI

struct RoadSignView: View {
    var body: some View {
        GeometryReader { reader in
            DiamondShape()
                .stroke(
                    .yellow,
                    style: StrokeStyle(
                        lineWidth: reader.size.width * 0.02,
                        lineCap: .round,
                        lineJoin: .round
                    )
                )
                .fill(Color.yellow)
                .aspectRatio(1.0, contentMode: .fit)
                .overlay(
                    DiamondShape()
                        .stroke(
                            .black,
                            style: StrokeStyle(
                                lineWidth: reader.size.width * 0.02,
                                lineCap: .round,
                                lineJoin: .round
                            )
                        )
                        .padding(reader.size.width * 0.02)
                        .overlay {
                            // Left-turn arrow
                            LeftTurnArrowShape()
                                .stroke(
                                    .black,
                                    style: StrokeStyle(
                                        lineWidth: reader.size.width * 0.02,
                                        lineCap: .round,
                                        lineJoin: .round
                                    )
                                )
                                .fill(.black)
                                .frame(
                                    width: reader.size.width * 0.4,
                                    height: reader.size.width * 0.4
                                )
                                .offset(x: reader.size.width * -0.05)
                        }
                )
            
        }
        .padding()
    }
}

#Preview {
    RoadSignView()
}
