//
//  TitleAndSubtitleView.swift
//  SwiftUI-Journey
//
//  Created by Kumar, Amit on 05/09/20.
//  Copyright © 2020 Kumar, Amit. All rights reserved.
//

import SwiftUI

struct TitleAndSubtitleView: View {
    var body: some View {
        VStack {
            Text("Login")
                .font(.largeTitle)
                .bold()
            Text("My first SwiftUI login page")
                .font(.subheadline)
        }
    }

}

struct TitleAndSubtitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleAndSubtitleView()
    }
}
