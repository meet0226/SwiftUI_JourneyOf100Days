//
//  WeeksOfSwiftUI.swift
//  SwiftUI-Journey
//
//  Created by Kumar, Amit on 29/07/20.
//  Copyright © 2020 Kumar, Amit. All rights reserved.
//

import SwiftUI
import Combine

class WeeksOfSwiftUI: ObservableObject {
    @Published var weeks: [Week]

    init(weeks: [Week] = []) {
        self.weeks = weeks
    }

}
