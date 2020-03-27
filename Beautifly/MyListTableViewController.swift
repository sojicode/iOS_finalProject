//
//  MyListTableViewController.swift
//  Beautifly
//
//  Created by Amy Aumpansub on 2/26/20.
//  Copyright © 2020 DePaul University. All rights reserved.
//

import UIKit



class MyListTableViewController: UITableViewController {

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
        return myItemList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myListCell", for: indexPath)
        // Configure the cell...
        let items = myItemList[indexPath.row]
        cell.textLabel?.text? = items.itemBrand
        cell.detailTextLabel?.text = items.itemName
        return cell
    }
    
}
