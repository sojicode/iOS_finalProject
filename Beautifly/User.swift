//
//  User.swift
//  Beautifly
//
//  Created by Sojeong Yang on 3/2/20.
//  Copyright © 2020 DePaul University. All rights reserved.
//

import Foundation

let userInfos = [
    
    User(name: "Serena Woodsen",
        type: .account,
        shortDescription: "Email, Password, Phone, Birthday, Address",
        longDescription: "Email, Password, Phone, Birthday, Address"),
    
    User(name: "My Preference",
         type: .preference,
         shortDescription: "Lipstic, Eyeshadow, Blush, Mascara",
         longDescription: "Lipstic, Eyeshadow, Blush, Mascara"),
    
    User(name: "PRIVACY POLICY",
    type: .policy,
    shortDescription: "Privacy Policy",
    longDescription: "This privacy policy describes how Beautifly USA, Inc.(\"Beautifly\", \"we\", \"us\" or \"our\") collects, uses, shares, and protects personal information. It also tells you about the rights and choices you have with respect to your personal information, and how you can reach us to get answers to your questions. You can click on the following links to go directly to the corresponding sections of this privacy policy. This privacy policy covers (\"Beautifly Mobile Apps\"), visit us in our offices, communicates with us, or participate in any of out programs or events. When we use the term \"personal information\" we are referring to information that identifieds, relates to, describes or can be associated with you. Our websites may include links to third party websited and/or applications. Please note that we have no control over the privacy practices of websites or applications that we do not own.")
  
]

class User {
    
    enum `Type`: String {
        case account = "account"
        case preference = "preference"
        case policy = "policy"
        
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

        
}
    



