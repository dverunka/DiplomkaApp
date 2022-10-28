//
//  IosAuthenticationApp.swift
//  IosAuthentication
//
//  Created by Veronika Dzúriková on 01.05.2022.
//

import SwiftUI

@main
struct IosAuthenticationApp: App {
    
    let mainCoordinator = IosAuthentificationAppCoordinator()
    
    var body: some Scene {
        WindowGroup {
            mainCoordinator.mainView
        }
    }
}
