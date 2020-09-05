//
//  Week.swift
//  SwiftUI-Journey
//
//  Created by Kumar, Amit on 29/07/20.
//  Copyright © 2020 Kumar, Amit. All rights reserved.
//

import SwiftUI

enum WeekWiseViews: CaseIterable, Identifiable {
    var id: WeekWiseViews { self }

    case textView
    case imageView
    case segmentControlView
    case loginScreen
}

struct Week : Identifiable {
    var id = UUID()
    var name: String
    var weekView: WeekWiseViews
}

let weeksData = [
    Week(name: "Week 1: Text", weekView: .textView),
    Week(name: "Week 2: Image",  weekView: .imageView),
    Week(name: "Week 4: Segment Control",  weekView: .segmentControlView),
    Week(name: "Week 5: Login Screen",  weekView: .loginScreen)
]
