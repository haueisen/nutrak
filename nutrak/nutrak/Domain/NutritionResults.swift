//
//  NutritionResults.swift
//  nutrak
//
//  Created by flavio on 2025-04-28.
//

import Foundation
import Charts

struct NutritionResults {
    let calories: Int
    let macroNutrients: [(nutrient: MacroNutrient, amount: Int)]
    let microNutrients: [(nutrient: MicroNutrient, amount: Int)]
}

enum MacroNutrient: String, CaseIterable {
    case proteins
    case carbs
    case fats
    
    var name: String {
        NSLocalizedString(self.rawValue, comment: "")
    }
    
    var icon: String {
        switch self {
        case .proteins:
            "icon_proteins"
        case .carbs:
            "icon_carbs"
        case .fats:
            "icon_fats"
        }
    }
    
    var color: String {
        switch self {
        case .proteins:
            "color_proteins"
        case .carbs:
            "color_carbs"
        case .fats:
            "color_fats"
        }
    }
}

enum MicroNutrient: String {
    case vitaminA
    case calcium
    
    var name: String {
        NSLocalizedString(self.rawValue, comment: "")
    }
    
    var icon: String {
        switch self {
        case .vitaminA:
            "icon_vitamin_a"
        case .calcium:
            "icon_calcium"
        }
    }
    
    var color: String {
        switch self {
        case .vitaminA:
            "color_vitamin_a"
        case .calcium:
            "color_calcium"
        }
    }
}
