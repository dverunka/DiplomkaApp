//
//  IosAuthentificationAppCoordinator.swift
//  IosAuthentication
//
//  Created by Veronika Dzúriková on 02.05.2022.
//

import SwiftUI
import LocalAuthentication

final class IosAuthentificationAppCoordinator {
    
    private let dataService: ExampleDataService
    
    private let tabbarViewFactory: TabbarViewFactory
    
    private let homeViewModel: HomeViewModel<TabbarView>
    private let dashboardViewModel: DashboardViewModel
    private let userViewModel: UserViewModel
    
    let homeView: HomeView<TabbarView>
    
    init() {
        
        let dataService =  ExampleDataServiceImpl()
        self.dataService = dataService
        
        userViewModel = .init(dataService: dataService)
        dashboardViewModel = .init(dataService: dataService)
        
        tabbarViewFactory = TabbarViewFactory(dashboardViewModel: dashboardViewModel, profileViewModel: userViewModel)
        
        homeViewModel = HomeViewModel(destinationViewAfterAuthentification: tabbarViewFactory.makeTabbarView)
        
        homeView = HomeView(viewModel: homeViewModel)
        
        homeViewModel.delegate = self
        userViewModel.delegate = self
    }
}

extension IosAuthentificationAppCoordinator: HomeViewModelDelegate {
    
    func requestAuthentication() {
        let localAuthenticationContext = LAContext()
        localAuthenticationContext.localizedFallbackTitle = "Use passcode"

        var authError: NSError?
        let reasonString = "We need Your biometric information for authentication."

        if localAuthenticationContext.canEvaluatePolicy(.deviceOwnerAuthentication, error: &authError) {
            localAuthenticationContext.evaluatePolicy(.deviceOwnerAuthentication, localizedReason: reasonString) { [weak self] success, evaluateError in
                
                if success {
                    self?.homeViewModel.wasAuthenticated = true
                } else {
                    guard let error = evaluateError else {
                        return
                    }
                    print("Biometric authentication not enabled: \(error._code), \(error.localizedDescription)")
                }
            }
        } else {
            guard let error = authError else {
                return
            }
            print("Biometric authentication failed: \(error._code), \(error.localizedDescription)")
        }
    }
}

extension IosAuthentificationAppCoordinator: UserViewModelDelegate {
        
    func openEmail(_ email: String) {
        if let url = URL(string: "mailto:\(email)") {
            UIApplication.shared.open(url)
        }
    }
    
    func openUrl(_ url: URL) {
        UIApplication.shared.open(url)
    }
}
