//
//  ProgressIndicator.swift
//  nutrak
//
//  Created by flavio on 2025-04-28.
//

import SwiftUI

struct ProgressIndicator: View {
    
    @Binding var progress: Float
    
    @State var currentStep = 0
    private let angleStepDegrees = 11.25
    
    @State var timer: Timer?
    
    var body: some View {
        VStack(spacing: 0) {
            
            Image("loader")
                .rotationEffect(Angle.degrees(Double(currentStep) * angleStepDegrees), anchor: .center)
                
                
            Text("scanInProgress")
                .typography(.labelMedium)
                .foregroundStyle(Color.textMediumEmp)
                .padding(.top, 48)
                .padding(.bottom, 12)
            
            ProgressView(value: progress)
                .tint(.secondaryBase)
            
            Text("\(Int(progress * 100))%")
                .typography(.headlineLarge)
                .foregroundStyle(Color.textHighEmp)
                .padding(.top, 14)
        }
        .onAppear {
            timer?.invalidate()
            timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { _ in
                currentStep = (currentStep + 1) % 32
            }
        }
        .onDisappear {
            timer?.invalidate()
        }
    }
}

#Preview {
    ProgressIndicator(progress: .constant(0.43))
}
