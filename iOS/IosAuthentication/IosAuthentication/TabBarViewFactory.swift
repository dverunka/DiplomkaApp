//
//  TabBarViewFactory.swift
//  IosAuthentication
//
//  Created by Veronika Dzúriková on 04.05.2022.
//

import Foundation

class TabbarViewFactory {
    private let dashboardViewModel: DashboardViewModel
    private let profileViewModel: ProfileViewModel
    
    init(dashboardViewModel: DashboardViewModel, profileViewModel: ProfileViewModel) {
        self.dashboardViewModel = dashboardViewModel
        self.profileViewModel = profileViewModel
    }
    
    func makeTabbarView() -> TabbarView {
        TabbarView(
            dashboardView: DashboardView(viewModel: dashboardViewModel),
            profileView: ProfileView(viewModel: profileViewModel)
        )
    }
}
