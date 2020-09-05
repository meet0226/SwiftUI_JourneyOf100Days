//
//  ContentView.swift
//  SwiftUI-Journey
//
//  Created by Kumar, Amit on 29/07/20.
//  Copyright © 2020 Kumar, Amit. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var weeks = weeksData

    var body: some View {
        NavigationView {
            List {
                ForEach (weeks) { week in
                    WeekCell(week: week)
                }
            }.navigationBarTitle("Weeks Of SwiftUI", displayMode: .inline)
        }
    }
}

struct WeekCell: View {
    let week: Week
    var body: some View {
        return  NavigationLink(destination: nextViewType(viewType: week.weekView)) {
            Text(week.name)
        }
    }

    func nextViewType(viewType: WeekWiseViews) -> some View {
        switch viewType {
        case .textView:
            return AnyView(TextView())
        case .imageView:
            return AnyView(ImageView())
        case .segmentControlView:
            return AnyView(SegmentControlView())
        case .loginScreen:
            return AnyView(LoginScreenView())
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

