//
//  ProfileViewModel.swift
//  IosAuthentication
//
//  Created by Veronika Dzúriková on 02.05.2022.
//

import SwiftUI

protocol UserViewModelDelegate: AnyObject {
    
    func openEmail(_ email: String)
    func openUrl(_ url: URL)
}

class UserViewModel: ObservableObject {
    
    weak var delegate: UserViewModelDelegate?
    
    @Published var user: User
    @Published var loremIpsum: String
    
    init(dataService: ExampleDataService) {
        user = dataService.user
        loremIpsum = dataService.loremIpsum
    }
    
    func openEmail(_ email: String?) {
        guard let email = email else { return }
        delegate?.openEmail(email)
    }
    
    func openUrl(_ url: URL?) {
        guard let url = url else { return }
        delegate?.openUrl(url)
    }
}
