//
//  RightCurveAhead.swift
//  RightCurveAhead
//
//  Created by Russell Gordon on 2024-12-07.
//

import SwiftUI

struct SideRoadLeft: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let w = rect.width
        let h = rect.height
        
        // Start with a line for the arrow stem
        path.move(to: CGPoint(x: w * 0.8, y: h * 1.0))
        path.addLine(to: CGPoint(x: w * 0.8, y: h * 1.0))
        path.addLine(to: CGPoint(x: w * 0.8, y: h * 0.0))
        path.addLine(to: CGPoint(x: w * 0.6, y: h * 0.0))
        path.addLine(to: CGPoint(x: w * 0.6, y: h * 0.4))
        path.addLine(to: CGPoint(x: w * 0.2, y: h * 0.4))
        path.addLine(to: CGPoint(x: w * 0.2, y: h * 0.6))
        path.addLine(to: CGPoint(x: w * 0.6, y: h * 0.6))
        path.addLine(to: CGPoint(x: w * 0.6, y: h * 1.0))
        
        // Finish up the shape
        path.closeSubpath()
        
        return path
    }
}

#Preview {
    SideRoadLeft()
        .border(.red)
        .aspectRatio(1.0, contentMode: .fit)
}
