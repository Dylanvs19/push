//
//  DVSMainTableViewCell.swift
//  Push
//
//  Created by Dylan Straughan on 5/11/16.
//  Copyright © 2016 Dylan Straughan. All rights reserved.
//

import UIKit

class DVSMainTableViewCell: UITableViewCell {
    
    @IBOutlet var tableviewCellContentView: UIView!
    
    required init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        
        commonInit()
        
    }
    
    
        
    func commonInit(){
        
        NSBundle.mainBundle().loadNibNamed("DVSMainTableViewCell", owner: self, options: nil)
        
        addSubview(tableviewCellContentView)
        
        tableviewCellContentView.topAnchor .constraintEqualToAnchor(self.topAnchor).active = true
        tableviewCellContentView.bottomAnchor .constraintEqualToAnchor(self.bottomAnchor).active = true
        tableviewCellContentView.leftAnchor .constraintEqualToAnchor(self.leftAnchor).active = true
        tableviewCellContentView.rightAnchor .constraintEqualToAnchor(self.rightAnchor).active = true
    }
    
    var arrayOfEvents:[DVSEvent] = [] {
        didSet {
            print("someone set DVSEvent array to \(arrayOfEvents)")
            
            setUpCell()
            
        }
        
    }
    
    func setUpCell() {
        
        
        
        
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    

}
