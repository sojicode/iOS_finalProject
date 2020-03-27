//
//  Top5RatingTableViewController.swift
//  Beautifly
//
//  Created by Hirunya Hirunsirisombut on 3/2/2563 BE.
//  Copyright © 2563 BE DePaul University. All rights reserved.
//

import UIKit

class Top5RatingTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
       
        
        return topfive.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           let top5Product = topfive[indexPath.row]
           let cell = tableView.dequeueReusableCell(withIdentifier: top5Product.type.rawValue, for: indexPath)
           
           // Configure the cell...
           
        cell.textLabel?.text = top5Product.brand
        cell.detailTextLabel?.text = top5Product.name + "\n"  + top5Product.price + "\n" + top5Product.rating + "\n"
           

           return cell
       }

     // MARK: - Navigation
       override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           // Get the new view controller using segue.destination.
           // Pass the selected object to the new view controller.

           if let topfiveViewController = segue.destination as? TopRatingViewController {
              if let indexPath = self.tableView.indexPathForSelectedRow {
                topfiveViewController.top5Product = topfive[indexPath.row]
              }
          }
       }

       
}
