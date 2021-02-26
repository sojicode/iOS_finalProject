//
//  MyResultTableViewController.swift
//  Beautifly
//
//  Created by Sojeong Yang on 2/29/20.
//  Copyright © 2020 DePaul University. All rights reserved.
//

import UIKit


class MyResultTableViewController: UITableViewController {
    
    var myBrandToSearch: String = ""
    var myProducttypeToSearch: String = ""
        
    var ProductList = [ProductDetail]() {
        didSet { DispatchQueue.main.async {
                self.tableView.reloadData()}
               }
        }
    override func viewDidLoad() {
        super.viewDidLoad()
        loadFoundData(myBrandToSearch, myProducttypeToSearch)
    }

        // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
            return 1 }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {  return ProductList.count }

        
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "foundItem", for: indexPath)
            // Configure the cell...
            let items = ProductList[indexPath.row]
            cell.textLabel?.text? = items.brand.lowercased()
            cell.detailTextLabel?.text = items.name
            return cell
        }
    
    func loadFoundData(_ brandToSearch: String, _ producttypeToSearch: String) {
        print(brandToSearch)
        print(producttypeToSearch)
        if (brandToSearch == "" || producttypeToSearch == ""){
            showAlertDialog("OPPS!" , "Please go back to type Brand and select product type")
        }
        
        else {
        let productRequest = ProductRequest(searchBrand: brandToSearch, searchType: producttypeToSearch)
              productRequest.getProducts { [weak self] result in
                  switch result {
                  case .failure(let error):
                      print(error)
                      self?.showAlertDialog("SORRY :(" , "No Matched Items Found on API")
                  case .success(let products):
                      self?.ProductList = products
                  }
            }
        }
    }
    
    
    //Customize Alert Dialog
        func showAlertDialog(_ mytitle:String, _ mymessage: String){
        let alertController = UIAlertController(title: mytitle, message: mymessage, preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "OK", style: .cancel,handler: nil)
        alertController.addAction(cancelAction)
        self.present(alertController, animated: true,completion: nil)
        
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        if let detailViewController = segue.destination as? ProductDetailViewController {
           if let indexPath = self.tableView.indexPathForSelectedRow {
            detailViewController.selectedProduct = ProductList[indexPath.row]
           }
       }
    }
    
    
    
}
