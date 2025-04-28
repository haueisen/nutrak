//
//  ScanningScreen.swift
//  nutrak
//
//  Created by flavio on 2025-04-27.
//

import SwiftUI

struct ScanningScreen: View {
    
    @ObservedObject var viewModel = ViewModel()
    
    var body: some View {
        VStack {
            if let results = viewModel.nutritionResults {
                ResultsScreen(results: results)
            } else {
                ScanSelector(onImageData: viewModel.scanImage(data:))
                    
            }
        }
        .fullScreenCover(
            isPresented: $viewModel.showScanningInProgress,
            onDismiss: nil,
            content: {
                ScanInProgress(progress: $viewModel.scanProgress)
            }
        )
        
    }
}

fileprivate func mockViewModel() -> ScanningScreen.ViewModel {
    let viewModel = ScanningScreen.ViewModel()
    
    let mockResult = NutritionResults(
        calories: 320,
        macroNutrients: [(nutrient: .protein, amount: 20), (nutrient: .carb, amount: 40), (nutrient: .fat, amount: 10)],
        microNutrients: [(nutrient: .vitaminA, amount: 10), (nutrient: .calcium, amount: 15)])
    
    viewModel.nutritionResults = mockResult
    
    return viewModel
}

struct ScanningScreen_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ScanningScreen()
            
            ScanningScreen(viewModel: mockViewModel())
        }
    }
}


