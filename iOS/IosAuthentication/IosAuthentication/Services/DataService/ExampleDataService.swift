//
//  ExampleDataService.swift
//  IosAuthentication
//
//  Created by Veronika Dzúriková on 01.05.2022.
//

import Foundation
import SwiftUI

protocol ExampleDataService {
    
    // Generates and returns sample user.
    var user: User { get }
    
    // Generates and returns sample fighters.
    var fighters: [String] { get }
    
    // Returns sample lorem ipsum text.
    var loremIpsum: String { get }
    
    // Generates and returns sample starships.
    var starships: [Starship] { get }
}
