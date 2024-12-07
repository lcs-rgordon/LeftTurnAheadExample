//
//  ManyRoadSigns.swift
//  LeftTurnAheadExample
//
//  Created by Russell Gordon on 2024-12-07.
//

import SwiftUI

struct ManyRoadSigns: View {
    var body: some View {
        HStack {
            RoadSignView(content: LeftTurnArrowShape())
            VStack {
                RoadSignView(content: LeftTurnArrowShape())
                RoadSignView(content: LeftTurnArrowShape())
                RoadSignView(content: LeftTurnArrowShape())
                RoadSignView(content: LeftTurnArrowShape())
                RoadSignView(content: LeftTurnArrowShape())
                RoadSignView(content: LeftTurnArrowShape())
                RoadSignView(content: LeftTurnArrowShape())
                RoadSignView(content: LeftTurnArrowShape())
            }
        }
    }
}

#Preview {
    ManyRoadSigns()
}
