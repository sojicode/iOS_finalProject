//
//  MySearchViewController.swift
//  Beautifly
//
//  Created by Amy Aumpansub on 2/29/20.
//  Copyright © 2020 DePaul University. All rights reserved.
//

import UIKit

class MySearchViewController: UIViewController {

    @IBOutlet weak var brandInput: UITextField!
    
    var productType: String = ""
    var brand: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func handleLipstick(_ sender: UIButton) { productType = "lipstick"
        showAlertDialog(productType ,productType + " is selected" )
        
    }
    @IBAction func handleEyeshadow(_ sender: UIButton) { productType = "eyeshadow"
        showAlertDialog(productType ,productType + " is selected" )
    }
    @IBAction func handleBlush(_ sender: UIButton) {productType = "blush"
        showAlertDialog(productType ,productType + " is selected" )
    }
    @IBAction func handleMascara(_ sender: UIButton) {productType = "mascara"
        showAlertDialog(productType ,productType + " is selected" )
    }
    @IBAction func submitSearchInput(_ sender: UIButton) {
        brand = (brandInput.text!).lowercased()
        
        
    }
    
    @IBAction func endOnExit(_ sender: UITextField) {
        sender.resignFirstResponder()
    }
    
    
    // MARK: - Navigation
    //Send the search inputs to the MyResultTable for calling API request
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        if let resTableViewController = segue.destination as? MyResultTableViewController {
            brand = (brandInput.text!).lowercased()
            resTableViewController.myBrandToSearch = brand //=brand = "maybelline"
            resTableViewController.myProducttypeToSearch = productType 
       }
    }
    
     //Customize Alert Dialog
        func showAlertDialog(_ mytitle:String, _ mymessage: String){
        let alertController = UIAlertController(title: mytitle, message: mymessage, preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "OK", style: .cancel,handler: nil)
        alertController.addAction(cancelAction)
        self.present(alertController, animated: true,completion: nil)
        
    }
    


}
