//
//  Products.swift
//  Beautifly
//
//  Created by Sojeong Yang on 2/27/20.
//  Copyright © 2020 DePaul University. All rights reserved.
//

import Foundation


struct ProductResponse: Decodable{
    var response: Product
}

struct Product: Decodable{
    var product: [ProductDetail]
}

struct ProductDetail: Decodable {
    var id: Int
    var brand : String
    var name : String
    var price : String
    var image_link : String
    var product_link : String
    var website_link : String
    var description : String
    var category : String
    var product_type : String
    var tag_list: [[String: String]]
    var product_colors: [[String: String]]
}
