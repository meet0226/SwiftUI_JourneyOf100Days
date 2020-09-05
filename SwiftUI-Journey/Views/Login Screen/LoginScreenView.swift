//
//  LoginScreenView.swift
//  SwiftUI-Journey
//
//  Created by Kumar, Amit on 05/09/20.
//  Copyright © 2020 Kumar, Amit. All rights reserved.
//

import SwiftUI

struct LoginScreenView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    var body: some View {
        ScrollView {
            VStack {
                LogoView()
                Spacer(minLength: 30)
                TitleAndSubtitleView()
                Spacer(minLength: 80)
                UserTextFieldView(email: $email)
                Spacer(minLength: 20)
                PasswordSecureTextView(password: $password)
                ForgotPasswordView()
                Spacer(minLength: 50)
                LoginButtonView(email: $email, password: $password)
            }.padding(30)
        }
    }
}

struct LoginScreenView_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreenView()
    }
}
