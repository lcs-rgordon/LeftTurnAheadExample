//
//  LeftTurnArrowShape.swift
//  LeftTurnArrowExample
//
//  Created by Russell Gordon on 2024-12-06.
//

import SwiftUI

struct LeftTurnArrowShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let w = rect.width
        let h = rect.height
        
        // Start with a line for the arrow stem
//        path.move(to: CGPoint(x: w * 0.9, y: h * 0.35))
//        path.addLine(to: CGPoint(x: w * 0.9, y: h * 0.7))
//        path.addLine(to: CGPoint(x: w * 0.8, y: h * 0.7))
//        path.addLine(to: CGPoint(x: w * 0.8, y: h * 0.35))
        path.move(to: CGPoint(x: w * 0.8, y: h * 0.35))
        path.addLine(to: CGPoint(x: w * 0.8, y: h * 0.7))
        path.addLine(to: CGPoint(x: w * 0.9, y: h * 0.7))
        path.addLine(to: CGPoint(x: w * 0.9, y: h * 0.35))
        
        // Add left-turn curve hook
        path.addArc(center: CGPoint(x: w * 0.8, y: h * 0.35),
                    radius: w * 0.1,
                    startAngle: .degrees(0),
                    endAngle: .degrees(-90),
                    clockwise: true)
        
        //

        
        //
////        // Add the left-turn hook
//        path.addArc(center: CGPoint(x: w * 0.8, y: h * 0.7),
//                    radius: w * 0.1,
//                    startAngle: .degrees(0),
//                    endAngle: .degrees(180),
//                    clockwise: false)


//
//        // Add arrowhead
//        path.addLine(to: CGPoint(x: w * 0.3, y: h * 0.5))
//        path.move(to: CGPoint(x: w * 0.5, y: h * 0.7))
//        path.addLine(to: CGPoint(x: w * 0.3, y: h * 0.9))
        
        return path
    }
}

#Preview {
    LeftTurnArrowShape()
}
