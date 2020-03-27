//
//  Preference.swift
//  Beautifly
//
//  Created by Sojeong Yang on 3/3/20.
//  Copyright © 2020 DePaul University. All rights reserved.
//

import Foundation

let userPreferences = [
    
    Preference(name: "My Lipstic Brand",
        type: .lipstic,
        shortDescription: "Colourpop",
        longDescription: "Colourpop"),
    
    Preference(name: "My Eyeshadow Brand",
         type: .eyeshadow,
         shortDescription: "Dior",
         longDescription: "Dior"),
    
    Preference(name: "My Blush Brand",
            type: .blush,
            shortDescription: "Benefit",
            longDescription: "Benefit"),
    
    Preference(name: "My Mascara Brand",
            type: .mascara,
            shortDescription: "Dior",
            longDescription: "Dior")
  
]

class Preference {
    
    enum `Type`: String {
        case lipstic = "lipstic"
        case eyeshadow = "eyeshadow"
        case blush = "blush"
        case mascara = "mascara"

    }
        
        var name: String
        var type: Type
        var shortDescription: String
        var longDescription: String
        
        init(name: String, type: Type, shortDescription: String, longDescription: String) {
            self.name = name
            self.type = type
            self.shortDescription = shortDescription
            self.longDescription = longDescription
        }
    
    var newContent: String {
        get {
            return longDescription
        }
        set {
            longDescription = newValue
        }
    }

        
}
