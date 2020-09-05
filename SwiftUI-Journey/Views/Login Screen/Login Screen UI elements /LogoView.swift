//
//  LogoView.swift
//  SwiftUI-Journey
//
//  Created by Kumar, Amit on 05/09/20.
//  Copyright © 2020 Kumar, Amit. All rights reserved.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        Image("Logo")
            .resizable()
            .scaledToFit()
            .frame(width: 100, height: 100, alignment: .center)
            .clipped()
    }

}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
    }
}
