//
//  LoginButtonView.swift
//  SwiftUI-Journey
//
//  Created by Kumar, Amit on 05/09/20.
//  Copyright © 2020 Kumar, Amit. All rights reserved.
//

import SwiftUI

enum AlertType: String {
    case messageAlert
    case loginSuccessfullAlert
}

struct LoginButtonView: View {
    @Binding var email: String
    @Binding var password: String

    @State private var showingAlert = false
    @State private var currentAlertType: AlertType = .loginSuccessfullAlert
    var body: some View {
        Button(action: {
            self.validateEmailAndPassword()
        }) {
            Text("Login")
                .font(.headline)
                .frame(minWidth: 0, maxWidth: .infinity)
        }
        .frame(height: 60)
        .background(Color.green)
        .foregroundColor(.white)
        .cornerRadius(5)
        .alert(isPresented: $showingAlert) {
            switch currentAlertType {
            case .messageAlert:
                return Alert(title: Text("Incorrect email or password."), message: Text("Either email id is wrong or password is less than 3 characters."), dismissButton: .default(Text("Got it!")))
            case .loginSuccessfullAlert:
                return Alert(title: Text("Logged in successfully."),
                      message: Text(""),
                      dismissButton: .default(Text("Yay")))
            }
        }
    }

    func validateEmailAndPassword() {
        if !self.email.isValidEmail() || !self.password.isValidPassword() {
            currentAlertType = .messageAlert
        } else {
            currentAlertType = .loginSuccessfullAlert
        }
        showingAlert = true
    }
}

struct LoginButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LoginButtonView(email: .constant("email@gmail.com"),
                        password: .constant("password"))
    }
}
