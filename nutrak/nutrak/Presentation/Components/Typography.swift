//
//  Typography.swift
//  nutrak
//
//  Created by flavio on 2025-04-27.
//
import SwiftUI

enum Typography {
    case displayLarge
    case displayMedium
    case displaySmall
    case headlineLarge
    case headlineMedium
    case headlineSmall
    case titleLarge
    case titleMedium
    case titleSmall
    case bodyLarge
    case bodyMedium
    case bodySmall
    case labelLarge
    case labelMedium
    case labelSmall
    
    
    var fontSize: Double {
        switch self {
        case .displayLarge:
            32
        case .displayMedium:
            24
        case .displaySmall:
            22
        case .headlineLarge:
            20
        case .headlineMedium:
            18
        case .headlineSmall:
            16
        case .titleLarge:
            14
        case .titleMedium:
            12
        case .titleSmall:
            12
        case .bodyLarge:
            14
        case .bodyMedium:
            12
        case .bodySmall:
            10
        case .labelLarge:
            14
        case .labelMedium:
            12
        case .labelSmall:
            10
        }
    }
    
    var lineSpacing: Double { // SwiftUI Text has no lineHeight, either we need to use AttributedText or use lineSpacing
        switch self {
        case .displayLarge:
            fontSize * 0.1
        case .displayMedium:
            fontSize * 0.1
        case .displaySmall:
            fontSize * 0.1
        case .headlineLarge:
            fontSize * 0.2
        case .headlineMedium:
            fontSize * 0.2
        case .headlineSmall:
            fontSize * 0.2
        case .titleLarge:
            fontSize * 0.2
        case .titleMedium:
            fontSize * 0.2
        case .titleSmall:
            fontSize * 0.25
        case .bodyLarge:
            fontSize * 0.3
        case .bodyMedium:
            fontSize * 0.3
        case .bodySmall:
            fontSize * 0.2
        case .labelLarge:
            fontSize * 0.2
        case .labelMedium:
            fontSize * 0.2
        case .labelSmall:
            fontSize * 0.2
        }
    }
    
    var weight: Font.Weight {
        switch self {
        case .displayLarge:
            .bold
        case .displayMedium:
            .bold
        case .displaySmall:
            .bold
        case .headlineLarge:
            .bold
        case .headlineMedium:
            .bold
        case .headlineSmall:
            .bold
        case .titleLarge:
            .bold
        case .titleMedium:
            .semibold
        case .titleSmall:
            .semibold
        case .bodyLarge:
            .regular
        case .bodyMedium:
            .regular
        case .bodySmall:
            .regular
        case .labelLarge:
            .medium
        case .labelMedium:
            .medium
        case .labelSmall:
            .medium
        }
    }
    
    var tracking: Double { // letter spacing
        switch self {
        case .displayLarge:
            -0.5
        case .displayMedium:
            -0.5
        case .displaySmall:
            0
        case .headlineLarge:
            -0.5
        case .headlineMedium:
            0
        case .headlineSmall:
            0
        case .titleLarge:
            -0.5
        case .titleMedium:
            0
        case .titleSmall:
            0
        case .bodyLarge:
            0
        case .bodyMedium:
            0
        case .bodySmall:
            0
        case .labelLarge:
            0
        case .labelMedium:
            0
        case .labelSmall:
            0
        }
    }
}
