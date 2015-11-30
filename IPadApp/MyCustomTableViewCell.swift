//
//  MyCustomTableViewCell.swift
//  IPadApp
//
//  Created by SVH IT on 11/11/2558 BE.
//  Copyright © 2558 SVH IT. All rights reserved.
//

import UIKit

class MyCustomTableViewCell: UITableViewCell {

    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
