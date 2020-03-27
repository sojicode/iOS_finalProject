//
//  myItem.swift
//  Beautifly
//
//  Created by Amy Aumpansub on 3/1/20.
//  Copyright © 2020 DePaul University. All rights reserved.
//

import Foundation

class myItem {
    
    var itemName: String
    var itemBrand: String

    

    init(name: String, brand: String) {
        self.itemName  = name
        self.itemBrand = brand

       
    }
}

var myItemList = [
    myItem (name: "Propel My Eyes Mascara", brand: "Nyx") ,
    myItem (name: "Clean Fresh Cooling Glow Stick", brand: "CoverGirl") ,
    myItem (name: "Rouge Cream Blush", brand: "Nyx")

]
