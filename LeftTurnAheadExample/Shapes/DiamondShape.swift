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
        let width = rect.width
        let height = rect.height

        path.move(to: CGPoint(x: width / 2, y: 0)) // Top point
        path.addLine(to: CGPoint(x: width, y: height / 2)) // Right point
        path.addLine(to: CGPoint(x: width / 2, y: height)) // Bottom point
        path.addLine(to: CGPoint(x: 0, y: height / 2)) // Left point
        path.closeSubpath()

        return path
    }
}
