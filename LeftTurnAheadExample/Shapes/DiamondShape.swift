//
//  DiamondShape.swift
//  LeftTurnAheadExample
//
//  Created by Russell Gordon on 2024-12-06.
//

import SwiftUI

struct DiamondShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let w = rect.width
        let h = rect.height

        path.move(to: CGPoint(x: w * 0.48, y: h * 0.1)) // Top point
        path.addLine(to: CGPoint(x: w * 0.48, y: h * 0.1)) // Top
        path.addLine(to: CGPoint(x: w * 0.52, y: h * 0.1)) // Top
        path.addLine(to: CGPoint(x: w * 0.9, y: h * 0.48)) // Right
        path.addLine(to: CGPoint(x: w * 0.9, y: h * 0.52)) // Right
        path.addLine(to: CGPoint(x: w * 0.52, y: h * 0.9)) // Bottom
        path.addLine(to: CGPoint(x: w * 0.48, y: h * 0.9)) // Bottom
        path.addLine(to: CGPoint(x: w * 0.1, y: h * 0.52)) // Left
        path.addLine(to: CGPoint(x: w * 0.1, y: h * 0.48)) // Left
        path.closeSubpath()

        return path
    }
}

#Preview {
    RoadSignView()
}

#Preview {
    DiamondShape()
        .aspectRatio(1.0, contentMode: .fit)
}
