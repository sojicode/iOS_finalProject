//
//  PolicyViewController.swift
//  Beautifly
//
//  Created by Sojeong Yang on 3/3/20.
//  Copyright © 2020 DePaul University. All rights reserved.
//

import UIKit

class PolicyViewController: UIViewController {

    @IBOutlet weak var policyLabel: UILabel!
    
    @IBOutlet weak var policyDetail: UILabel!
    
    var policy:User?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
            
            if let pol = policy {
             policyLabel.text = pol.name
             policyDetail.text = pol.longDescription
                
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

}
