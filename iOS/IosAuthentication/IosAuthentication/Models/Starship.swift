//
//  Starship.swift
//  IosAuthentication
//
//  Created by Veronika Dzúriková on 01.05.2022.
//

import Foundation
import SwiftUI

struct Starship: Identifiable {
    
    let id: UUID
    
    let name: String
    
    // Register number and type of starship.
    let type: String
    
    // Year when starship was first developed.
    let year: Int
    
    // Length of starship in metres.
    let length: String
    
    let photo: String
    
    init(name: String, type: String, year: Int, length: String, photo: String) {
        id = UUID()
        self.name = name
        self.type = type
        self.year = year
        self.length = length
        self.photo = photo
    }
}
