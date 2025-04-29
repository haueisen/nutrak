//
//  ResultCell.swift
//  nutrak
//
//  Created by flavio on 2025-04-28.
//

import SwiftUI

struct ResultCell: View {
    
    let icon: String
    let name: String
    let amount: String
    
    var body: some View {
        HStack(alignment: .center, spacing: 8) {
            Image(icon)
                .frame(width: 32, height: 32)
            
            VStack(alignment: .leading, spacing: 2) {
                Text(name)
                    .typography(.labelMedium)
                    .foregroundStyle(Color.textMediumEmp)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text(amount)
                    .typography(.labelMedium)
                    .foregroundStyle(Color.textHighEmp)
            }
        }
        .padding(.vertical, 8)
        .padding(.horizontal, 12)
        .background(Color.neutralN100)
        .cornerRadius(12)
        .frame(width: 154)
    }
}

#Preview {
    ResultCell(
        icon: "icon_calories",
        name: "Calories",
        amount: "320 kcal"
    )
}
