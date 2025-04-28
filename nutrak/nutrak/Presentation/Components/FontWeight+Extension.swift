//
//  FontWeight+Extension.swift
//  nutrak
//
//  Created by flavio on 2025-04-27.
//
import SwiftUI
import UIKit

extension Font.Weight {
    var uiWeightValue: UIFont.Weight {
        switch self {
        case .ultraLight: return UIFont.Weight.ultraLight
        case .thin: return UIFont.Weight.thin
        case .light: return UIFont.Weight.light
        case .regular: return UIFont.Weight.regular
        case .medium: return UIFont.Weight.medium
        case .semibold: return UIFont.Weight.semibold
        case .bold: return UIFont.Weight.bold
        case .heavy: return UIFont.Weight.heavy
        case .black: return UIFont.Weight.black
        default: return UIFont.Weight.regular
        }
    }
}
