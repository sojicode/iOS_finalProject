//
//  UserDetailTableViewController.swift
//  Beautifly
//
//  Created by Sojeong Yang on 3/2/20.
//  Copyright © 2020 DePaul University. All rights reserved.
//

import UIKit

class UserDetailTableViewController: UITableViewController {
    
    
    @IBOutlet weak var userName: UILabel!
    
    var message: String = ""
    
    
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
        return userDetailInfos.count
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let userDetail = userDetailInfos[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: userDetail.type.rawValue, for: indexPath)
        

        // Configure the cell...
        
        cell.textLabel?.text = userDetail.name
        cell.detailTextLabel?.text = userDetail.newContent
        
        return cell
    }
    

   
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }


 
    // Override to support editing the table view.
//    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
//
//        if editingStyle == .delete {
//            // Delete the row from the data source
//            userDetailInfos.remove(at: indexPath.row)
//            tableView.deleteRows(at: [indexPath], with: .fade)
//
//        } else if editingStyle == .insert {
//            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
//        }
//    }
    
    override func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        
        let userDetail = userDetailInfos[indexPath.row]
        let title = userDetail.name
        let message = userDetail.newContent
        let alertController = UIAlertController(title: title,
                                                message: message,
                                                preferredStyle: .actionSheet)
        let okayAction = UIAlertAction(title: "Okay", style: .default, handler: nil)
        alertController.addAction(okayAction)
        present(alertController, animated: true, completion: nil)
        self.tableView.deselectRow(at: indexPath, animated: true)
    }
  

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */
    

   
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        if let userViewController = segue.destination as? UserViewController {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                userViewController.user = userDetailInfos[indexPath.row]
            
            }
        }
        
        if let target = segue.destination as? UserViewController {
            
            let user = userInfos[0]
            target.message = ""
            target.message += "\(user.name)"
            
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        userName.text = message
             
    }
    
    
   

}
