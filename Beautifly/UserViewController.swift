//
//  UserViewController.swift
//  Beautifly
//
//  Created by Sojeong Yang on 3/2/20.
//  Copyright © 2020 DePaul University. All rights reserved.
//

import UIKit

class UserViewController: UIViewController {
    
    
    @IBOutlet weak var userName: UILabel!
   
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var descriptionTextfield: UITextField!
    
    var user: UserDetail?
    
    var message: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        userName.text = message
        
        if let u = user {
            descriptionLabel.text = u.name
            descriptionTextfield.text = u.longDescription
            
        }
    }
    
    @IBAction func editAction(_ sender: UIBarButtonItem) {
        
        descriptionTextfield.text = ""
      
    }
    
    @IBAction func doneEditing(_ sender: UITextField) {
        
        sender.resignFirstResponder()
    }
    
    
    
    @IBAction func updateAction(_ sender: UIButton) {

        var textInput = descriptionTextfield.text
        print(textInput ?? "" + "\(String(describing: textInput))")

        if textInput == "" {
            if descriptionTextfield.text == "" {
                actionAlert()
            }
            
            if descriptionTextfield.text != nil {
                if let textInputText = descriptionTextfield.text {
                    textInput = textInputText
                }
            }
        }
        
        let key: String = descriptionLabel.text!
        
        switch(key) {
        case "My Email":
            let user = userDetailInfos[0]
            print(user)
            print(user.newContent)
            if let newDescription = descriptionTextfield.text {
                print(newDescription)
                user.newContent = newDescription
                print(user.newContent)
            }
            actionActSheet()
            
        case "My Password":
            let user = userDetailInfos[1]
            if let newDescription = descriptionTextfield.text {
                user.newContent = newDescription
                
            }
            actionActSheet()
            
        case "My Phone":
             let user = userDetailInfos[2]
             if let newDescription = descriptionTextfield.text {
                user.newContent = newDescription
             }
               
        case "My Birthday":
             let user = userDetailInfos[3]
             if let newDescription = descriptionTextfield.text {
                user.newContent = newDescription
            }
            actionActSheet()
                        
        case "My Address":
            let user = userDetailInfos[4]
            if let newDescription = descriptionTextfield.text {
                user.newContent = newDescription
            }
            
        default:
             let user = userDetailInfos[4]
             if let newDescription = descriptionTextfield.text {
                user.newContent = newDescription
                
             }
            actionActSheet()
        }
        
    }
    
    func actionAlert() {
        
        let title = "Invalid Input"
        let message = "Please check your input and type something in."
        let alertController =
            UIAlertController(title: title,
                              message: message,
                              preferredStyle: .alert)
        
        let okayAction = UIAlertAction(title: "Okay", style: .default, handler: nil)
        alertController.addAction(okayAction)
        present(alertController, animated: true, completion: nil)
    
    }
    func actionActSheet() {
        
        let title = "Update"
        let message = "Are you sure to update?"
        let alertController = UIAlertController(title: title,
                                                message: message,
                                                preferredStyle: .actionSheet)
        let okayAction = UIAlertAction(title: "Okay", style: .default, handler: nil)
        alertController.addAction(okayAction)
        present(alertController, animated: true, completion: nil)
          
    }
    

    

    
//    @IBAction func backgroundTouched(_ sender: UIControl) {
//
//        sender.resignFirstResponder()
//
//    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
