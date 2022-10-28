//
//  IosAuthentificationAppCoordinator.swift
//  IosAuthentication
//
//  Created by Veronika Dzúriková on 02.05.2022.
//

import Foundation

final class IosAuthentificationAppCoordinator {
    
    let mainView: DashboardView
    
    private let dataService = ExampleDataServiceImpl()
    
    init() {
        mainView = DashboardView(viewModel: .init(dataService: dataService))
    }
}
