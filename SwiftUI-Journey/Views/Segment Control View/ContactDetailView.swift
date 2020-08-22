//
//  ContactDetailView.swift
//  SwiftUI-Journey
//
//  Created by Kumar, Amit on 20/08/20.
//  Copyright © 2020 Kumar, Amit. All rights reserved.
//

import SwiftUI

struct ContactDetailView: View {
    let contact:  Contact
    var body: some View {
        VStack {
            Text(contact.name)
            Text(contact.email)
            Text(contact.number)
        }
    }

}

struct ContactDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailView(contact: ContactInfoData[0])
    }
}
