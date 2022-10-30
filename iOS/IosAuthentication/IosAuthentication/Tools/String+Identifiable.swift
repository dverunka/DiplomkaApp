//
//  String+Identifiable.swift
//  IosAuthentication
//
//  Created by Veronika Dzúriková on 02.05.2022.
//

import Foundation

extension String: Identifiable {
    
    public typealias ID = Int
    
    public var id: Int {
        return hash
    }
}
