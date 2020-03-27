//
//  User.swift
//  Beautifly
//
//  Created by Sojeong Yang on 3/2/20.
//  Copyright © 2020 DePaul University. All rights reserved.
//

import Foundation


class UserInfo {
    
    enum `Type`: String {
        case account = "account"
        case mySearchHistory = "mySearchHistroy"
//        case rosé = "rose"
//        case sparkling = "sparkling"
    }
    
    var name: String
    var type: Type
//    var description: String
//    var longDescription: String
    
    init(name: String, type: Type, description: String) {
        self.name = name
        self.type = type
//        self.description = description
//        self.longDescription = longDescription
    }

    
}

let userInfos = [
  UserInfo(name: "Account",
      type: .account ),

  
