
//
//  ScanInProgress.swift
//  nutrak
//
//  Created by flavio on 2025-04-28.
//

import SwiftUI

struct ScanInProgress: View {
    
    @Binding var progress: Float
    
    var body: some View {
        VStack(spacing: 12) {
            HeaderBar()
            
            Spacer()
            
            ProgressIndicator(progress: $progress)
            
            Spacer()
        }
        .padding(.horizontal, 20)
    }
}

#Preview {
    ScanInProgress(progress: .constant(0.36))
}
