//
//  LeftTurnArrowShape.swift
//  LeftTurnArrowExample
//
//  Created by Russell Gordon on 2024-12-06.
//

import SwiftUI

struct LeftTurnAhead: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let w = rect.width
        let h = rect.height
        
        // Start with a line for the arrow stem
        path.move(to: CGPoint(x: w * 0.8, y: h * 0.4))
        path.addLine(to: CGPoint(x: w * 0.8, y: h * 1.0))
        path.addLine(to: CGPoint(x: w * 1.0, y: h * 1.0))
        path.addLine(to: CGPoint(x: w * 1.0, y: h * 0.4))
        
        // Add left-turn curve hook
        path.addArc(center: CGPoint(x: w * 0.8, y: h * 0.4),
                    radius: w * 0.2,
                    startAngle: .degrees(0),
                    endAngle: .degrees(-90),
                    clockwise: true)
        
        // Continue left to arrowhead
        path.addLine(to: CGPoint(x: w * 0.3, y: h * 0.2))
        
        // Draw arrowhead
        path.addLine(to: CGPoint(x: w * 0.3, y: h * 0.0))
        path.addLine(to: CGPoint(x: w * 0.0, y: h * 0.3))
        path.addLine(to: CGPoint(x: w * 0.3, y: h * 0.6))
        path.addLine(to: CGPoint(x: w * 0.3, y: h * 0.4))
        
        // Finish up the shape
        path.closeSubpath()
        
        return path
    }
}

#Preview {
    LeftTurnAhead()
        .border(.red)
        .aspectRatio(1.0, contentMode: .fit)
}
