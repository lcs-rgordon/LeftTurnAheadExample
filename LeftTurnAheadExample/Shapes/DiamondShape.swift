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

        path.move(to: CGPoint(x: w * 0.48, y: h * 0.02)) // Top point
        path.addLine(to: CGPoint(x: w * 0.48, y: h * 0.02)) // Top
        path.addLine(to: CGPoint(x: w * 0.52, y: h * 0.02)) // Top
        path.addLine(to: CGPoint(x: w * 0.98, y: h * 0.48)) // Right
        path.addLine(to: CGPoint(x: w * 0.98, y: h * 0.52)) // Right
        path.addLine(to: CGPoint(x: w * 0.52, y: h * 0.98)) // Bottom
        path.addLine(to: CGPoint(x: w * 0.48, y: h * 0.98)) // Bottom
        path.addLine(to: CGPoint(x: w * 0.02, y: h * 0.52)) // Left
        path.addLine(to: CGPoint(x: w * 0.02, y: h * 0.48)) // Left
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
