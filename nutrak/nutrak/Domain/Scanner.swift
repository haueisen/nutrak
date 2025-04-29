//
//  Scanner.swift
//  nutrak
//
//  Created by flavio on 2025-04-27.
//
import Foundation

protocol ScannerDelegate: AnyObject {
    func onProgressChange(_ progress: Float)
    func onScanCompleted(_ results: NutritionResults)
}

class Scanner {
    
    private let mockResult = NutritionResults(
        calories: 320,
        macroNutrients: [(nutrient: .proteins, amount: 20), (nutrient: .carbs, amount: 40), (nutrient: .fats, amount: 10)],
        microNutrients: [(nutrient: .vitaminA, amount: 10), (nutrient: .calcium, amount: 15)])
    
    private var mockProgressTimer: Timer?
    private var progress: Float = 0 {
        didSet {
            delegate?.onProgressChange(progress)
        }
    }
    weak var delegate: ScannerDelegate?

    func scanPicture(_ imageData: Data) {
        progress = 0
        mockProgressTimer?.invalidate()
        mockProgressTimer = Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(mockProgress), userInfo: nil, repeats: true)
    }
    
    @objc func mockProgress() {
        progress += min(1,Float.random(in: 0...(1 - progress)))
        if progress >= 1 {
            mockProgressTimer?.invalidate()
            delegate?.onScanCompleted(mockResult)
        }
    }
}
