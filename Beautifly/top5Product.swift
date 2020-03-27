//
//  top5Product.swift
//  Beautifly
//
//  Created by Hirunya Hirunsirisombut on 3/2/2563 BE.
//  Copyright © 2563 BE DePaul University. All rights reserved.
//

import Foundation

var topfive = [top5Product(brand: "nyx",
            type: .one,
            name: "NYX Mosaic Blush Paradise",
            price: "$10.49",
            producttype: "Blush",
            website:"https://well.ca/products/nyx-mosaic-powder-blush-paradise_106230.html?cat=328",
            description: "NYX Mosaic Powder Blush is a medley of that creates a flush of color and dazzling glow for every skin tone. Features:Five shades in one palette, this blush is bright pink with gold shimmerWorks as blush and highlighterFlattering on every skin toneUse to highlight.",
            image: "top1",
        imageurl:"https://d3t32hsnjxo7q6.cloudfront.net/i/deedb7bd74bda43f062a09aab2ee1ec8_ra,w158,h184_pa,w158,h184.png",
        rating: "Rating:5.0"),

top5Product(brand: "physicians formula",
            type: .two,
            name: "Organic Wear Bronzer Blush",
            price: "$21.99",
            producttype: "bronzer",
            website:"https://well.ca",
            description: "Physicians Formula Organic Wear 100% Natural Origin Bronzer and Blush is an easy-to-use 2-in-1 bronzer and blush that allows shades to be used individually or layered for the ultimate sunkissed, natural-looking finish.",
            image: "top2",
            imageurl:"https://d3t32hsnjxo7q6.cloudfront.net/i/57664a83a5b141160e76968fe51b51a7_ra,w158,h184_pa,w158,h184.jpeg",
            rating: "Rating:4.9"),

top5Product(brand: "l'oreal",
            type: .three,
            name: "L'Oreal Paris True Match",
            price: "$16.49",
            producttype: "blush",
            website:"https://well.ca/products/loreal-paris-true-match_4395.html",
            description: "True Match Blush flawlessly complements your skin's texture and tone and coordinates perfectly with True Match Makeup, Powder, and Concealer. Opti-Match technology creates uniquely true-to-life shades that flawlessly complement your skintone and undertone to perfection.",
            image: "top3",
            imageurl:"https://d3t32hsnjxo7q6.cloudfront.net/i/e4e4827631b874f898d41a90ab3de5a6_ra,w158,h184_pa,w158,h184.jpeg",
             rating: "Rating:4.8"),

top5Product(brand: "physicians formula",
            type: .four,
            name: "Bronze Booster Glow-Boosting",
            price: "$20.99",
            producttype: "bronzer",
            website:"https://well.ca/products/physicians-formula-bronze-booster_61146.html",
            description: "This bronzer with benefits provides an instant and lasting tan-boost that blends and builds easily to your desired level of bronze. Lightweight powder glides on smoothly for a totally uniform and even, healthy-looking tan glow.",
            image: "top4",
            imageurl: "https://d3t32hsnjxo7q6.cloudfront.net/i/7b33d70c5494b72f23edf9d07acf599d_ra,w158,h184_pa,w158,h184.jpeg",
            rating: "Rating:4.7"),

top5Product(brand: "dr. hauschka",
            type: .five,
            name: "Translucent Bronzing Tint",
            price: "$45.0",
            producttype: "bronzer",
            website:"https://well.ca/products/dr-hauschka-translucent-bronzing_93615.html?cat=328",
            description: "Dr.Hauschka Translucent Bronzing Tint is ideal for use alone or with all Dr.Hauschka moisturizers.This liquid mineral tint offers a sun-kissed glow while gently blending and softening the appearance of blemishes and imperfections.",
            image: "top5",
            imageurl: "https://d3t32hsnjxo7q6.cloudfront.net/i/08fe5abc37bb3d483909774d43c438e4_ra,w158,h184_pa,w158,h184.jpeg",
            rating: "Rating:4.6"),
]

class top5Product{
    
    enum `Type`: String {
        
        case one = "one"
        case two = "two"
        case three = "three"
        case four = "four"
        case five = "five"
    }
    
    var brand: String
    var type: Type
    var name: String
    var price: String
    var producttype: String
    var website: String
    var description: String
    var image: String
    var imageurl: String
    var rating: String
    
    init(brand: String,type: Type, name: String, price: String, producttype: String, website: String,description: String, image: String, imageurl:String, rating: String ) {
        self.brand = brand
        self.type = type
        self.name = name
        self.price = price
        self.producttype = producttype
        self.website = website
        self.description = description
        self.image = image
        self.imageurl = imageurl
        self.rating = rating
 
}
    
}
