//
//  RightCurveAhead.swift
//  RightCurveAhead
//
//  Created by Russell Gordon on 2024-12-07.
//

import SwiftUI

struct RightCurveAhead: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let w = rect.width
        let h = rect.height
        
        // Start with a line for the arrow stem
        path.move(to: CGPoint(x: w * 0.0, y: h * 1.0))
        path.addLine(to: CGPoint(x: w * 0.0, y: h * 1.0))
        path.addLine(to: CGPoint(x: w * 0.0, y: h * 0.7))

        // Start curve
        path.addQuadCurve(
            to: CGPoint(x: w * 0.3, y: h * 0.3),
            control: CGPoint(x: w * 0.0, y: h * 0.5)    // Control point at apex of curve
        )
        
        // Blunt the end
        path.addLine(to: CGPoint(x: w * 0.35, y: h * 0.4))

        // Add curve going back
        path.addQuadCurve(
            to: CGPoint(x: w * 0.12, y: h * 0.7),
            control: CGPoint(x: w * 0.2, y: h * 0.5)    // Control point at apex of curve
        )
//        // Draw arrowhead
//        path.addLine(to: CGPoint(x: w * 0.3, y: h * 0.0))
//        path.addLine(to: CGPoint(x: w * 0.0, y: h * 0.3))
//        path.addLine(to: CGPoint(x: w * 0.3, y: h * 0.6))
//        path.addLine(to: CGPoint(x: w * 0.3, y: h * 0.4))
        
        // Finish up the shape
        path.closeSubpath()
        
        return path
    }
}

#Preview {
    RightCurveAhead()
        .border(.red)
        .aspectRatio(1.0, contentMode: .fit)
}
