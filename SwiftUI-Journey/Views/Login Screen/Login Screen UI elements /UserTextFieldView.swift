//
//  UserTextFieldView.swift
//  SwiftUI-Journey
//
//  Created by Kumar, Amit on 05/09/20.
//  Copyright © 2020 Kumar, Amit. All rights reserved.
//

import SwiftUI

struct UserTextFieldView: View {
    @Binding var email: String
    var body: some View {
        TextField("Enter email", text: $email)
            .padding()
            .frame(minWidth: 0, maxWidth: .infinity)
            .frame(height: 60)
            .background(Color(UIColor(red: 235.0/255.0, green: 235.0/255.0, blue: 235.0/255.0, alpha: 1.0)))
            .cornerRadius(5)
    }

}

struct UserTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        UserTextFieldView(email: .constant("email@gmail.com"))
    }
}
