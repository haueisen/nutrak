//
//  HomeScreen.swift
//  nutrak
//
//  Created by flavio on 2025-04-27.
//

import SwiftUI

struct HomeScreen: View {
    
    @ObservedObject var coordinator = Coordinator.shared
    
    var body: some View {
        VStack {
            HeaderBar()
            
            ScrollView {
                TipCard(
                    title: "Scan Your Food",
                    message: "Instantly analyze your meal’s nutrition by scanning it.",
                    icon: "scan_icon"
                )
                .frame(maxWidth: .infinity)
                .contentShape(Rectangle())
                .onTapGesture {
                    coordinator.goToScanTab()
                }
            }
        }
        .padding(.horizontal, 20)
    }
}

#Preview {
    HomeScreen()
}
