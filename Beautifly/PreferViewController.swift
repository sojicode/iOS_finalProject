//
//  PreferViewController.swift
//  Beautifly
//
//  Created by Sojeong Yang on 3/3/20.
//  Copyright © 2020 DePaul University. All rights reserved.
//

import UIKit

class PreferViewController: UIViewController {
    
    @IBOutlet weak var preferLabel: UILabel!
        
    @IBOutlet weak var preferTextfield: UITextField!
    
    var prefer:Preference?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
          
          if let p = prefer {
           preferLabel.text = p.name
           preferTextfield.text = p.longDescription
              
          }
      }
    
    @IBAction func editBtnPressed(_ sender: UIBarButtonItem) {
        
        preferTextfield.text = ""
        
    }
    
    @IBAction func doneEditing(_ sender: UITextField) {
        
        sender.resignFirstResponder()
    }
    
    
    @IBAction func updateAction(_ sender: UIButton) {
      
        var textInput = preferTextfield.text
        print(textInput ?? "" + "\(String(describing: textInput))")

        if textInput == "" {
            
            if preferTextfield.text == "" {
                actionAlert()
            }
            if preferTextfield.text != nil {
                if let textInputText = preferTextfield.text {
                    textInput = textInputText
                }
            }
        }
        
        let key: String = preferLabel.text!
        
        switch(key) {
            
        case "My Lipstic Brand":
            let prefer = userPreferences[0]
            print(prefer)
            print(prefer.newContent)
            if let newDescription = preferTextfield.text {
                print(newDescription)
                prefer.newContent = newDescription
                print(prefer.newContent)
            }
            actionActSheet()
            
        case "My Eyeshadow Brand":
            let prefer = userPreferences[1]
            if let newDescription = preferTextfield.text {
                prefer.newContent = newDescription
                
            }
            actionActSheet()
            
        case "My Blush Brand":
             let prefer = userPreferences[2]
             if let newDescription = preferTextfield.text {
                prefer.newContent = newDescription
            }
            actionActSheet()
                        
        case "My Mascara Brand":
            let prefer = userPreferences[3]
            if let newDescription = preferTextfield.text {
                prefer.newContent = newDescription
            }
            actionActSheet()
            
        default:
             let prefer = userDetailInfos[3]
             if let newDescription = preferTextfield.text {
                prefer.newContent = newDescription
                
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
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
