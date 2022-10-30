//
//  User.swift
//  IosAuthentication
//
//  Created by Veronika Dzúriková on 01.05.2022.
//

import Foundation
import SwiftUI

struct User {
    
    let name: String
    let hometown: String
    let email: String
    let photo: String
    let gitHubUsername: String
    let gitHubUrl: String
    let steamGameName: String
    let steamUrl: String
}

extension String {
    var url: URL? {
        URL(string: self)
    }
}
