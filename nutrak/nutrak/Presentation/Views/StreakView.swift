//
//  StreakView.swift
//  nutrak
//
//  Created by flavio on 2025-04-29.
//

import SwiftUI

struct StreakView: View {
    
    let streakAmount: Int
    
    var body: some View {
        VStack(spacing: 2) {
            ZStack(alignment: .top) {
                Image("streak_big_icon")
                    .frame(height: 120)
                    .shadow(color: Color.primaryP600.opacity(0.3), radius: 20, y: 8)
                
                Text("\(streakAmount)")
                    .font(.system(size: 52))
                    .fontWeight(.semibold)
                    .foregroundStyle(Color.textHighEmp)
                    .padding(.top, 48)
            }
            .padding(.bottom, 16)
            
            Text("streakPrefix")
                .typography(.bodyMedium)
                .foregroundStyle(Color.textMediumEmp)
            
            Text(String(format: String(localized: "streakBold"), streakAmount))
                .typography(.titleLarge)
                .foregroundStyle(Color.textHighEmp)
            
            Text("streakSuffix")
                .typography(.bodyMedium)
                .foregroundStyle(Color.textMediumEmp)
        }
    }
}

#Preview {
    StreakView(streakAmount: 5)
}
