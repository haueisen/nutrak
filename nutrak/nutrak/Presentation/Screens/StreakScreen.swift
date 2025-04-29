//
//  StreakScreen.swift
//  nutrak
//
//  Created by flavio on 2025-04-27.
//

import SwiftUI

struct StreakScreen: View {
    
    let placeholderStreak: Int = 5
    
    var body: some View {
        VStack {
            Text ("streakTitle")
                .typography(.titleLarge)
                .foregroundStyle(Color.textHighEmp)
            
            ScrollView {
                VStack(spacing: 36) {
                    StreakView(streakAmount: placeholderStreak)
                    
                    StreakMonthView()
                    
                    MilestonesView()
                }
                .padding(.horizontal, 20)
            }
        }
    }
}

#Preview {
    StreakScreen()
}
