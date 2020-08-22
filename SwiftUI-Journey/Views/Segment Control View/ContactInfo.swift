//
//  ContactInfo.swift
//  SwiftUI-Journey
//
//  Created by Kumar, Amit on 22/08/20.
//  Copyright © 2020 Kumar, Amit. All rights reserved.
//

import SwiftUI

class ContactInfo: ObservableObject {
    @Published var contacts: [Contact]

    init(contacts: [Contact], selectedIndex: Int) {
        switch selectedIndex {
        case 0:
            self.contacts = contacts.sorted(by: { $0.name < $1.name })
        default:
            self.contacts = contacts.sorted(by: { $0.email < $1.email })
        }
    }
}
