//
//  ScanningScreenViewModel.swift
//  nutrak
//
//  Created by flavio on 2025-04-28.
//

import SwiftUI

extension ScanningScreen {
    class ViewModel: ObservableObject {
        
        @Published var showScanningInProgress: Bool = false
        @Published var showResults: Bool = false
        @Published var scanProgress: Float = 0
        @Published var nutritionResults: NutritionResults?
        
        let scanner: Scanner = Scanner()
        
        init() {
            scanner.delegate = self
        }
        
        func scanImage(data: Data) {
            showScanningInProgress = true
            scanner.scanPicture(data)
        }
    }
}

extension ScanningScreen.ViewModel: ScannerDelegate {
    func onProgressChange(_ progress: Float) {
        scanProgress = progress
    }
    
    func onScanCompleted(_ results: NutritionResults) {
        nutritionResults = results
        
        withAnimation {
            showScanningInProgress = false
            showResults = true
        }
    }
}
