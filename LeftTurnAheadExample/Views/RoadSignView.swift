//
//  RoadSignView.swift
//  LeftTurnAheadExample
//
//  Created by Russell Gordon on 2024-12-06.
//

import SwiftUI

struct RoadSignView<Content: Shape>: View {
    
    let shape: Content
    let scale: Double
    
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
                                shape
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
    
    init(signToShow: Content, scale: Double = 0.4) {
        self.shape = signToShow
        self.scale = scale
    }
}

#Preview {
    RoadSignView(signToShow: LeftTurnAhead())
}
