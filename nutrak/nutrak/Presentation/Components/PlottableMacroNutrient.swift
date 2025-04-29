//
//  PlottableMacroNutrient.swift
//  nutrak
//
//  Created by flavio on 2025-04-29.
//

import Charts

struct PlottableMacroNutrient: Plottable {
    
    let nutrient: MacroNutrient
    
    var primitivePlottable: String {
        self.nutrient.name
    }
    
    init(_ nutrient: MacroNutrient) {
        self.nutrient = nutrient
    }
    
    init?(primitivePlottable: String) {
        guard let nutrient = MacroNutrient.allCases.first(where: { $0.name == primitivePlottable}) else {
            return nil
        }
        
        self.nutrient = nutrient
    }
}
