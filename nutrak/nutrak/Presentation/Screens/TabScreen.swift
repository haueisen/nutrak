//
//  TabScreen.swift
//  nutrak
//
//  Created by flavio on 2025-04-27.
//

import SwiftUI


enum TabType {
    case home
    case scanning
    case streak
}

struct TabScreen: View {
    
    @State var selectedTab: TabType = .home
    
    init() {
        
        let tabTypography = Typography.labelSmall
        
        UITabBarItem.appearance().setTitleTextAttributes([
            .font: UIFont.systemFont(ofSize: tabTypography.fontSize, weight: tabTypography.weight.uiWeightValue),
            .tracking: tabTypography.tracking,
            
        ], for: .normal)
        
        UITabBar.appearance().unselectedItemTintColor = UIColor(Color.textMediumEmp)
    }
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeScreen()
                .tabItem {
                    Image(selectedTab == .home ? "home_tab_selected" : "home_tab")
                        .renderingMode(.original)
                    
                    Text("home")
                }
                .tag(TabType.home)
            
            ScanningScreen()
                .tabItem {
                    Image("scan_button")
                }
                .tag(TabType.scanning)
            
            StreakScreen()
                .tabItem {
                    Image(selectedTab == .streak ? "streak_tab_selected" : "streak_tab")
                        .renderingMode(.original)
                    
                    Text("streak")
                }
                .tag(TabType.streak)
        }
        .tint(Color.textHighEmp)
    }
}

#Preview {
    TabScreen()
}
