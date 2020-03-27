//
//  UserDetail.swift
//  Beautifly
//
//  Created by Sojeong Yang on 3/3/20.
//  Copyright © 2020 DePaul University. All rights reserved.
//

import Foundation

var userDetailInfos = [
    
    UserDetail(name: "My Email",
        type: .email,
        shortDescription: "serena123@gmail.com",
        longDescription: "serena123@gmail.com"),
    
    UserDetail(name: "My Password",
         type: .password,
         shortDescription: "************",
         longDescription: "************"),
    
    UserDetail(name: "My Phone",
            type: .phone,
            shortDescription: "123-456-7890",
            longDescription: "123-456-7890"),
    
    UserDetail(name: "My Birthday",
            type: .birthday,
            shortDescription: "April 17, 2001",
            longDescription: "April 17, 2001"),
    
    UserDetail(name: "My Address",
            type: .address,
            shortDescription: "One Apple Park Way, Cupertino, CA 95014",
            longDescription: "One Apple Park Way, Cupertino, CA 95014")
  
]

class UserDetail {
    
    enum `Type`: String {
        case email = "email"
        case password = "password"
        case phone = "phone"
        case birthday = "birthday"
        case address = "address"

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
