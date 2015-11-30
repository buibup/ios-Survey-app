//
//  MasterCustomTableViewCell.swift
//  IPadApp
//
//  Created by SVH IT on 11/12/2558 BE.
//  Copyright © 2558 SVH IT. All rights reserved.
//

import UIKit

class MasterCustomTableViewCell: UITableViewCell {

   
    
    
    @IBOutlet weak var answerLabel: UILabel!
   // @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var QuestionID: UILabel!
    @IBOutlet weak var QuestionName: UILabel!
   
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
