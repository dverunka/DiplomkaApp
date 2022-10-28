//
//  DashboardViewModel.swift
//  IosAuthentication
//
//  Created by Veronika Dzúriková on 01.05.2022.
//

import SwiftUI

class DashboardViewModel: ObservableObject {
    
    @Published var fighters: [String]
    @Published var starships: [Starship]
    
    init(dataService: ExampleDataService) {
        fighters = dataService.fighters
        starships = dataService.starships
    }
}
