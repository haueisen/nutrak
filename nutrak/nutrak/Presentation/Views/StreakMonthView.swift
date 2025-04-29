//
//  StreakMonthView.swift
//  nutrak
//
//  Created by flavio on 2025-04-29.
//

import SwiftUI

struct StreakMonthView: View {
    
    // mock data just for UI development
    let weekDays: [String] = ["M", "T", "W", "T", "F", "S", "S"]
//    let mockStreakDays: [Int] =
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack(alignment: .leading) {
                HStack {
                    ForEach(weekDays, id: \.self) { day in
                        Text(day)
                            .typography(.bodyMedium)
                            .foregroundStyle(Color.textMediumEmp)
                    }
                }
                
                HStack {
                    
                }
                
                HStack {
                    
                }
            }
            .background(
                RoundedRectangle(cornerRadius: 16)
                    .strokeBorder(lineWidth: 1)
                    .foregroundStyle(Color.neutralN200)
            )
        }
        
        HStack(alignment: .center, spacing: 8) {
            Image("badge_bronze")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20, height: 20)
        }
    }
}

#Preview {
    StreakMonthView()
}
