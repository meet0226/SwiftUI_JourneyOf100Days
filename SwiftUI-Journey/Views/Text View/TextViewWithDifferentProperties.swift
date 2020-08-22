//
//  TextViewWithDifferentProperties.swift
//  SwiftUI-Journey
//
//  Created by Kumar, Amit on 30/07/20.
//  Copyright © 2020 Kumar, Amit. All rights reserved.
//

import SwiftUI

struct TextWithPadding: View {
    var text: Text
    var body: some View {
        text.padding()
    }
}

struct TextWithBackgroundColor: View {
    var text: Text

    var body: some View {
        TextWithPadding(text: text)
            .background(Color.blue)
            .foregroundColor(Color.white)

    }
}

struct TextWithCornerRadius: View {
    var text: Text

    var body: some View {
        TextWithBackgroundColor(text: text)
            .cornerRadius(20)
    }
}

struct TextWithShadow: View {
    var text: Text

    var body: some View {
        TextWithCornerRadius(text: text)
            .shadow(radius: 5)
    }
}

struct TextWithHeadlineFont: View {
    var text: Text

    var body: some View {
        TextWithShadow(text: text)
            .font(.headline)
    }
}

struct TextWithTitleFont: View {
    var text: Text

    var body: some View {
        TextWithShadow(text: text)
            .font(.title)
    }
}

struct TextWithLargeTitleFont: View {
    var text: Text

    var body: some View {
        TextWithShadow(text: text)
            .font(.largeTitle)
    }
}

struct TextWithFixWidthFrame: View {
    var text: Text

    var body: some View {
        TextWithShadow(text: text)
            .frame(width: 120)
    }
}

struct TextWithFixWidthFrameInlineLimit: View {
    var text: Text

    var body: some View {
        TextWithShadow(text: text)
            .frame(width: 170)
            .lineLimit(3)
    }
}

struct TextWithMinimumScaleFactor: View {
    var text: Text

    var body: some View {
        TextWithFixWidthFrameInlineLimit(text: text)
            .minimumScaleFactor(0.5)
    }
}

struct TextWithRotationAngle: View {
    var text: Text

    var body: some View {
        TextWithShadow(text: text)
            .rotationEffect(.degrees(-45))
    }
}

struct TextWithRotation3DEffect: View {
    var text: Text

    var body: some View {
        TextWithFixWidthFrame(text: text)
            .rotation3DEffect(.degrees(45), axis: (x: 1, y: 0, z: 0))
    }
}
