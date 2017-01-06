//
//  LoverTableViewCell.swift
//  Demo
//
//  Created by Peter  on 20/12/2016.
//  Copyright © 2016 Peter . All rights reserved.
//

import UIKit

class LoverTableViewCell: UITableViewCell {

    
    
    @IBOutlet weak var time: UILabel!
    
    
  
   
    
    
    
        @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
