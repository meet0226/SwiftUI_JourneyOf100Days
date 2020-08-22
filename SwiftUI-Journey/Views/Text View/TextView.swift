//
//  TextView.swift
//  SwiftUI-Journey
//
//  Created by Kumar, Amit on 29/07/20.
//  Copyright © 2020 Kumar, Amit. All rights reserved.
//

import SwiftUI

struct TextView: View {

    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                Group {
                    TextWithPadding(text: Text("Text with padding"))
                    TextWithBackgroundColor(text: Text("Text with color"))
                    TextWithCornerRadius(text: Text("Text with Corner Radius"))
                    TextWithShadow(text: Text("Text with Shadow"))
                }
                Group {
                    TextWithHeadlineFont(text: Text("Text With Haadline Font"))
                    TextWithTitleFont(text: Text("Text With Title Font"))
                    TextWithLargeTitleFont(text: Text("Text With Large Title Font"))
                }
                Group {
                    TextWithFixWidthFrame(text: Text("Text With fix width Frame"))
                    TextWithFixWidthFrameInlineLimit(text: Text("Line Limit 3 Text With fix width Frame to not extend from third line"))
                    TextWithMinimumScaleFactor(text: Text("Line Limit 3 Text with fix width Frame minimum scale factor"))
                }
                Group {
                    TextWithRotationAngle(text: Text("Text rotated to -45 degrees")).padding(70)
                    TextWithRotation3DEffect(text: Text("Text rotated to 60 degrees 3D effect"))
                }
            }
        }.navigationBarTitle("Text UI", displayMode: .inline)
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
