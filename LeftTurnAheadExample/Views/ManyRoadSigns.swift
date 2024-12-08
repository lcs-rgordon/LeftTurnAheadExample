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
            RoadSign(scale: 0.5) {
                SideRoadLeft()
            }
            RoadSign {
                LeftTurnAhead()
            }
        }
    }
}

#Preview {
    ManyRoadSigns()
}
