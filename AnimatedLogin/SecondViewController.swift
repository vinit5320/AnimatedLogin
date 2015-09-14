//
//  SecondViewController.swift
//  AnimatedLogin
//
//  Created by Vinit Jasoliya on 9/14/15.
//  Copyright (c) 2015 ViNiT. All rights reserved.
//


import UIKit

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let bg = UIImageView(image: UIImage(named: "Home.png"))
        bg.frame = self.view.frame
        self.view.addSubview(bg)
        
        let tapRecognizer = UITapGestureRecognizer(target: self, action: "onTapScreen")
        bg.userInteractionEnabled = true
        bg.addGestureRecognizer(tapRecognizer)
    }
    
    func onTapScreen() {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}

