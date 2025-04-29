//
//  TipCard.swift
//  nutrak
//
//  Created by flavio on 2025-04-27.
//

import SwiftUI

struct TipCard: View {
    
    let title: String
    let message: String
    let icon: String
    
    private let cornerRadius: CGFloat = 12
    
    var body: some View {
        HStack(spacing: 16){
            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .typography(.titleMedium)
                    .foregroundStyle(Color.textHighEmp)
                
                Text(message)
                    .typography(.bodySmall)
                    .foregroundStyle(Color.textMediumEmp)
            }
            
            Image(icon)
        }
        .padding(.vertical, 12)
        .padding(.horizontal, 16)
        // hardcoded style since this is going to be the only one on this test
        .background(
            RoundedRectangle(cornerRadius: cornerRadius)
                .fill(
                    RadialGradient(
                        colors: [.secondaryN100, .secondaryN300],
                        center: UnitPoint(x: 0.5, y: -0.3),
                        startRadius: 0,
                        endRadius: 130
                    )
                )
                .overlay(content: {
                    RoundedRectangle(cornerRadius: cornerRadius)
                        .strokeBorder(lineWidth: 1)
                        .foregroundStyle(Color.secondaryN400)
                })
        )
    }
}

#Preview {
    TipCard(
        title: "Health Tip of the Day",
        message: "Drinking water before meals can help you stay hydrated and eat just the right amount!",
        icon: "scan_icon"
    )
}
