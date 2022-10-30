//
//  ProfileViewModel.swift
//  IosAuthentication
//
//  Created by Veronika Dzúriková on 02.05.2022.
//

import SwiftUI

protocol ProfileViewModelDelegate {
    
    func profileViewRequestedMailToAddress(_ emailAddress: String)
    
    func profileViewRequestedWebViewWithURL(_ url: URL)
}

class ProfileViewModel: ObservableObject {
    
    @Published var user: User
    @Published var loremIpsum: String
    
    init(dataService: ExampleDataService) {
        user = dataService.user
        loremIpsum = dataService.loremIpsum
    }
}
