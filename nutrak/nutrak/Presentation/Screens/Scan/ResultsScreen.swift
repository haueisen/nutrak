//
//  ResultsScreen.swift
//  nutrak
//
//  Created by flavio on 2025-04-27.
//

import SwiftUI
import Charts

struct ResultsScreen: View {
    
    @Environment(\.dismiss) var dismiss
    
    let results: NutritionResults
    
    private let horizontalPadding: CGFloat = 20
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            NavigationBar(title: NSLocalizedString("resultsTitle", comment: ""),onBackPressed: { dismiss() })
            
            ScrollView {
                VStack(alignment: .leading, spacing: 12) {
                    Text("nutritionalOverview")
                        .typography(.titleSmall)
                        .foregroundStyle(Color.textHighEmp)
                    
                    
                    ResultCell(
                        icon: "icon_calories",
                        name: "calories",
                        amount: "\(results.calories) kcal")
                    
                    HStack {
                        Text("macroNutrients")
                            .typography(.titleSmall)
                            .foregroundStyle(Color.textHighEmp)
                        
                        Spacer()
                        
                        Text(
                            String(
                                format: NSLocalizedString("totalGrams", comment: ""),
                                   results.macroNutrients.map { $0.amount }.reduce(0, +)
                            )
                        )
                        .typography(.labelMedium)
                        .foregroundStyle(Color.textMediumEmp)
                    }
                    
                    HStack {
                        VStack {
                            ForEach(results.macroNutrients, id: \.nutrient) { nutrient, amount in
                                ResultCell(
                                    icon: nutrient.icon,
                                    name: nutrient.name,
                                    amount: "\(amount) g")
                            }
                        }
                        
                        Chart(results.macroNutrients, id: \.nutrient) { nutrient, amount in
                            SectorMark (angle: .value("g", amount))
                                .foregroundStyle(Color(nutrient.color))
                        }
                        .chartForegroundStyleScale(
                            domain: MacroNutrient.allCases.map { PlottableMacroNutrient($0)},
                            range: MacroNutrient.allCases.map { Color($0.color) },
                        )
                    }
                    
                    HStack {
                        Text("microNutrients")
                            .typography(.titleSmall)
                            .foregroundStyle(Color.textHighEmp)
                        
                        Spacer()
                        
                        Text(
                            String(
                                format: NSLocalizedString("totalPercent", comment: ""),
                                results.microNutrients.map { $0.amount }.reduce(0, +)
                            )
                        )
                        .typography(.labelMedium)
                        .foregroundStyle(Color.textMediumEmp)
                    }
                    
                    HStack {
                        VStack {
                            ForEach(results.microNutrients, id: \.nutrient) { nutrient, amount in
                                ResultCell(
                                    icon: nutrient.icon,
                                    name: nutrient.name,
                                    amount: "\(amount)%")
                            }
                        }
                        
                        Chart(results.microNutrients, id: \.nutrient) { nutrient, amount in
                            BarMark (
                                x: .value("microNutrients", nutrient.name),
                                y: .value("%", amount)
                            )
                            .foregroundStyle(Color(nutrient.color))
                        }
                    }
                }
            }
            
            Rectangle()
                .fill(.neutralN200)
                .frame(height: 1)
                .frame(maxWidth: .infinity)
                .padding(.horizontal, -horizontalPadding)
            Button {
                // todo: Save to Daily Log
            } label: {
                Text("saveLog")
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(NutrakButtonStyle(type: .primary))
            .padding(.top, 12)
            
            Button {
                // todo: upgrade to premium
            } label: {
                HStack(spacing: 0) {
                    Text("moreInsights")
                        .typography(.bodyLarge)
                        .foregroundStyle(Color.textMediumEmp)
                    
                    Text("upgradeToPremium")
                        .typography(.titleLarge)
                        .underline()
                        .foregroundStyle(Color.textHighEmp)
                    
                }
                .frame(maxWidth: .infinity)
            }
            .padding(.top, 12)
            .padding(.bottom, 26)
        }
        .padding(.horizontal, horizontalPadding)
        .navigationBarBackButtonHidden()
        .navigationBarTitle("", displayMode: .inline)
        .navigationBarHidden(true)
    }
}

#Preview {
    let mockResult = NutritionResults(
        calories: 320,
        macroNutrients: [(nutrient: .proteins, amount: 20), (nutrient: .carbs, amount: 40), (nutrient: .fats, amount: 10)],
        microNutrients: [(nutrient: .vitaminA, amount: 10), (nutrient: .calcium, amount: 15)])
    
    
    ResultsScreen(results: mockResult)
}
