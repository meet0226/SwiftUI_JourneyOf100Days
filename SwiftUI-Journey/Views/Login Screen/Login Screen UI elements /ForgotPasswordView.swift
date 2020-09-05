//
//  ForgotPasswordView.swift
//  SwiftUI-Journey
//
//  Created by Kumar, Amit on 05/09/20.
//  Copyright © 2020 Kumar, Amit. All rights reserved.
//

import SwiftUI

struct ForgotPasswordView: View {
    var body: some View {
        HStack {
            Spacer()
            Button(action: {
                print("Button Clicked")
            }) {
                Text("Forgot password?")
                    .foregroundColor(.gray)
            }
        }.frame(minWidth: 0, maxWidth: .infinity)
    }

}

struct ForgotPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordView()
    }
}
