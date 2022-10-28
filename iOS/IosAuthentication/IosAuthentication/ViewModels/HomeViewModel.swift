//
//  HomeViewModel.swift
//  IosAuthentication
//
//  Created by Veronika Dzúriková on 01.05.2022.
//

import Foundation

protocol HomeViewModelDelegate: AnyObject {
    
    func requestedAuthentication()
}

class HomeViewModel: ObservableObject {
    
    weak var delegate: HomeViewModelDelegate?
    
    func authenticate() {
        delegate?.requestedAuthentication()
    }
}
