//
//  NavigationBar.swift
//  nutrak
//
//  Created by flavio on 2025-04-28.
//

import SwiftUI

struct NavigationBar: View {
    
    let title: LocalizedStringKey
    let onBackPressed: (() -> Void)?
    
    var body: some View {
        HStack(alignment: .center, spacing: 8) {
            if let onBackPressed = onBackPressed {
                Button {
                    onBackPressed()
                } label: {
                    Image("arrow_left")
                        .tint(Color.textHighEmp)
                        .frame(width: 24, height: 24)
                }
                
            } else {
                Spacer()
                    .frame(width: 24, height: 24)
            }
            
            Text(title)
                .typography(.titleLarge)
                .frame(maxWidth: .infinity)
            
            Spacer()
                .frame(width: 24, height: 24)
        }
        .frame(height: 56)
    }
}

#Preview {
    NavigationBar(title: "Screen title", onBackPressed: {})
}
