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
        NavigationStack {
            VStack {
                ScanSelector(onImageData: viewModel.scanImage(data:))
            }
            .navigationDestination(
                isPresented: $viewModel.showResults) {
                    if let results = viewModel.nutritionResults {
                        ResultsScreen(results: results)
                    } else {
                        // avoid showing an empty resultsScreen
                        // this has no visual effect, so the user won't notice
                        EmptyView()
                            .onAppear {
                                viewModel.showResults = false
                            }
                    }
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
        macroNutrients: [(nutrient: .proteins, amount: 20), (nutrient: .carbs, amount: 40), (nutrient: .fats, amount: 10)],
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


