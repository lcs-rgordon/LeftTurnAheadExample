//
//  ManyRoadSigns.swift
//  LeftTurnAheadExample
//
//  Created by Russell Gordon on 2024-12-07.
//

import SwiftUI

struct ManyRoadSigns: View {
    var body: some View {
        VStack {
            RoadSignView(
                signToShow: SideRoadLeft(),
                scale: 0.5
            )
            RoadSignView(signToShow: LeftTurnAhead())
            RoadSignView(signToShow: LeftTurnAhead())
        }
    }
}

#Preview {
    ManyRoadSigns()
}
