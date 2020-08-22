//
//  ImageViewWithDifferentProperties.swift
//  SwiftUI-Journey
//
//  Created by Kumar, Amit on 30/07/20.
//  Copyright © 2020 Kumar, Amit. All rights reserved.
//

import SwiftUI

struct ImageWithResizableAndScaleToFit: View {
    var image: Image
    var body: some View {
        VStack {
            image.resizable()
                .scaledToFill()
        }
    }
}

struct ImageWithResizableAndFixFrame: View {
    var image: Image
    var body: some View {
        ImageWithResizableAndScaleToFit(image: image)
            .frame(width: 140, height: 300, alignment: .center)
    }
}

struct ImageWithClipShapeCircle: View {
    var image: Image
    var body: some View {
        ImageWithResizableAndFixFrame(image: image)
            .clipShape(Circle())
    }

}

struct ImageWithBorderAndCornerRadius: View {
    var image: Image
    var body: some View {
        ImageWithResizableAndFixFrame(image: image)
            .border(Color.blue, width: 3.0)
            .cornerRadius(16.0)
            .clipped()
    }

}

struct ImageViewWithDifferentProperties_Previews: PreviewProvider {
    static var previews: some View {
        ImageWithResizableAndScaleToFit(image: Image("Ninja"))
    }
}
