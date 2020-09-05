//
//  PasswordSecureTextView.swift
//  SwiftUI-Journey
//
//  Created by Kumar, Amit on 05/09/20.
//  Copyright © 2020 Kumar, Amit. All rights reserved.
//

import SwiftUI

struct PasswordSecureTextView: View {
    @Binding var password: String
    var body: some View {
        SecureField("Enter password", text: $password)
            .padding()
            .frame(minWidth: 0, maxWidth: .infinity)
            .frame(height: 60)
            .background(Color(UIColor(red: 235.0/255.0, green: 235.0/255.0, blue: 235.0/255.0, alpha: 1.0)))
            .cornerRadius(5)
    }
}

struct PasswordSecureTextView_Previews: PreviewProvider {
    static var previews: some View {
        PasswordSecureTextView(password: .constant("password"))
    }
}
