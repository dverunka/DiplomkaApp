//
//  ExampleDataServiceImpl.swift
//  IosAuthentication
//
//  Created by Veronika Dzúriková on 01.05.2022.
//

import Foundation
import SwiftUI

class ExampleDataServiceImpl: ExampleDataService {
    
    var user: User {
        User.user
    }
    
    var fighters: [String]  {
        [
            "tiefighter",
            "xwing",
            "falcon",
            "puddlejumper",
            "teltak",
            "dresselhaus",
            "starbug",
        ]
    }
    
    var loremIpsum: String {
        """
         These are the voyages of the Starship Enterprise.\n\nIts continuing mission,
         to explore strange new worlds, to seek out new life and new civilizations,
         to boldly go where no one has gone before. We need to neutralize the homing signal.
         Each unit has total environmental control, gravity, temperature, atmosphere, light,
         in a protective field. Sensors show energy readings in your area.
         We had a forced chamber explosion in the resonator coil. Field strength has increased by 3,000 percent.
         \n\nResistance is futile."
         """
    }
    
    var starships: [Starship] {
        [Starship.enterprise, Starship.sulaco, Starship.daedalus]
    }
}

fileprivate extension User {
    
    static var user: User {
        .init(
            name: "Veronika",
            hometown: "Brno",
            email: "v1_dzurikova@utb.cz",
            photo: "girl",
            gitHubUrl: "https://github.com/lightsaberka",
            steamUrl: "https://store.steampowered.com/app/743360/Haste_Heist/"
        )
    }
}

fileprivate extension Starship {
    
    static var enterprise: Starship {
        .init(name: "USS Enterprise", type: "NCC-1701 (Shuttlecraft)", year: 2245, length: "288.646 m", photo: "enterprise")
    }
    
    static var sulaco: Starship {
        .init(name: "USS Sulaco", type: "8 UD-4L (Utility dropship)", year: 2122, length: "385 m", photo: "sulaco")
    }
    
    static var daedalus: Starship {
        .init(name: "USS Daedalus", type: "BC-304 (Interstellar battlecruiser)", year: 2005, length: "195 m", photo: "daedalus")
    }
}
