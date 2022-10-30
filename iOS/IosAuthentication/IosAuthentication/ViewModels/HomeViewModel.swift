//
//  HomeViewModel.swift
//  IosAuthentication
//
//  Created by Veronika Dzúriková on 01.05.2022.
//

import SwiftUI

protocol HomeViewModelDelegate: AnyObject {
    
    func requestAuthentication()
}

class HomeViewModel<DestinationView: View>: ObservableObject {
    
    weak var delegate: HomeViewModelDelegate?
    
    @Published var wasAuthenticated = false
    
    let destinationViewAfterAuthentification: () -> DestinationView
    
    init(destinationViewAfterAuthentification: @escaping () -> DestinationView) {
        self.destinationViewAfterAuthentification = destinationViewAfterAuthentification
    }
    
    func authenticate() {
        delegate?.requestAuthentication()
    }
}
