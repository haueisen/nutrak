//
//  Text+Typography.swift
//  nutrak
//
//  Created by flavio on 2025-04-27.
//

import SwiftUI

extension Text {
    func typography(_ typography: Typography) -> some View {
        self
            .font(Font.system(size: typography.fontSize))
            .fontWeight(typography.weight)
            .tracking(typography.tracking)
            .lineSpacing(typography.lineSpacing)
    }
}
