//
//  Coordinator.swift
//  nutrak
//
//  Created by flavio on 2025-04-27.
//
import SwiftUI

class Coordinator: ObservableObject {
    
    // This shared instance pattern could be replaced by a dependency injection library
    // but since this is the only class that will be shared across screen, I opted for a simpler approach
    static let shared: Coordinator = Coordinator()
    
    @Published var selectedTab: TabType = .home
    
    func goToScanTab() {
        selectedTab = .scanning
    }
}
