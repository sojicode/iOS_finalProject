//
//  ProductRequest.swift
//  Beautifly
//
//  Created by Sojeong Yang on 2/27/20.
//  Copyright © 2020 DePaul University. All rights reserved.
//

import Foundation

enum ProductError: Error{
    case noDataAvailable
    case canNotProcessData
}


struct ProductRequest {
    
var resourceURL: URL

    init(searchBrand : String, searchType: String) {
        
        
        let destinationURL = "http://makeup-api.herokuapp.com/api/v1/products.json?brand=\(searchBrand)&product_type=\(searchType)"
        
        guard let resourceURL = URL(string: destinationURL) else {fatalError()}
        
        self.resourceURL = resourceURL
        
    }


    func getProducts (compleation: @escaping(Result<[ProductDetail], ProductError>) ->Void) {
        let dataTask = URLSession.shared.dataTask(with: resourceURL) { data, _, _ in

            guard let jsonData = data else {
                compleation(.failure(.noDataAvailable))
                return
            }

            do{
                let decoder = JSONDecoder()
                let productResponse = try decoder.decode([ProductDetail].self, from: jsonData)
                compleation(.success(productResponse))
            }catch{
                compleation(.failure(.canNotProcessData))
            }

        }
        dataTask.resume()
    }
    
    
}
