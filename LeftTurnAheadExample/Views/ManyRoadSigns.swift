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
            RoadSignView(scale: 0.5) {
                SideRoadLeft()
            }
            RoadSignView {
                LeftTurnAhead()
            }
        }
    }
}

#Preview {
    ManyRoadSigns()
}
