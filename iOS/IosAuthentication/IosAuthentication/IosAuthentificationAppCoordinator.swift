//
//  IosAuthentificationAppCoordinator.swift
//  IosAuthentication
//
//  Created by Veronika Dzúriková on 02.05.2022.
//

import SwiftUI

final class IosAuthentificationAppCoordinator {
    
    let loginView: HomeView<TabbarView>
    
    let loginViewViewModel: HomeViewModel<TabbarView>
    
    private let dataService: ExampleDataService
    private let dashboardViewModel: DashboardViewModel
    private let profileViewModel: ProfileViewModel
    
    private let tabbarViewFactory: TabbarViewFactory
    init() {
        
        let dataService =  ExampleDataServiceImpl()
        self.dataService = dataService
        
        profileViewModel = .init(dataService: dataService)
        dashboardViewModel = .init(dataService: dataService)
        
        tabbarViewFactory = TabbarViewFactory(dashboardViewModel: dashboardViewModel, profileViewModel: profileViewModel)
        
        loginViewViewModel = HomeViewModel(destinationViewAfterAuthentification: tabbarViewFactory.makeTabbarView)
        
        loginView = HomeView(viewModel: loginViewViewModel)
        loginViewViewModel.delegate = self
    }
}

extension IosAuthentificationAppCoordinator: HomeViewModelDelegate {
    
    func requestedAuthentication() {
        
        // Call Authentication here and depending on the result, set the Bool below to true, if it succeeded
        
        loginViewViewModel.authentificationWasSuccessful = true
    }
}


