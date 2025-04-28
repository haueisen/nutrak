//
//  HeaderBar.swift
//  nutrak
//
//  Created by flavio on 2025-04-28.
//

import SwiftUI

struct HeaderBar: View {
    
    var body: some View {
        HStack {
            Spacer()
            Image("bar_logo")
            Spacer()
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    HeaderBar()
}
