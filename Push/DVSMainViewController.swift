//
//  DVSMainViewController.swift
//  Push
//
//  Created by Dylan Straughan on 5/11/16.
//  Copyright © 2016 Dylan Straughan. All rights reserved.
//

import UIKit

class DVSMainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tableView: UITableView!
    
    let sharedDataStore = DVSDatastore ()
    let events = []
    let days = 4*365
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        tableView.registerClass(DVSMainTableViewCell.self, forCellReuseIdentifier: "mainTableViewCellIdentifier")
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return days

    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("mainTableViewCellIdentifier", forIndexPath: indexPath) as! DVSMainTableViewCell
        
        
        
        return cell

    }
    
    
}


