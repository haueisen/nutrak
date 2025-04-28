//
//  NutritionResults.swift
//  nutrak
//
//  Created by flavio on 2025-04-28.
//

struct NutritionResults {
    let calories: Int
    let macroNutrients: [(nutrient: MacroNutrient, amount: Int)]
    let microNutrients: [(nutrient: MicroNutrient, amount: Int)]
}

enum MacroNutrient {
    case protein
    case carb
    case fat
}

enum MicroNutrient {
    case vitaminA
    case calcium
}
