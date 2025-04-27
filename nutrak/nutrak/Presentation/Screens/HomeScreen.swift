//
//  HomeScreen.swift
//  nutrak
//
//  Created by flavio on 2025-04-27.
//

import SwiftUI

struct HomeScreen: View {
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Image("bar_logo")
                Spacer()
            }
            .frame(maxWidth: .infinity)
            
            ScrollView {
                Text ("HomeScreen")
            }
        }
    }
}

#Preview {
    HomeScreen()
}
