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

        path.move(to: CGPoint(x: w * 0.45, y: h * 0.05)) // Top point
        path.addLine(to: CGPoint(x: w * 0.45, y: h * 0.05)) // Top
        path.addQuadCurve(
            to: CGPoint(x: w * 0.55, y: h * 0.05),
            control: CGPoint(x: w * 0.5, y: h * 0.0)    // Control point at apex of curve
        )
        path.addLine(to: CGPoint(x: w * 0.95, y: h * 0.45)) // Right
        path.addQuadCurve(
            to: CGPoint(x: w * 0.95, y: h * 0.55),
            control: CGPoint(x: w * 1.0, y: h * 0.5)    // Control point at apex of curve
        )
        path.addLine(to: CGPoint(x: w * 0.55, y: h * 0.95)) // Bottom
        path.addQuadCurve(
            to: CGPoint(x: w * 0.45, y: h * 0.95),
            control: CGPoint(x: w * 0.5, y: h * 1.0)    // Control point at apex of curve
        )
        path.addLine(to: CGPoint(x: w * 0.05, y: h * 0.55)) // Left
        path.addQuadCurve(
            to: CGPoint(x: w * 0.05, y: h * 0.45),
            control: CGPoint(x: w * 0.0, y: h * 0.5)    // Control point at apex of curve
        )
        path.closeSubpath()

        return path
    }
}

#Preview {
    RoadSignView()
}

#Preview {
    VStack {
        DiamondShape()
            .aspectRatio(1.0, contentMode: .fit)
        Spacer()
    }
}
