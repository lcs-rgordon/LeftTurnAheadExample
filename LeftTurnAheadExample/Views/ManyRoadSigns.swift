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
            RoadSignView()
            VStack {
                RoadSignView()
                RoadSignView()
                RoadSignView()
                RoadSignView()
                RoadSignView()
                RoadSignView()
                RoadSignView()
                RoadSignView()
            }
        }
    }
}

#Preview {
    ManyRoadSigns()
}
