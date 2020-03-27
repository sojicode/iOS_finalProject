//
//  TopRatingViewController.swift
//  Beautifly
//
//  Created by Hirunya Hirunsirisombut on 3/1/2563 BE.
//  Copyright © 2563 BE DePaul University. All rights reserved.
//

import UIKit

class TopRatingViewController: UIViewController {
    @IBOutlet weak var brandLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var websitelabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
   
    var top5Product: top5Product?
    var itemName: String = ""
    var itemBrand: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
     if let TopFive = top5Product {
         brandLabel.text = TopFive.brand
         nameLabel.text = TopFive.name
         priceLabel.text = TopFive.price
         typeLabel.text = TopFive.producttype
         websitelabel.text = TopFive.website
         descriptionLabel.text = TopFive.description
//        print(TopFive.website)
        let url = URL(string: TopFive.imageurl)!
                       getImage(from: url)
                  }
        }
    
    
    
    @IBAction func additem(_ sender: UIButton) {
        itemName = top5Product!.name
        itemBrand = top5Product!.brand
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
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */



