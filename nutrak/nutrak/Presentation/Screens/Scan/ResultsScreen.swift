//
//  ResultsScreen.swift
//  nutrak
//
//  Created by flavio on 2025-04-27.
//

import SwiftUI

struct ResultsScreen: View {
    
    let results: NutritionResults
    
    var body: some View {
        VStack {
            Text ("nutrak")
            
            Text ("ResultsScreen")
        }
    }
}

#Preview {
    let mockResult = NutritionResults(
        calories: 320,
        macroNutrients: [(nutrient: .protein, amount: 20), (nutrient: .carb, amount: 40), (nutrient: .fat, amount: 10)],
        microNutrients: [(nutrient: .vitaminA, amount: 10), (nutrient: .calcium, amount: 15)])
    
    
    ResultsScreen(results: mockResult)
}
