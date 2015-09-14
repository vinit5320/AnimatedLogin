//
//  ViewController.swift
//  AnimatedLogin
//
//  Created by Vinit Jasoliya on 9/14/15.
//  Copyright (c) 2015 ViNiT. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIViewControllerTransitioningDelegate {
    
    @IBOutlet weak var btnFromNib: TKTransitionSubmitButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        let bg = UIImageView(image: UIImage(named: "Login.png"))
        bg.frame = self.view.frame
        self.view.addSubview(bg)
        btnFromNib.layer.cornerRadius = 30.0
        self.view.bringSubviewToFront(self.btnFromNib)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onTapButton(button: TKTransitionSubmitButton) {
        button.animate(1, completion: { () -> () in
            let secondVC = SecondViewController()
            secondVC.transitioningDelegate = self
            self.presentViewController(secondVC, animated: true, completion: nil)
        })
    }
    
    // MARK: UIViewControllerTransitioningDelegate
    func animationControllerForPresentedController(presented: UIViewController, presentingController presenting: UIViewController, sourceController source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return TKFadeInAnimator(transitionDuration: 0.5, startingAlpha: 0.8)
    }
    
    func animationControllerForDismissedController(dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return nil
    }


}

