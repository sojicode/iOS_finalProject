//
//  ProductDetailViewController.swift
//  Beautifly
//
//  Created by Amy Aumpansub on 3/1/20.
//  Copyright © 2020 DePaul University. All rights reserved.
//

import UIKit

class ProductDetailViewController: UIViewController {

   
    @IBOutlet weak var brandLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var webLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    var selectedProduct: ProductDetail?
    var itemName: String = ""
    var itemBrand: String = ""
    
    override func viewDidLoad() {
           super.viewDidLoad()
       }
    
    override func viewWillAppear(_ animated: Bool) {
        if let myProduct = selectedProduct {
            brandLabel.text = myProduct.brand
            nameLabel.text = myProduct.name
            priceLabel.text = myProduct.price
            typeLabel.text = myProduct.product_type
            webLabel.text = myProduct.website_link
            descriptionLabel.text = myProduct.description
            let url = URL(string: myProduct.image_link)!
                getImage(from: url)
           }
       }
    
    @IBAction func addNewItemToList(_ sender: UIButton) {
        itemName = selectedProduct!.name
        itemBrand = selectedProduct!.brand
        let newItem: myItem = myItem (name: itemName , brand: itemBrand)
        myItemList.append(newItem)
    }

    
    func getData(from url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> ()) {
        URLSession.shared.dataTask(with: url, completionHandler: completion).resume()
    }
    func getImage(from url: URL) {
        getData(from: url) { data, response, error in
            guard let data = data, error == nil else { return }
            DispatchQueue.main.async() {
                self.myImage.image = UIImage(data: data)
            }
        }
    }
    
    
    


   

}
