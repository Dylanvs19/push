//
//  ViewController.swift
//  Push
//
//  Created by Dylan Straughan on 5/9/16.
//  Copyright © 2016 Dylan Straughan. All rights reserved.
//

import UIKit

class DVSApplicationMainViewController: UIViewController {
    
    @IBOutlet var containerView: UIView!
    @IBOutlet var dayContainerView: UIView!
    @IBOutlet var mainContainerViewSmallHeight: NSLayoutConstraint!
    @IBOutlet var mainContainerViewLargeHeight: NSLayoutConstraint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    func setEmbeddedViewController(viewController:UIViewController){
        
        if childViewControllers.contains(viewController){
            
            return
        }
        
        for view in childViewControllers {
            
            view.willMoveToParentViewController(nil)
            
            if view.viewIfLoaded != nil {
                
                view.view.removeFromSuperview()
            }
            
            view.removeFromParentViewController()
            
        }
        
        self .addChildViewController(viewController)
        containerView.addSubview(viewController.view)
        
        viewController.view.topAnchor .constraintEqualToAnchor(self.view.topAnchor).active = true
        viewController.view.bottomAnchor .constraintEqualToAnchor(self.view.bottomAnchor).active = true
        viewController.view.rightAnchor .constraintEqualToAnchor(self.view.rightAnchor).active = true
        viewController.view.leftAnchor .constraintEqualToAnchor(self.view.leftAnchor).active = true

        viewController.didMoveToParentViewController(self)
        
    }
    
}


