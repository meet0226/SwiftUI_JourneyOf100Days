//
//  SegmentControlView.swift
//  SwiftUI-Journey
//
//  Created by Kumar, Amit on 19/08/20.
//  Copyright © 2020 Kumar, Amit. All rights reserved.
//

import SwiftUI

struct SegmentControlView: View {
    var segmentIndexes = ["Name", "Email"]
    @State private var selectedIndex = 0

    var body: some View {
        VStack {
            Picker("Sort contacts by:", selection: $selectedIndex) {
                ForEach(0..<segmentIndexes.count) { index in
                    Text(self.segmentIndexes[index])
                }
            }.pickerStyle(SegmentedPickerStyle())
            .padding()
            Divider()
            ContactInfoDataView(contactInfo: ContactInfo(contacts: ContactInfoData, selectedIndex: selectedIndex))
        }.navigationBarTitle("Contacts")
    }
}

struct ContactInfoDataView: View {
    var contactInfo: ContactInfo

    var body: some View {
        ScrollView {
            ForEach(contactInfo.contacts) { contact in
                NavigationLink(destination: ContactDetailView(contact: contact)) {
                    ContactInfoCell(contact: contact)
                    }
            }
        }
    }
}

struct ContactInfoCell: View {
    let contact: Contact

    @State private var showingMessageAlert = false
    @State private var showingVideoAlert = false
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text(contact.name)
                        .font(.headline)
                        .foregroundColor(.black)
                    Text(contact.email)
                        .foregroundColor(.black)
                }.padding()
                Spacer()
                HStack(spacing: 25) {
                    Button(action: { self.showingMessageAlert = true }) {
                        Image(systemName: "message.fill")
                            .foregroundColor(.gray)
                    }.alert(isPresented: $showingMessageAlert) {
                        Alert(title: Text("Still in development."), message: Text("Once implementation is complete you will be able to send a text message."), dismissButton: .default(Text("Got it!")))
                    }
                    Button(action: { self.showingVideoAlert = true }) {
                        Image(systemName: "video.fill")
                            .foregroundColor(.gray)
                    }.alert(isPresented: $showingVideoAlert) {
                        Alert(title: Text("Still in development."), message: Text("Once implementation is complete you will be able to make a video call."), dismissButton: .default(Text("Got it!")))
                    }
                    Image(systemName: "chevron.right")
                    .foregroundColor(.gray)
                }.padding()
            }
            Divider()
        }
    }
}

struct SegmentControlView_Previews: PreviewProvider {
    static var previews: some View {
        SegmentControlView()
    }
}
