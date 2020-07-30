//
//  ImageView.swift
//  SwiftUI-Journey
//
//  Created by Kumar, Amit on 29/07/20.
//  Copyright © 2020 Kumar, Amit. All rights reserved.
//

import SwiftUI

struct ImageView: View {
    let image = Image("Ninja")
    var body: some View {
        ScrollView {
            FirstRow(image: image)
            SecondRow(image: image)
        }.navigationBarTitle("Images")
    }
}

struct FirstRow: View {
    var image: Image
    var body: some View {
        HStack {
            VStack {
                ImageWithResizableAndScaleToFit(image: image)
                TextWithShadow(text: Text("Image with Resizable and Scale To fill"))
                    .multilineTextAlignment(.center)
            }
            VStack {
                ImageWithResizableAndFixFrame(image: image)
                TextWithShadow(text: Text("Image with fix frame 170x300"))
                .multilineTextAlignment(.center)
            }
        }.padding()
    }
}

struct SecondRow: View {
    var image: Image
    var body: some View {
        HStack {
            VStack {
                ImageWithClipShapeCircle(image: image)
                TextWithShadow(text: Text("Image with ClipShape Circle"))
                    .multilineTextAlignment(.center)
            }
            VStack {
                ImageWithBorderAndCornerRadius(image: image)
                TextWithShadow(text: Text("Image with Border and Corner Radius"))
                .multilineTextAlignment(.center)
            }
        }.padding()
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
