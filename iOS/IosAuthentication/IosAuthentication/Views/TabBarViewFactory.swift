//
//  TabBarViewFactory.swift
//  IosAuthentication
//
//  Created by Veronika Dzúriková on 04.05.2022.
//

import Foundation

class TabbarViewFactory {
    
    private let dashboardViewModel: DashboardViewModel
    private let userViewModel: UserViewModel
    
    init(dashboardViewModel: DashboardViewModel, profileViewModel: UserViewModel) {
        self.dashboardViewModel = dashboardViewModel
        self.userViewModel = profileViewModel
    }
    
    func makeTabbarView() -> TabbarView {
        TabbarView(
            dashboardView: DashboardView(viewModel: dashboardViewModel),
            userView: UserView(viewModel: userViewModel)
        )
    }
}
