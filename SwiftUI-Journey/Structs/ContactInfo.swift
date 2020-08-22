//
//  ContactInfo.swift
//  SwiftUI-Journey
//
//  Created by Kumar, Amit on 20/08/20.
//  Copyright © 2020 Kumar, Amit. All rights reserved.
//

import SwiftUI

struct Contact: Identifiable {
    let id = UUID()
    let name: String
    let email: String
    let number: String
}

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

let ContactInfoData =
    [Contact(name: "Sean", email: "fsean@apple.com", number: "12345678"),
     Contact(name: "Robert", email: "crobert@apple.com", number: "12345678"),
     Contact(name: "Lucifer", email: "alucifer@apple.com", number: "12345678"),
     Contact(name: "Joseph", email: "djoseph@apple.com", number: "12345678"),
     Contact(name: "John", email: "bjohn@apple.com", number: "12345678"),
     Contact(name: "Francis", email: "gfrancis@apple.com", number: "12345678"),
     Contact(name: "Bruce", email: "kbruce@apple.com", number: "12345678"),
     Contact(name: "Albert", email: "nalbert@apple.com", number: "12345678"),
     Contact(name: "Adam", email: "padam@apple.com", number: "12345678")]
