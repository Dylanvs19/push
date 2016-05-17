//
//  DVSApplicationMainViewController.swift
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
    @IBOutlet var mainContainerCenterX: NSLayoutConstraint!
    @IBOutlet var dayContainerOffScreen: NSLayoutConstraint!
    @IBOutlet var dayContainerOnScreen: NSLayoutConstraint!
    @IBOutlet var dayContainerSmallHeight: NSLayoutConstraint!
    @IBOutlet var dayContainerLargeHeight: NSLayoutConstraint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let datastore = DVSDatastore.sharedDatastore
                
        datastore.setupEventstore { (granted) in
            
            if granted {
                
         //       let vc = DVSMainViewController()
                
                
                
            }
        }
        
    }
    
    func dayContainerViewToCenter() {
        
        UIView.animateWithDuration(0.25, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0, options:.CurveEaseInOut, animations: { 
            
            self.mainContainerCenterX.constant = -10
            self.mainContainerViewLargeHeight.active = false
            self.mainContainerViewSmallHeight.active = true
            
            }, completion:nil)
        
        UIView.animateWithDuration(0.25, delay: 0.1, usingSpringWithDamping: 0.7, initialSpringVelocity: 0, options:.CurveEaseInOut, animations: {
            
            self.dayContainerLargeHeight.active = false
            self.dayContainerSmallHeight.active = true
            self.dayContainerOnScreen.active = true
            
            }, completion:nil)
    }
    
    func dayContainerViewOffscreen() {
        
        
        
    }
    
}

