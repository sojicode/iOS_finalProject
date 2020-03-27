//
//  MultiTouchViewController.swift
//  Beautifly
//
//  Created by Hirunya Hirunsirisombut on 3/5/2563 BE.
//  Copyright © 2563 BE DePaul University. All rights reserved.
//

import UIKit

class MultiTouchViewController: UIViewController {
    
    let container = UIView()
    
    @IBOutlet weak var myWall: UIImageView!

    let wings = UIImageView(image: UIImage(named: "wings"))
    let logo = UIImageView(image: UIImage(named: "mylogo-1"))
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        let w = myWall.bounds.width - 100
        let h = myWall.bounds.height
        
        container.frame = CGRect(x: 50, y: 50, width: w, height: h)
        view.addSubview(container)
               
        wings.frame = CGRect(x: 0, y: 0, width: w, height: h)
        logo.frame = wings.frame
               
        container.addSubview(logo)
               
 
        let upSwipeRecognizer = UISwipeGestureRecognizer(target: self, action:
            #selector(MultiTouchViewController.handleUpSwipe))
        upSwipeRecognizer.numberOfTouchesRequired = 1
        upSwipeRecognizer.direction = .up
        view.addGestureRecognizer(upSwipeRecognizer)

        let downSwipeRecognizer = UISwipeGestureRecognizer(target: self, action:
            #selector(MultiTouchViewController.handleDownSwipe))
        downSwipeRecognizer.numberOfTouchesRequired = 1
        downSwipeRecognizer.direction = .down
        view.addGestureRecognizer(downSwipeRecognizer)

        let horizontalSwipeRecognizer = UISwipeGestureRecognizer(target: self, action:
            #selector(MultiTouchViewController.handleHorizontalSwipe))
        horizontalSwipeRecognizer.numberOfTouchesRequired = 1
        horizontalSwipeRecognizer.direction = [ .left, .right ]
        view.addGestureRecognizer(horizontalSwipeRecognizer)
               
        let pinchGestureRecognizer = UIPinchGestureRecognizer(target: self, action:
            #selector(MultiTouchViewController.handlePinch))
        view.addGestureRecognizer(pinchGestureRecognizer)

    }
           
    @objc
    func handleUpSwipe(_ sender: UISwipeGestureRecognizer) {
        let view1 = wings.superview != nil ? wings : logo
        let view2 = wings.superview != nil ? logo : wings
        UIView.transition(from: view1, to: view2,
                          duration: 2.0, options: .transitionCurlUp,
                          completion: nil)
        
    }
           
    @objc
    func handleDownSwipe(_ sender: UISwipeGestureRecognizer) {
        let view1 = wings.superview != nil ? wings : logo
        let view2 = wings.superview != nil ? logo : wings
        UIView.transition(from: view1, to: view2,
                         duration: 2.0, options: .transitionCurlDown,
                         completion: nil)
    }
           
    @objc
    func handleHorizontalSwipe(_ sender: UISwipeGestureRecognizer) {
        let view1 = wings.superview != nil ? wings : logo
        let view2 = wings.superview != nil ? logo : wings
        UIView.transition(with: self.container, duration: 2.0,
                          options: .transitionCrossDissolve,
                          animations: {
                            view1.removeFromSuperview()
                            self.container.addSubview(view2)
                            
        }, completion: nil)
    }
           
    @objc
    func handlePinch(_ sender: UIPinchGestureRecognizer) {
        let s = sender.scale
        container.transform = CGAffineTransform(a: s, b: 0, c: 0, d: s, tx: 0, ty: 0)

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
