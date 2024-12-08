//
//  RoadSignView.swift
//  LeftTurnAheadExample
//
//  Created by Russell Gordon on 2024-12-06.
//

import SwiftUI

struct RoadSign<Content: Shape>: View {
    
    let scale: Double
    let shape: () -> Content
    
    var body: some View {
        GeometryReader { reader in
            Diamond()
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
                    GeometryReader { innerReader in
                        Diamond()
                            .stroke(
                                .black,
                                style: StrokeStyle(
                                    lineWidth: innerReader.size.width * 0.02,
                                    lineCap: .round,
                                    lineJoin: .round
                                )
                            )
                            .padding(innerReader.size.width * 0.02)
                            .overlay {
                                // Left-turn arrow
                                shape()
                                    .stroke(
                                        .black,
                                        style: StrokeStyle(
                                            lineWidth: innerReader.size.width * 0.02,
                                            lineCap: .round,
                                            lineJoin: .round
                                        )
                                    )
                                    .fill(.black)
                                    .frame(
                                        width: innerReader.size.width * scale,
                                        height: innerReader.size.width * scale
                                    )
                                    .offset(x: innerReader.size.width * -0.05)
                            }
                    }
                )
            
        }

    }
    
    init(scale: Double = 0.4, signToShow: @escaping () -> Content) {
        self.scale = scale
        self.shape = signToShow
    }
}

#Preview {
    RoadSign {
        LeftTurnAhead()
    }
}
